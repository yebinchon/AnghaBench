; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_sonic.h_sonic_rda_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_sonic.h_sonic_rda_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sonic_local = type { i32, i32 }

@SIZEOF_SONIC_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @sonic_rda_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sonic_rda_put(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sonic_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.sonic_local* @netdev_priv(%struct.net_device* %10)
  store %struct.sonic_local* %11, %struct.sonic_local** %9, align 8
  %12 = load %struct.sonic_local*, %struct.sonic_local** %9, align 8
  %13 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sonic_local*, %struct.sonic_local** %9, align 8
  %16 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SIZEOF_SONIC_RD, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @sonic_buf_put(i32 %14, i32 %17, i32 %22, i32 %23)
  ret void
}

declare dso_local %struct.sonic_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sonic_buf_put(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
