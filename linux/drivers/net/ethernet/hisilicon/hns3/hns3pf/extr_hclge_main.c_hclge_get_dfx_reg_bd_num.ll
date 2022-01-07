; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_dfx_reg_bd_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_dfx_reg_bd_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_desc = type { i32* }

@.str = private unnamed_addr constant [36 x i8] c"Get dfx bd num fail, status is %d.\0A\00", align 1
@hclge_dfx_bd_offset_list = common dso_local global i64* null, align 8
@HCLGE_DFX_REG_BD_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32*, i64)* @hclge_get_dfx_reg_bd_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_dfx_reg_bd_num(%struct.hclge_dev* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [4 x %struct.hclge_desc], align 16
  %14 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %16 = getelementptr inbounds [4 x %struct.hclge_desc], [4 x %struct.hclge_desc]* %13, i64 0, i64 0
  %17 = call i32 @hclge_query_bd_num_cmd_send(%struct.hclge_dev* %15, %struct.hclge_desc* %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %4, align 4
  br label %64

28:                                               ; preds = %3
  %29 = getelementptr inbounds [4 x %struct.hclge_desc], [4 x %struct.hclge_desc]* %13, i64 0, i64 0
  %30 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 16
  %32 = call i64 @ARRAY_SIZE(i32* %31)
  store i64 %32, i64* %8, align 8
  store i64 0, i64* %12, align 8
  br label %33

33:                                               ; preds = %59, %28
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  %38 = load i64*, i64** @hclge_dfx_bd_offset_list, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %8, align 8
  %44 = urem i64 %42, %43
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %8, align 8
  %47 = udiv i64 %45, %46
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds [4 x %struct.hclge_desc], [4 x %struct.hclge_desc]* %13, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %37
  %60 = load i64, i64* %12, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %12, align 8
  br label %33

62:                                               ; preds = %33
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %20
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @hclge_query_bd_num_cmd_send(%struct.hclge_dev*, %struct.hclge_desc*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
