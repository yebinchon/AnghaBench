; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_mbox_credit_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_mbox_credit_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32 }
%struct.ath6kl_htc_credit_info = type { i32 }

@WMI_CONTROL_SVC = common dso_local global i32 0, align 4
@WMI_DATA_VO_SVC = common dso_local global i32 0, align 4
@WMI_DATA_VI_SVC = common dso_local global i32 0, align 4
@WMI_DATA_BE_SVC = common dso_local global i32 0, align 4
@WMI_DATA_BK_SVC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*, %struct.ath6kl_htc_credit_info*)* @ath6kl_htc_mbox_credit_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_htc_mbox_credit_setup(%struct.htc_target* %0, %struct.ath6kl_htc_credit_info* %1) #0 {
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.ath6kl_htc_credit_info*, align 8
  %5 = alloca [5 x i32], align 16
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store %struct.ath6kl_htc_credit_info* %1, %struct.ath6kl_htc_credit_info** %4, align 8
  %6 = load %struct.ath6kl_htc_credit_info*, %struct.ath6kl_htc_credit_info** %4, align 8
  %7 = call i32 @memset(%struct.ath6kl_htc_credit_info* %6, i32 0, i32 4)
  %8 = load i32, i32* @WMI_CONTROL_SVC, align 4
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 %8, i32* %9, align 16
  %10 = load i32, i32* @WMI_DATA_VO_SVC, align 4
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @WMI_DATA_VI_SVC, align 4
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* @WMI_DATA_BE_SVC, align 4
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @WMI_DATA_BK_SVC, align 4
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  store i32 %16, i32* %17, align 16
  %18 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %19 = load %struct.ath6kl_htc_credit_info*, %struct.ath6kl_htc_credit_info** %4, align 8
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %21 = call i32 @ath6kl_htc_set_credit_dist(%struct.htc_target* %18, %struct.ath6kl_htc_credit_info* %19, i32* %20, i32 5)
  ret i32 0
}

declare dso_local i32 @memset(%struct.ath6kl_htc_credit_info*, i32, i32) #1

declare dso_local i32 @ath6kl_htc_set_credit_dist(%struct.htc_target*, %struct.ath6kl_htc_credit_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
