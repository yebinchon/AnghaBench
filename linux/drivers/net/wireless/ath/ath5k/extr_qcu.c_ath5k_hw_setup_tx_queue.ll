; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_setup_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_setup_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ath5k_txq_info = type { i32, i32 }

@AR5K_TX_QUEUE_ID_NOQCU_DATA = common dso_local global i32 0, align 4
@AR5K_TX_QUEUE_ID_NOQCU_BEACON = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR5K_TX_QUEUE_ID_UAPSD = common dso_local global i32 0, align 4
@AR5K_TX_QUEUE_ID_BEACON = common dso_local global i32 0, align 4
@AR5K_TX_QUEUE_ID_CAB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_setup_tx_queue(%struct.ath5k_hw* %0, i32 %1, %struct.ath5k_txq_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath5k_txq_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ath5k_txq_info* %2, %struct.ath5k_txq_info** %7, align 8
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %22 [
    i32 129, label %18
    i32 131, label %20
    i32 130, label %20
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @AR5K_TX_QUEUE_ID_NOQCU_DATA, align 4
  store i32 %19, i32* %8, align 4
  br label %25

20:                                               ; preds = %16, %16
  %21 = load i32, i32* @AR5K_TX_QUEUE_ID_NOQCU_BEACON, align 4
  store i32 %21, i32* %8, align 4
  br label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %80

25:                                               ; preds = %20, %18
  br label %42

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %38 [
    i32 129, label %28
    i32 128, label %32
    i32 131, label %34
    i32 130, label %36
  ]

28:                                               ; preds = %26
  %29 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %30 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  br label %41

32:                                               ; preds = %26
  %33 = load i32, i32* @AR5K_TX_QUEUE_ID_UAPSD, align 4
  store i32 %33, i32* %8, align 4
  br label %41

34:                                               ; preds = %26
  %35 = load i32, i32* @AR5K_TX_QUEUE_ID_BEACON, align 4
  store i32 %35, i32* %8, align 4
  br label %41

36:                                               ; preds = %26
  %37 = load i32, i32* @AR5K_TX_QUEUE_ID_CAB, align 4
  store i32 %37, i32* %8, align 4
  br label %41

38:                                               ; preds = %26
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %80

41:                                               ; preds = %36, %34, %32, %28
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %44 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = call i32 @memset(%struct.TYPE_6__* %48, i32 0, i32 8)
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %52 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %50, i32* %57, align 4
  %58 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %59 = icmp ne %struct.ath5k_txq_info* %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %42
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %63 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %67 = call i32 @ath5k_hw_set_tx_queueprops(%struct.ath5k_hw* %64, i32 %65, %struct.ath5k_txq_info* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %80

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %42
  %74 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %75 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @AR5K_Q_ENABLE_BITS(i32 %76, i32 %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %73, %70, %38, %22
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ath5k_hw_set_tx_queueprops(%struct.ath5k_hw*, i32, %struct.ath5k_txq_info*) #1

declare dso_local i32 @AR5K_Q_ENABLE_BITS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
