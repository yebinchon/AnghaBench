; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_64_bit_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_64_bit_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_desc = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCLGE_OPC_QUERY_64_BIT_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Query 64 bit register cmd failed, ret = %d.\0A\00", align 1
@HCLGE_64_BIT_DESC_NODATA_LEN = common dso_local global i32 0, align 4
@HCLGE_64_BIT_REG_RTN_DATANUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i64, i8*)* @hclge_get_64_bit_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_64_bit_regs(%struct.hclge_dev* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hclge_desc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %110

22:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @DIV_ROUND_UP(i64 %26, i32 4)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.hclge_desc* @kcalloc(i32 %28, i32 8, i32 %29)
  store %struct.hclge_desc* %30, %struct.hclge_desc** %8, align 8
  %31 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %32 = icmp ne %struct.hclge_desc* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %110

36:                                               ; preds = %22
  %37 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %38 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %37, i64 0
  %39 = load i32, i32* @HCLGE_OPC_QUERY_64_BIT_REG, align 4
  %40 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %38, i32 %39, i32 1)
  %41 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %42 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %41, i32 0, i32 1
  %43 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @hclge_cmd_send(i32* %42, %struct.hclge_desc* %43, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %36
  %49 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %50 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %56 = call i32 @kfree(%struct.hclge_desc* %55)
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %4, align 4
  br label %110

58:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %104, %58
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %107

63:                                               ; preds = %59
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %67, i64 %69
  %71 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32* %73, i32** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 4, %74
  store i32 %75, i32* %15, align 4
  br label %82

76:                                               ; preds = %63
  %77 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %77, i64 %79
  %81 = bitcast %struct.hclge_desc* %80 to i32*
  store i32* %81, i32** %10, align 8
  store i32 4, i32* %15, align 4
  br label %82

82:                                               ; preds = %76, %66
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %100, %82
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %83
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %10, align 8
  %90 = load i32, i32* %88, align 4
  %91 = call i32 @le64_to_cpu(i32 %90)
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  %94 = load i64, i64* %6, align 8
  %95 = add nsw i64 %94, -1
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %6, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %87
  br label %103

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %83

103:                                              ; preds = %98, %83
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %59

107:                                              ; preds = %59
  %108 = load %struct.hclge_desc*, %struct.hclge_desc** %8, align 8
  %109 = call i32 @kfree(%struct.hclge_desc* %108)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %107, %48, %33, %21
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local %struct.hclge_desc* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.hclge_desc*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
