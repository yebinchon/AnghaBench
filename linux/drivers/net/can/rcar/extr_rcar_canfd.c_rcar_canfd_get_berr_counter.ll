; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_get_berr_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_get_berr_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_berr_counter = type { i32, i32 }
%struct.rcar_canfd_channel = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.can_berr_counter*)* @rcar_canfd_get_berr_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_canfd_get_berr_counter(%struct.net_device* %0, %struct.can_berr_counter* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.can_berr_counter*, align 8
  %5 = alloca %struct.rcar_canfd_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.can_berr_counter* %1, %struct.can_berr_counter** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device* %8)
  store %struct.rcar_canfd_channel* %9, %struct.rcar_canfd_channel** %5, align 8
  %10 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %5, align 8
  %11 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %5, align 8
  %14 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @RCANFD_CSTS(i32 %16)
  %18 = call i32 @rcar_canfd_read(i32 %15, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @RCANFD_CSTS_TECCNT(i32 %19)
  %21 = load %struct.can_berr_counter*, %struct.can_berr_counter** %4, align 8
  %22 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @RCANFD_CSTS_RECCNT(i32 %23)
  %25 = load %struct.can_berr_counter*, %struct.can_berr_counter** %4, align 8
  %26 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  ret i32 0
}

declare dso_local %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcar_canfd_read(i32, i32) #1

declare dso_local i32 @RCANFD_CSTS(i32) #1

declare dso_local i32 @RCANFD_CSTS_TECCNT(i32) #1

declare dso_local i32 @RCANFD_CSTS_RECCNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
