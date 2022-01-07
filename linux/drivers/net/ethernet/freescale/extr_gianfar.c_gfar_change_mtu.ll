; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.gfar_private = type { i32 }

@GFAR_RESETTING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @gfar_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfar_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %6)
  store %struct.gfar_private* %7, %struct.gfar_private** %5, align 8
  br label %8

8:                                                ; preds = %14, %2
  %9 = load i32, i32* @GFAR_RESETTING, align 4
  %10 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %11 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %10, i32 0, i32 0
  %12 = call i64 @test_and_set_bit_lock(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 (...) @cpu_relax()
  br label %8

16:                                               ; preds = %8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_UP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @stop_gfar(%struct.net_device* %24)
  br label %26

26:                                               ; preds = %23, %16
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_UP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @startup_gfar(%struct.net_device* %37)
  br label %39

39:                                               ; preds = %36, %26
  %40 = load i32, i32* @GFAR_RESETTING, align 4
  %41 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %42 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %41, i32 0, i32 0
  %43 = call i32 @clear_bit_unlock(i32 %40, i32* %42)
  ret i32 0
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @stop_gfar(%struct.net_device*) #1

declare dso_local i32 @startup_gfar(%struct.net_device*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
