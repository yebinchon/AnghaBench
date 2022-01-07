; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_sync_rx_queues_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_sync_rx_queues_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_mvm_internal_rxq_notif = type { i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Failed to trigger RX queues sync (%d)\0A\00", align 1
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_sync_rx_queues_internal(%struct.iwl_mvm* %0, %struct.iwl_mvm_internal_rxq_notif* %1, i64 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_mvm_internal_rxq_notif*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm_internal_rxq_notif* %1, %struct.iwl_mvm_internal_rxq_notif** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @BIT(i32 %13)
  %15 = sub nsw i64 %14, 1
  store i64 %15, i64* %7, align 8
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %17 = call i32 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %108

20:                                               ; preds = %3
  %21 = load %struct.iwl_mvm_internal_rxq_notif*, %struct.iwl_mvm_internal_rxq_notif** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_internal_rxq_notif, %struct.iwl_mvm_internal_rxq_notif* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.iwl_mvm_internal_rxq_notif*, %struct.iwl_mvm_internal_rxq_notif** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm_internal_rxq_notif, %struct.iwl_mvm_internal_rxq_notif* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 1
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @atomic_set(i32* %32, i32 %37)
  br label %39

39:                                               ; preds = %25, %20
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.iwl_mvm_internal_rxq_notif*, %struct.iwl_mvm_internal_rxq_notif** %5, align 8
  %43 = bitcast %struct.iwl_mvm_internal_rxq_notif* %42 to i32*
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.iwl_mvm_internal_rxq_notif*, %struct.iwl_mvm_internal_rxq_notif** %5, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm_internal_rxq_notif, %struct.iwl_mvm_internal_rxq_notif* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @iwl_mvm_notify_rx_queue(%struct.iwl_mvm* %40, i64 %41, i32* %43, i64 %44, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %39
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @IWL_ERR(%struct.iwl_mvm* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %95

58:                                               ; preds = %39
  %59 = load %struct.iwl_mvm_internal_rxq_notif*, %struct.iwl_mvm_internal_rxq_notif** %5, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm_internal_rxq_notif, %struct.iwl_mvm_internal_rxq_notif* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %58
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %64, i32 0, i32 3
  %66 = call i32 @lockdep_assert_held(i32* %65)
  %67 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %68 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %70, i32 0, i32 1
  %72 = call i64 @atomic_read(i32* %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %63
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %76 = call i64 @iwl_mvm_is_radio_killed(%struct.iwl_mvm* %75)
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %74, %63
  %79 = phi i1 [ true, %63 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* @HZ, align 4
  %82 = call i32 @wait_event_timeout(i32 %69, i32 %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %87 = call i64 @iwl_mvm_is_radio_killed(%struct.iwl_mvm* %86)
  %88 = icmp ne i64 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %85, %78
  %91 = phi i1 [ false, %78 ], [ %89, %85 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @WARN_ON_ONCE(i32 %92)
  br label %94

94:                                               ; preds = %90, %58
  br label %95

95:                                               ; preds = %94, %54
  %96 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %97 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %96, i32 0, i32 1
  %98 = call i32 @atomic_set(i32* %97, i32 0)
  %99 = load %struct.iwl_mvm_internal_rxq_notif*, %struct.iwl_mvm_internal_rxq_notif** %5, align 8
  %100 = getelementptr inbounds %struct.iwl_mvm_internal_rxq_notif, %struct.iwl_mvm_internal_rxq_notif* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %95
  %104 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %105 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %19, %103, %95
  ret void
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @iwl_mvm_notify_rx_queue(%struct.iwl_mvm*, i64, i32*, i64, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @iwl_mvm_is_radio_killed(%struct.iwl_mvm*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
