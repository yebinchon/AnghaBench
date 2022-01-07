; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_internal_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_internal_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@USTORM_AGG_DATA_SIZE = common dso_local global i32 0, align 4
@BAR_USTRORM_INTMEM = common dso_local global i64 0, align 8
@USTORM_AGG_DATA_OFFSET = common dso_local global i64 0, align 8
@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@CSTORM_IGU_MODE_OFFSET = common dso_local global i64 0, align 8
@HC_IGU_BC_MODE = common dso_local global i32 0, align 4
@HC_IGU_NBC_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_init_internal_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_init_internal_common(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @USTORM_AGG_DATA_SIZE, align 4
  %7 = ashr i32 %6, 2
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %12 = load i64, i64* @USTORM_AGG_DATA_OFFSET, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = call i32 @REG_WR(%struct.bnx2x* %10, i64 %17, i32 0)
  br label %19

19:                                               ; preds = %9
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %22
  %27 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %28 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %29 = load i64, i64* @CSTORM_IGU_MODE_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %32 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @HC_IGU_BC_MODE, align 4
  br label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @HC_IGU_NBC_MODE, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = call i32 @REG_WR8(%struct.bnx2x* %27, i64 %30, i32 %39)
  br label %41

41:                                               ; preds = %38, %22
  ret void
}

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR8(%struct.bnx2x*, i64, i32) #1

declare dso_local i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
