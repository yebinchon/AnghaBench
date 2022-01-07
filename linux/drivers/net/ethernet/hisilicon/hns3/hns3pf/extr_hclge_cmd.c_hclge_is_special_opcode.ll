; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_is_special_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_is_special_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HCLGE_OPC_STATS_64_BIT = common dso_local global i64 0, align 8
@HCLGE_OPC_STATS_32_BIT = common dso_local global i64 0, align 8
@HCLGE_OPC_STATS_MAC = common dso_local global i64 0, align 8
@HCLGE_OPC_STATS_MAC_ALL = common dso_local global i64 0, align 8
@HCLGE_OPC_QUERY_32_BIT_REG = common dso_local global i64 0, align 8
@HCLGE_OPC_QUERY_64_BIT_REG = common dso_local global i64 0, align 8
@HCLGE_QUERY_CLEAR_MPF_RAS_INT = common dso_local global i64 0, align 8
@HCLGE_QUERY_CLEAR_PF_RAS_INT = common dso_local global i64 0, align 8
@HCLGE_QUERY_CLEAR_ALL_MPF_MSIX_INT = common dso_local global i64 0, align 8
@HCLGE_QUERY_CLEAR_ALL_PF_MSIX_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @hclge_is_special_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_is_special_opcode(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [10 x i64], align 16
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i64 0, i64 0
  %7 = load i64, i64* @HCLGE_OPC_STATS_64_BIT, align 8
  store i64 %7, i64* %6, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 1
  %9 = load i64, i64* @HCLGE_OPC_STATS_32_BIT, align 8
  store i64 %9, i64* %8, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 1
  %11 = load i64, i64* @HCLGE_OPC_STATS_MAC, align 8
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 1
  %13 = load i64, i64* @HCLGE_OPC_STATS_MAC_ALL, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 1
  %15 = load i64, i64* @HCLGE_OPC_QUERY_32_BIT_REG, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 1
  %17 = load i64, i64* @HCLGE_OPC_QUERY_64_BIT_REG, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 1
  %19 = load i64, i64* @HCLGE_QUERY_CLEAR_MPF_RAS_INT, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 1
  %21 = load i64, i64* @HCLGE_QUERY_CLEAR_PF_RAS_INT, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 1
  %23 = load i64, i64* @HCLGE_QUERY_CLEAR_ALL_MPF_MSIX_INT, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 1
  %25 = load i64, i64* @HCLGE_QUERY_CLEAR_ALL_PF_MSIX_INT, align 8
  store i64 %25, i64* %24, align 8
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %40, %1
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i64 0, i64 0
  %29 = call i32 @ARRAY_SIZE(i64* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i64 0, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %44

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %26

43:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
