; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_sfp_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_sfp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mac = type { i8*, i32, i32, i32, i8*, i8*, i8* }
%struct.hclge_sfp_info_cmd = type { i32, i32, i32, i64, i64, i64, i8* }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_GET_SFP_INFO = common dso_local global i32 0, align 4
@QUERY_ACTIVE_SPEED = common dso_local global i8* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"IMP does not support get SFP info %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"get sfp info failed %d\0A\00", align 1
@QUERY_SFP_SPEED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.hclge_mac*)* @hclge_get_sfp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_sfp_info(%struct.hclge_dev* %0, %struct.hclge_mac* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca %struct.hclge_mac*, align 8
  %6 = alloca %struct.hclge_sfp_info_cmd*, align 8
  %7 = alloca %struct.hclge_desc, align 8
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store %struct.hclge_mac* %1, %struct.hclge_mac** %5, align 8
  %9 = load i32, i32* @HCLGE_OPC_GET_SFP_INFO, align 4
  %10 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %9, i32 1)
  %11 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.hclge_sfp_info_cmd*
  store %struct.hclge_sfp_info_cmd* %13, %struct.hclge_sfp_info_cmd** %6, align 8
  %14 = load i8*, i8** @QUERY_ACTIVE_SPEED, align 8
  %15 = load %struct.hclge_sfp_info_cmd*, %struct.hclge_sfp_info_cmd** %6, align 8
  %16 = getelementptr inbounds %struct.hclge_sfp_info_cmd, %struct.hclge_sfp_info_cmd* %15, i32 0, i32 6
  store i8* %14, i8** %16, align 8
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %18 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %17, i32 0, i32 1
  %19 = call i32 @hclge_cmd_send(i32* %18, %struct.hclge_desc* %7, i32 1)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %26 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @dev_warn(i32* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %101

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %37 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %101

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.hclge_sfp_info_cmd*, %struct.hclge_sfp_info_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.hclge_sfp_info_cmd, %struct.hclge_sfp_info_cmd* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = call i8* @le32_to_cpu(i64 %47)
  %49 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %50 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  %51 = load %struct.hclge_sfp_info_cmd*, %struct.hclge_sfp_info_cmd** %6, align 8
  %52 = getelementptr inbounds %struct.hclge_sfp_info_cmd, %struct.hclge_sfp_info_cmd* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %44
  %56 = load %struct.hclge_sfp_info_cmd*, %struct.hclge_sfp_info_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.hclge_sfp_info_cmd, %struct.hclge_sfp_info_cmd* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = call i8* @le32_to_cpu(i64 %58)
  %60 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %61 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load %struct.hclge_sfp_info_cmd*, %struct.hclge_sfp_info_cmd** %6, align 8
  %63 = getelementptr inbounds %struct.hclge_sfp_info_cmd, %struct.hclge_sfp_info_cmd* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @le32_to_cpu(i64 %64)
  %66 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %67 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load %struct.hclge_sfp_info_cmd*, %struct.hclge_sfp_info_cmd** %6, align 8
  %69 = getelementptr inbounds %struct.hclge_sfp_info_cmd, %struct.hclge_sfp_info_cmd* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %72 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.hclge_sfp_info_cmd*, %struct.hclge_sfp_info_cmd** %6, align 8
  %74 = getelementptr inbounds %struct.hclge_sfp_info_cmd, %struct.hclge_sfp_info_cmd* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %77 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i8*, i8** @QUERY_ACTIVE_SPEED, align 8
  %79 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %80 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.hclge_sfp_info_cmd*, %struct.hclge_sfp_info_cmd** %6, align 8
  %82 = getelementptr inbounds %struct.hclge_sfp_info_cmd, %struct.hclge_sfp_info_cmd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %55
  %86 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %87 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %86, i32 0, i32 1
  store i32 0, i32* %87, align 8
  br label %95

88:                                               ; preds = %55
  %89 = load %struct.hclge_sfp_info_cmd*, %struct.hclge_sfp_info_cmd** %6, align 8
  %90 = getelementptr inbounds %struct.hclge_sfp_info_cmd, %struct.hclge_sfp_info_cmd* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @BIT(i32 %91)
  %93 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %94 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %88, %85
  br label %100

96:                                               ; preds = %44
  %97 = load i8*, i8** @QUERY_SFP_SPEED, align 8
  %98 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %99 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %96, %95
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %35, %24
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
