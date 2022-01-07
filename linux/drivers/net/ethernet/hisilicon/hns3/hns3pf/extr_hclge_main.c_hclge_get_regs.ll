; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Get register number failed, ret = %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Get 32 bit register failed, ret = %d.\0A\00", align 1
@MAX_SEPARATE_NUM = common dso_local global i32 0, align 4
@REG_NUM_REMAIN_MASK = common dso_local global i32 0, align 4
@SEPARATOR_VALUE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Get 64 bit register failed, ret = %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Get dfx register failed, ret = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, i32*, i8*)* @hclge_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_get_regs(%struct.hnae3_handle* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hnae3_knic_private_info*, align 8
  %8 = alloca %struct.hclge_vport*, align 8
  %9 = alloca %struct.hclge_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %18 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %17, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %18, %struct.hnae3_knic_private_info** %7, align 8
  %19 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %20 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %19)
  store %struct.hclge_vport* %20, %struct.hclge_vport** %8, align 8
  %21 = load %struct.hclge_vport*, %struct.hclge_vport** %8, align 8
  %22 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %21, i32 0, i32 0
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %22, align 8
  store %struct.hclge_dev* %23, %struct.hclge_dev** %9, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %16, align 8
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %31 = call i32 @hclge_get_regs_num(%struct.hclge_dev* %30, i32* %10, i32* %11)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %3
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %36 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %136

41:                                               ; preds = %3
  %42 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %7, align 8
  %45 = call i32 @hclge_fetch_pf_reg(%struct.hclge_dev* %42, i32* %43, %struct.hnae3_knic_private_info* %44)
  %46 = load i32*, i32** %16, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %16, align 8
  %49 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %16, align 8
  %52 = call i32 @hclge_get_32_bit_regs(%struct.hclge_dev* %49, i32 %50, i32* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %41
  %56 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %57 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %136

62:                                               ; preds = %41
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %16, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %16, align 8
  %68 = load i32, i32* @MAX_SEPARATE_NUM, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @REG_NUM_REMAIN_MASK, align 4
  %71 = and i32 %69, %70
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %82, %62
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i8*, i8** @SEPARATOR_VALUE, align 8
  %79 = ptrtoint i8* %78 to i32
  %80 = load i32*, i32** %16, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %16, align 8
  store i32 %79, i32* %80, align 4
  br label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %73

85:                                               ; preds = %73
  %86 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32*, i32** %16, align 8
  %89 = call i32 @hclge_get_64_bit_regs(%struct.hclge_dev* %86, i32 %87, i32* %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %94 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %136

99:                                               ; preds = %85
  %100 = load i32, i32* %11, align 4
  %101 = mul nsw i32 %100, 2
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32*, i32** %16, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %16, align 8
  %106 = load i32, i32* @MAX_SEPARATE_NUM, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @REG_NUM_REMAIN_MASK, align 4
  %109 = and i32 %107, %108
  %110 = sub nsw i32 %106, %109
  store i32 %110, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %120, %99
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load i8*, i8** @SEPARATOR_VALUE, align 8
  %117 = ptrtoint i8* %116 to i32
  %118 = load i32*, i32** %16, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %16, align 8
  store i32 %117, i32* %118, align 4
  br label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %111

123:                                              ; preds = %111
  %124 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = call i32 @hclge_get_dfx_reg(%struct.hclge_dev* %124, i32* %125)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %131 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @dev_err(i32* %133, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %34, %55, %92, %129, %123
  ret void
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hclge_get_regs_num(%struct.hclge_dev*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_fetch_pf_reg(%struct.hclge_dev*, i32*, %struct.hnae3_knic_private_info*) #1

declare dso_local i32 @hclge_get_32_bit_regs(%struct.hclge_dev*, i32, i32*) #1

declare dso_local i32 @hclge_get_64_bit_regs(%struct.hclge_dev*, i32, i32*) #1

declare dso_local i32 @hclge_get_dfx_reg(%struct.hclge_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
