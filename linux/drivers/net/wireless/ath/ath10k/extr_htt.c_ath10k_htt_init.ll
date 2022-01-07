; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt.c_ath10k_htt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt.c_ath10k_htt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.ath10k_htt, %struct.TYPE_4__* }
%struct.ath10k_htt = type { i32, i32, i32, %struct.ath10k* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@htt_10_4_t2h_msg_types = common dso_local global i32 0, align 4
@HTT_10_4_T2H_NUM_MSGS = common dso_local global i32 0, align 4
@htt_10x_t2h_msg_types = common dso_local global i32 0, align 4
@HTT_10X_T2H_NUM_MSGS = common dso_local global i32 0, align 4
@htt_tlv_t2h_msg_types = common dso_local global i32 0, align 4
@HTT_TLV_T2H_NUM_MSGS = common dso_local global i32 0, align 4
@htt_main_t2h_msg_types = common dso_local global i32 0, align 4
@HTT_MAIN_T2H_NUM_MSGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_htt_init(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_htt*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %6 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %5, i32 0, i32 0
  store %struct.ath10k_htt* %6, %struct.ath10k_htt** %4, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %9 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %8, i32 0, i32 3
  store %struct.ath10k* %7, %struct.ath10k** %9, align 8
  %10 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %11 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %10, i32 0, i32 0
  store i32 50, i32* %11, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %58 [
    i32 132, label %18
    i32 133, label %27
    i32 129, label %36
    i32 131, label %45
    i32 130, label %54
    i32 128, label %54
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @htt_10_4_t2h_msg_types, align 4
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @HTT_10_4_T2H_NUM_MSGS, align 4
  %24 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  br label %58

27:                                               ; preds = %1
  %28 = load i32, i32* @htt_10x_t2h_msg_types, align 4
  %29 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %30 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @HTT_10X_T2H_NUM_MSGS, align 4
  %33 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %34 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  br label %58

36:                                               ; preds = %1
  %37 = load i32, i32* @htt_tlv_t2h_msg_types, align 4
  %38 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %39 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @HTT_TLV_T2H_NUM_MSGS, align 4
  %42 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %43 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  br label %58

45:                                               ; preds = %1
  %46 = load i32, i32* @htt_main_t2h_msg_types, align 4
  %47 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %48 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @HTT_MAIN_T2H_NUM_MSGS, align 4
  %51 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %52 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  br label %58

54:                                               ; preds = %1, %1
  %55 = call i32 @WARN_ON(i32 1)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %63

58:                                               ; preds = %1, %45, %36, %27, %18
  %59 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %60 = call i32 @ath10k_htt_set_tx_ops(%struct.ath10k_htt* %59)
  %61 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %62 = call i32 @ath10k_htt_set_rx_ops(%struct.ath10k_htt* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ath10k_htt_set_tx_ops(%struct.ath10k_htt*) #1

declare dso_local i32 @ath10k_htt_set_rx_ops(%struct.ath10k_htt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
