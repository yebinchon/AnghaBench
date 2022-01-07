; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_remove_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_remove_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i64, i32, i32, i32, i64, i64, i32, i64, i32, i64, %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"destroying worker thread\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"done destroying worker thread\0A\00", align 1
@LBS802_11POWERMODEMAX_PSP = common dso_local global i64 0, align 8
@LBS802_11POWERMODECAM = common dso_local global i64 0, align 8
@PS_STATE_FULL_POWER = common dso_local global i64 0, align 8
@PS_MODE_ACTION_EXIT_PS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_remove_card(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %4 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %5 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %4, i32 0, i32 11
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %8 = call i32 @lbs_remove_mesh(%struct.lbs_private* %7)
  %9 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %10 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %9, i32 0, i32 10
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %15 = call i32 @lbs_scan_deinit(%struct.lbs_private* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %18 = call i32 @lbs_wait_for_firmware_load(%struct.lbs_private* %17)
  %19 = call i32 @lbs_deb_main(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %21 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @destroy_workqueue(i32 %22)
  %24 = call i32 @lbs_deb_main(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %26 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LBS802_11POWERMODEMAX_PSP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %16
  %31 = load i64, i64* @LBS802_11POWERMODECAM, align 8
  %32 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %33 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %35 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PS_STATE_FULL_POWER, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %41 = load i32, i32* @PS_MODE_ACTION_EXIT_PS, align 4
  %42 = call i32 @lbs_set_ps_mode(%struct.lbs_private* %40, i32 %41, i32 1)
  br label %43

43:                                               ; preds = %39, %30
  br label %44

44:                                               ; preds = %43, %16
  %45 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %46 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %51 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %50, i32 0, i32 8
  store i64 0, i64* %51, align 8
  %52 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %53 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %52, i32 0, i32 7
  %54 = call i32 @wake_up_interruptible(i32* %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %57 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %56, i32 0, i32 6
  store i64 0, i64* %57, align 8
  %58 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %59 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %61 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %60, i32 0, i32 4
  %62 = call i32 @wake_up_interruptible(i32* %61)
  %63 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %64 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %63, i32 0, i32 2
  store i32 1, i32* %64, align 8
  %65 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %66 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @kthread_stop(i32 %67)
  %69 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %70 = call i32 @lbs_free_adapter(%struct.lbs_private* %69)
  %71 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %72 = call i32 @lbs_cfg_free(%struct.lbs_private* %71)
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = call i32 @free_netdev(%struct.net_device* %73)
  ret void
}

declare dso_local i32 @lbs_remove_mesh(%struct.lbs_private*) #1

declare dso_local i32 @lbs_scan_deinit(%struct.lbs_private*) #1

declare dso_local i32 @lbs_wait_for_firmware_load(%struct.lbs_private*) #1

declare dso_local i32 @lbs_deb_main(i8*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @lbs_set_ps_mode(%struct.lbs_private*, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @lbs_free_adapter(%struct.lbs_private*) #1

declare dso_local i32 @lbs_cfg_free(%struct.lbs_private*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
