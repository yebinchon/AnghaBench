; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.h_bnxt_get_hwrm_seq_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.h_bnxt_get_hwrm_seq_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32 }

@BNXT_HWRM_CHNL_CHIMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnxt*, i64)* @bnxt_get_hwrm_seq_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnxt_get_hwrm_seq_id(%struct.bnxt* %0, i64 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @BNXT_HWRM_CHNL_CHIMP, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = sext i32 %12 to i64
  store i64 %14, i64* %5, align 8
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = sext i32 %18 to i64
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %15, %9
  %22 = load i64, i64* %5, align 8
  ret i64 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
