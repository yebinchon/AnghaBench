; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_regs_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_regs_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Get register number failed, ret = %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Get dfx reg len failed, ret = %d.\0A\00", align 1
@REG_LEN_PER_LINE = common dso_local global i32 0, align 4
@REG_SEPARATOR_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*)* @hclge_get_regs_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_regs_len(%struct.hnae3_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hnae3_knic_private_info*, align 8
  %9 = alloca %struct.hclge_vport*, align 8
  %10 = alloca %struct.hclge_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %18 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %17, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %18, %struct.hnae3_knic_private_info** %8, align 8
  %19 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %20 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %19)
  store %struct.hclge_vport* %20, %struct.hclge_vport** %9, align 8
  %21 = load %struct.hclge_vport*, %struct.hclge_vport** %9, align 8
  %22 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %21, i32 0, i32 0
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %22, align 8
  store %struct.hclge_dev* %23, %struct.hclge_dev** %10, align 8
  %24 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %25 = call i32 @hclge_get_regs_num(%struct.hclge_dev* %24, i32* %11, i32* %12)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %30 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %2, align 4
  br label %122

36:                                               ; preds = %1
  %37 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %38 = call i32 @hclge_get_dfx_reg_len(%struct.hclge_dev* %37, i32* %13)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %43 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %2, align 4
  br label %122

49:                                               ; preds = %36
  %50 = load i32, i32* @REG_LEN_PER_LINE, align 4
  %51 = sext i32 %50 to i64
  %52 = udiv i64 4, %51
  %53 = load i32, i32* @REG_SEPARATOR_LINE, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %52, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @REG_LEN_PER_LINE, align 4
  %58 = sext i32 %57 to i64
  %59 = udiv i64 4, %58
  %60 = load i32, i32* @REG_SEPARATOR_LINE, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %59, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @REG_LEN_PER_LINE, align 4
  %65 = sext i32 %64 to i64
  %66 = udiv i64 4, %65
  %67 = load i32, i32* @REG_SEPARATOR_LINE, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %66, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @REG_LEN_PER_LINE, align 4
  %72 = sext i32 %71 to i64
  %73 = udiv i64 4, %72
  %74 = load i32, i32* @REG_SEPARATOR_LINE, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %73, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = load i32, i32* @REG_LEN_PER_LINE, align 4
  %82 = sext i32 %81 to i64
  %83 = udiv i64 %80, %82
  %84 = load i32, i32* @REG_SEPARATOR_LINE, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %83, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = load i32, i32* @REG_LEN_PER_LINE, align 4
  %92 = sext i32 %91 to i64
  %93 = udiv i64 %90, %92
  %94 = load i32, i32* @REG_SEPARATOR_LINE, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %93, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %8, align 8
  %103 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %101, %104
  %106 = add nsw i32 %100, %105
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %109 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  %112 = mul nsw i32 %107, %111
  %113 = add nsw i32 %106, %112
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* @REG_LEN_PER_LINE, align 4
  %119 = mul nsw i32 %117, %118
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %119, %120
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %49, %41, %28
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hclge_get_regs_num(%struct.hclge_dev*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_get_dfx_reg_len(%struct.hclge_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
