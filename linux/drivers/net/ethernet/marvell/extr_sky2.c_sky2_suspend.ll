; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sky2_hw = type { i32, %struct.net_device**, i32, i32 }
%struct.net_device = type { i32 }
%struct.sky2_port = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sky2_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_suspend(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sky2_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sky2_port*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.sky2_hw* @dev_get_drvdata(%struct.device* %8)
  store %struct.sky2_hw* %9, %struct.sky2_hw** %4, align 8
  %10 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %11 = icmp ne %struct.sky2_hw* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

13:                                               ; preds = %1
  %14 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %15 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %14, i32 0, i32 3
  %16 = call i32 @del_timer_sync(i32* %15)
  %17 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %18 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %17, i32 0, i32 2
  %19 = call i32 @cancel_work_sync(i32* %18)
  %20 = call i32 (...) @rtnl_lock()
  %21 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %22 = call i32 @sky2_all_down(%struct.sky2_hw* %21)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %47, %13
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %26 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %31 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %30, i32 0, i32 1
  %32 = load %struct.net_device**, %struct.net_device*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.net_device*, %struct.net_device** %32, i64 %34
  %36 = load %struct.net_device*, %struct.net_device** %35, align 8
  store %struct.net_device* %36, %struct.net_device** %6, align 8
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %37)
  store %struct.sky2_port* %38, %struct.sky2_port** %7, align 8
  %39 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %40 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %45 = call i32 @sky2_wol_init(%struct.sky2_port* %44)
  br label %46

46:                                               ; preds = %43, %29
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %23

50:                                               ; preds = %23
  %51 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %52 = call i32 @sky2_power_aux(%struct.sky2_hw* %51)
  %53 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %12
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.sky2_hw* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @sky2_all_down(%struct.sky2_hw*) #1

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sky2_wol_init(%struct.sky2_port*) #1

declare dso_local i32 @sky2_power_aux(%struct.sky2_hw*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
