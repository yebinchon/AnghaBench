; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt.c_ath10k_htt_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt.c_ath10k_htt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i32, i32, i32, %struct.ath10k* }
%struct.ath10k = type { i32 }

@HTT_TARGET_VERSION_TIMEOUT_HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"htt version request timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to verify htt version: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to setup rx ring: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to setup amsdu/ampdu limit: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_htt_setup(%struct.ath10k_htt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_htt*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  %6 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %7 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %6, i32 0, i32 3
  %8 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  store %struct.ath10k* %8, %struct.ath10k** %4, align 8
  %9 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %10 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %9, i32 0, i32 2
  %11 = call i32 @init_completion(i32* %10)
  %12 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %13 = call i32 @ath10k_htt_h2t_ver_req_msg(%struct.ath10k_htt* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %74

18:                                               ; preds = %1
  %19 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %20 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %19, i32 0, i32 2
  %21 = load i32, i32* @HTT_TARGET_VERSION_TIMEOUT_HZ, align 4
  %22 = call i32 @wait_for_completion_timeout(i32* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %27 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %74

30:                                               ; preds = %18
  %31 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %32 = call i32 @ath10k_htt_verify_version(%struct.ath10k_htt* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %74

40:                                               ; preds = %30
  %41 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %42 = call i32 @ath10k_htt_send_frag_desc_bank_cfg(%struct.ath10k_htt* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %74

47:                                               ; preds = %40
  %48 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %49 = call i32 @ath10k_htt_send_rx_ring_cfg(%struct.ath10k_htt* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %74

57:                                               ; preds = %47
  %58 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %59 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %60 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %63 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ath10k_htt_h2t_aggr_cfg_msg(%struct.ath10k_htt* %58, i32 %61, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %68, %52, %45, %35, %25, %16
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ath10k_htt_h2t_ver_req_msg(%struct.ath10k_htt*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @ath10k_htt_verify_version(%struct.ath10k_htt*) #1

declare dso_local i32 @ath10k_htt_send_frag_desc_bank_cfg(%struct.ath10k_htt*) #1

declare dso_local i32 @ath10k_htt_send_rx_ring_cfg(%struct.ath10k_htt*) #1

declare dso_local i32 @ath10k_htt_h2t_aggr_cfg_msg(%struct.ath10k_htt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
