; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_eswitch_mode_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_eswitch_mode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.lio_devlink_priv = type { %struct.octeon_device* }
%struct.octeon_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32*)* @liquidio_eswitch_mode_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liquidio_eswitch_mode_get(%struct.devlink* %0, i32* %1) #0 {
  %3 = alloca %struct.devlink*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lio_devlink_priv*, align 8
  %6 = alloca %struct.octeon_device*, align 8
  store %struct.devlink* %0, %struct.devlink** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.devlink*, %struct.devlink** %3, align 8
  %8 = call %struct.lio_devlink_priv* @devlink_priv(%struct.devlink* %7)
  store %struct.lio_devlink_priv* %8, %struct.lio_devlink_priv** %5, align 8
  %9 = load %struct.lio_devlink_priv*, %struct.lio_devlink_priv** %5, align 8
  %10 = getelementptr inbounds %struct.lio_devlink_priv, %struct.lio_devlink_priv* %9, i32 0, i32 0
  %11 = load %struct.octeon_device*, %struct.octeon_device** %10, align 8
  store %struct.octeon_device* %11, %struct.octeon_device** %6, align 8
  %12 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %13 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  ret i32 0
}

declare dso_local %struct.lio_devlink_priv* @devlink_priv(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
