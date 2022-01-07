; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_chain_alloc_sanity_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_chain_alloc_sanity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }

@QED_CHAIN_CNT_TYPE_U16 = common dso_local global i32 0, align 4
@U16_MAX = common dso_local global i64 0, align 8
@QED_CHAIN_CNT_TYPE_U32 = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"The actual chain size (0x%llx) is larger than the maximal possible value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32, i64, i64)* @qed_chain_alloc_sanity_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_chain_alloc_sanity_check(%struct.qed_dev* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call i64 @ELEMS_PER_PAGE(i64 %11)
  %13 = load i64, i64* %9, align 8
  %14 = mul nsw i64 %12, %13
  store i64 %14, i64* %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @QED_CHAIN_CNT_TYPE_U16, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @U16_MAX, align 8
  %21 = add nsw i64 %20, 1
  %22 = icmp sgt i64 %19, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %18, %4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @QED_CHAIN_CNT_TYPE_U32, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @U32_MAX, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27, %18
  %32 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @DP_NOTICE(%struct.qed_dev* %32, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %27, %23
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @ELEMS_PER_PAGE(i64) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
