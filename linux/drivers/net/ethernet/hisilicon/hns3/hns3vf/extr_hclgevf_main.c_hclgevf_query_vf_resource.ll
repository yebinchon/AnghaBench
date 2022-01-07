; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_query_vf_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_query_vf_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclgevf_query_res_cmd = type { i32, i32 }
%struct.hclgevf_desc = type { i64 }

@HCLGEVF_OPC_QUERY_VF_RSRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"query vf resource failed, ret = %d.\0A\00", align 1
@HCLGEVF_MSIX_OFT_ROCEE_M = common dso_local global i32 0, align 4
@HCLGEVF_MSIX_OFT_ROCEE_S = common dso_local global i32 0, align 4
@HCLGEVF_VEC_NUM_M = common dso_local global i32 0, align 4
@HCLGEVF_VEC_NUM_S = common dso_local global i32 0, align 4
@HNAE3_MIN_VECTOR_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Just %u msi resources, not enough for vf(min:2).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_query_vf_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_query_vf_resource(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca %struct.hclgevf_query_res_cmd*, align 8
  %5 = alloca %struct.hclgevf_desc, align 8
  %6 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %7 = load i32, i32* @HCLGEVF_OPC_QUERY_VF_RSRC, align 4
  %8 = call i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc* %5, i32 %7, i32 1)
  %9 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %9, i32 0, i32 5
  %11 = call i32 @hclgevf_cmd_send(i32* %10, %struct.hclgevf_desc* %5, i32 1)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %98

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.hclgevf_query_res_cmd*
  store %struct.hclgevf_query_res_cmd* %25, %struct.hclgevf_query_res_cmd** %4, align 8
  %26 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %27 = call i64 @hnae3_dev_roce_supported(%struct.hclgevf_dev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %22
  %30 = load %struct.hclgevf_query_res_cmd*, %struct.hclgevf_query_res_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.hclgevf_query_res_cmd, %struct.hclgevf_query_res_cmd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__le16_to_cpu(i32 %32)
  %34 = load i32, i32* @HCLGEVF_MSIX_OFT_ROCEE_M, align 4
  %35 = load i32, i32* @HCLGEVF_MSIX_OFT_ROCEE_S, align 4
  %36 = call i8* @hnae3_get_field(i32 %33, i32 %34, i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %39 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.hclgevf_query_res_cmd*, %struct.hclgevf_query_res_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.hclgevf_query_res_cmd, %struct.hclgevf_query_res_cmd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__le16_to_cpu(i32 %42)
  %44 = load i32, i32* @HCLGEVF_VEC_NUM_M, align 4
  %45 = load i32, i32* @HCLGEVF_VEC_NUM_S, align 4
  %46 = call i8* @hnae3_get_field(i32 %43, i32 %44, i32 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %49 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %51 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %54 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %56 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %59 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %57, %60
  %62 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %63 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  br label %80

64:                                               ; preds = %22
  %65 = load %struct.hclgevf_query_res_cmd*, %struct.hclgevf_query_res_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.hclgevf_query_res_cmd, %struct.hclgevf_query_res_cmd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @__le16_to_cpu(i32 %67)
  %69 = load i32, i32* @HCLGEVF_VEC_NUM_M, align 4
  %70 = load i32, i32* @HCLGEVF_VEC_NUM_S, align 4
  %71 = call i8* @hnae3_get_field(i32 %68, i32 %69, i32 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %74 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %76 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %79 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %64, %29
  %81 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %82 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @HNAE3_MIN_VECTOR_NUM, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %88 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %87, i32 0, i32 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %92 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %98

97:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %86, %14
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc*, i32, i32) #1

declare dso_local i32 @hclgevf_cmd_send(i32*, %struct.hclgevf_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @hnae3_dev_roce_supported(%struct.hclgevf_dev*) #1

declare dso_local i8* @hnae3_get_field(i32, i32, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
