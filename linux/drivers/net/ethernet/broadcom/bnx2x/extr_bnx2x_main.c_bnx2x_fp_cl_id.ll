; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_fp_cl_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_fp_cl_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_fastpath = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnx2x_fastpath*)* @bnx2x_fp_cl_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnx2x_fp_cl_id(%struct.bnx2x_fastpath* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bnx2x_fastpath*, align 8
  store %struct.bnx2x_fastpath* %0, %struct.bnx2x_fastpath** %3, align 8
  %4 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %5 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @CHIP_IS_E1x(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @BP_L_ID(i32 %12)
  %14 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %15 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  store i64 %17, i64* %2, align 8
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %20 = call i64 @bnx2x_fp_igu_sb_id(%struct.bnx2x_fastpath* %19)
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %18, %9
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

declare dso_local i64 @CHIP_IS_E1x(i32) #1

declare dso_local i64 @BP_L_ID(i32) #1

declare dso_local i64 @bnx2x_fp_igu_sb_id(%struct.bnx2x_fastpath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
