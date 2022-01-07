; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_change_pm_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_change_pm_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PM_EVENT_SLEEP = common dso_local global i32 0, align 4
@PM_EVENT_FREEZE = common dso_local global i32 0, align 4
@AQ_HW_POWER_STATE_D3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aq_nic_change_pm_state(%struct.aq_nic_s* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.aq_nic_s*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %7 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @netif_running(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %71

12:                                               ; preds = %2
  %13 = call i32 (...) @rtnl_lock()
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PM_EVENT_SLEEP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PM_EVENT_FREEZE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %20, %12
  %28 = load i32, i32* @AQ_HW_POWER_STATE_D3, align 4
  %29 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %30 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %32 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netif_device_detach(i32 %33)
  %35 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %36 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netif_tx_stop_all_queues(i32 %37)
  %39 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %40 = call i32 @aq_nic_stop(%struct.aq_nic_s* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %69

44:                                               ; preds = %27
  %45 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %46 = call i32 @aq_nic_deinit(%struct.aq_nic_s* %45)
  br label %68

47:                                               ; preds = %20
  %48 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %49 = call i32 @aq_nic_init(%struct.aq_nic_s* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %69

53:                                               ; preds = %47
  %54 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %55 = call i32 @aq_nic_start(%struct.aq_nic_s* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %69

59:                                               ; preds = %53
  %60 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %61 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @netif_device_attach(i32 %62)
  %64 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %65 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @netif_tx_start_all_queues(i32 %66)
  br label %68

68:                                               ; preds = %59, %44
  br label %69

69:                                               ; preds = %68, %58, %52, %43
  %70 = call i32 (...) @rtnl_unlock()
  br label %71

71:                                               ; preds = %69, %11
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @netif_tx_stop_all_queues(i32) #1

declare dso_local i32 @aq_nic_stop(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_nic_deinit(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_nic_init(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_nic_start(%struct.aq_nic_s*) #1

declare dso_local i32 @netif_device_attach(i32) #1

declare dso_local i32 @netif_tx_start_all_queues(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
