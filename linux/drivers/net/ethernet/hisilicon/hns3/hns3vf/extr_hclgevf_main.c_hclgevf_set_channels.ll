; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { i32, i32, i32 }
%struct.hclgevf_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HCLGEVF_RSS_IND_TBL_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"set rss indir table fail, ret=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Channels changed, rss_size from %u to %u, tqps from %u to %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32, i32)* @hclgevf_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_set_channels(%struct.hnae3_handle* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hclgevf_dev*, align 8
  %9 = alloca %struct.hnae3_knic_private_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %16 = call %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle* %15)
  store %struct.hclgevf_dev* %16, %struct.hclgevf_dev** %8, align 8
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %18 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %17, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %18, %struct.hnae3_knic_private_info** %9, align 8
  %19 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %9, align 8
  %20 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %9, align 8
  %23 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @hclgevf_update_rss_size(%struct.hnae3_handle* %25, i32 %26)
  %28 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %8, align 8
  %29 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %9, align 8
  %30 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @hclgevf_set_rss_tc_mode(%struct.hclgevf_dev* %28, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %4, align 4
  br label %107

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %84

41:                                               ; preds = %37
  %42 = load i32, i32* @HCLGEVF_RSS_IND_TBL_SIZE, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32* @kcalloc(i32 %42, i32 4, i32 %43)
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %107

50:                                               ; preds = %41
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @HCLGEVF_RSS_IND_TBL_SIZE, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %9, align 8
  %58 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = urem i32 %56, %59
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %13, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %51

68:                                               ; preds = %51
  %69 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @hclgevf_set_rss(%struct.hnae3_handle* %69, i32* %70, i32* null, i32 0)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %8, align 8
  %76 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %74, %68
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @kfree(i32* %82)
  br label %84

84:                                               ; preds = %81, %40
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %105, label %87

87:                                               ; preds = %84
  %88 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %8, align 8
  %89 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %9, align 8
  %94 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %9, align 8
  %98 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %9, align 8
  %101 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = mul i32 %99, %102
  %104 = call i32 @dev_info(i32* %91, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %95, i32 %96, i32 %103)
  br label %105

105:                                              ; preds = %87, %84
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %47, %35
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle*) #1

declare dso_local i32 @hclgevf_update_rss_size(%struct.hnae3_handle*, i32) #1

declare dso_local i32 @hclgevf_set_rss_tc_mode(%struct.hclgevf_dev*, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @hclgevf_set_rss(%struct.hnae3_handle*, i32*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
