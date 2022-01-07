; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_dfx_reg_fetch_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_dfx_reg_fetch_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_desc = type { i32* }

@REG_NUM_PER_LINE = common dso_local global i32 0, align 4
@REG_NUM_REMAIN_MASK = common dso_local global i32 0, align 4
@SEPARATOR_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_desc*, i32, i8*)* @hclge_dfx_reg_fetch_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_dfx_reg_fetch_data(%struct.hclge_desc* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.hclge_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hclge_desc*, align 8
  %14 = alloca i32*, align 8
  store %struct.hclge_desc* %0, %struct.hclge_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %15 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  store %struct.hclge_desc* %15, %struct.hclge_desc** %13, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %14, align 8
  %18 = load %struct.hclge_desc*, %struct.hclge_desc** %13, align 8
  %19 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @REG_NUM_PER_LINE, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @REG_NUM_REMAIN_MASK, align 4
  %28 = and i32 %26, %27
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %54, %3
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %7, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.hclge_desc*, %struct.hclge_desc** %13, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %41, i64 %43
  %45 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = load i32*, i32** %14, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %14, align 8
  store i32 %51, i32* %52, align 4
  br label %54

54:                                               ; preds = %34
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %30

57:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %66, %57
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* @SEPARATOR_VALUE, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %14, align 8
  store i32 %63, i32* %64, align 4
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %58

69:                                               ; preds = %58
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %70, %71
  ret i32 %72
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
