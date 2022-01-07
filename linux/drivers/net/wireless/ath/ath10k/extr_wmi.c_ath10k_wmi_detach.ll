; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ATH10K_FW_FEATURE_MGMT_TX_BY_REF = common dso_local global i32 0, align 4
@ath10k_wmi_mgmt_tx_clean_up_pending = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_wmi_detach(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %3 = load i32, i32* @ATH10K_FW_FEATURE_MGMT_TX_BY_REF, align 4
  %4 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %5 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %4, i32 0, i32 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @test_bit(i32 %3, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %14 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %13, i32 0, i32 2
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* @ath10k_wmi_mgmt_tx_clean_up_pending, align 4
  %20 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %21 = call i32 @idr_for_each(i32* %18, i32 %19, %struct.ath10k* %20)
  %22 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %23 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @idr_destroy(i32* %24)
  %26 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %27 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %26, i32 0, i32 2
  %28 = call i32 @spin_unlock_bh(i32* %27)
  br label %29

29:                                               ; preds = %12, %1
  %30 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 1
  %32 = call i32 @cancel_work_sync(i32* %31)
  %33 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %34 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %39 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @dev_kfree_skb(i64 %40)
  br label %42

42:                                               ; preds = %37, %29
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @idr_for_each(i32*, i32, %struct.ath10k*) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @dev_kfree_skb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
