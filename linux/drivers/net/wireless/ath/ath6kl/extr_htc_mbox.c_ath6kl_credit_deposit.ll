; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_credit_deposit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_credit_deposit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_htc_credit_info = type { i32 }
%struct.htc_endpoint_credit_dist = type { i32, i32, i32 }

@ATH6KL_DBG_CREDIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"credit deposit ep %d credits %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl_htc_credit_info*, %struct.htc_endpoint_credit_dist*, i32)* @ath6kl_credit_deposit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_credit_deposit(%struct.ath6kl_htc_credit_info* %0, %struct.htc_endpoint_credit_dist* %1, i32 %2) #0 {
  %4 = alloca %struct.ath6kl_htc_credit_info*, align 8
  %5 = alloca %struct.htc_endpoint_credit_dist*, align 8
  %6 = alloca i32, align 4
  store %struct.ath6kl_htc_credit_info* %0, %struct.ath6kl_htc_credit_info** %4, align 8
  store %struct.htc_endpoint_credit_dist* %1, %struct.htc_endpoint_credit_dist** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @ATH6KL_DBG_CREDIT, align 4
  %8 = load %struct.htc_endpoint_credit_dist*, %struct.htc_endpoint_credit_dist** %5, align 8
  %9 = getelementptr inbounds %struct.htc_endpoint_credit_dist, %struct.htc_endpoint_credit_dist* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @ath6kl_dbg(i32 %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.htc_endpoint_credit_dist*, %struct.htc_endpoint_credit_dist** %5, align 8
  %15 = getelementptr inbounds %struct.htc_endpoint_credit_dist, %struct.htc_endpoint_credit_dist* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.htc_endpoint_credit_dist*, %struct.htc_endpoint_credit_dist** %5, align 8
  %20 = getelementptr inbounds %struct.htc_endpoint_credit_dist, %struct.htc_endpoint_credit_dist* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ath6kl_htc_credit_info*, %struct.ath6kl_htc_credit_info** %4, align 8
  %25 = getelementptr inbounds %struct.ath6kl_htc_credit_info, %struct.ath6kl_htc_credit_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, %23
  store i32 %27, i32* %25, align 4
  ret void
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
