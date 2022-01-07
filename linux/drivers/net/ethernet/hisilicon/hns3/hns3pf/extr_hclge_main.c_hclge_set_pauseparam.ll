; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.phy_device* }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"To change autoneg please use: ethtool -s <dev> autoneg <on|off>\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@HCLGE_FC_PFC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"Priority flow control enabled. Cannot set link flow control.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i64, i64, i64)* @hclge_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_pauseparam(%struct.hnae3_handle* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hclge_vport*, align 8
  %11 = alloca %struct.hclge_dev*, align 8
  %12 = alloca %struct.phy_device*, align 8
  %13 = alloca i64, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %15 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %14)
  store %struct.hclge_vport* %15, %struct.hclge_vport** %10, align 8
  %16 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  %17 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %16, i32 0, i32 0
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %17, align 8
  store %struct.hclge_dev* %18, %struct.hclge_dev** %11, align 8
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  %20 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.phy_device*, %struct.phy_device** %22, align 8
  store %struct.phy_device* %23, %struct.phy_device** %12, align 8
  %24 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %25 = icmp ne %struct.phy_device* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %4
  %27 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %28 = call i64 @hclge_get_autoneg(%struct.hnae3_handle* %27)
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  %34 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i32 @dev_info(i32* %36, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %81

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %4
  %42 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  %43 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HCLGE_FC_PFC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  %50 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = call i32 @dev_info(i32* %52, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %81

56:                                               ; preds = %41
  %57 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @hclge_set_flowctrl_adv(%struct.hclge_dev* %57, i64 %58, i64 %59)
  %61 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @hclge_record_user_pauseparam(%struct.hclge_dev* %61, i64 %62, i64 %63)
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %56
  %68 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @hclge_cfg_pauseparam(%struct.hclge_dev* %68, i64 %69, i64 %70)
  store i32 %71, i32* %5, align 4
  br label %81

72:                                               ; preds = %56
  %73 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %74 = icmp ne %struct.phy_device* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %77 = call i32 @phy_start_aneg(%struct.phy_device* %76)
  store i32 %77, i32* %5, align 4
  br label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %75, %67, %48, %32
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i64 @hclge_get_autoneg(%struct.hnae3_handle*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @hclge_set_flowctrl_adv(%struct.hclge_dev*, i64, i64) #1

declare dso_local i32 @hclge_record_user_pauseparam(%struct.hclge_dev*, i64, i64) #1

declare dso_local i32 @hclge_cfg_pauseparam(%struct.hclge_dev*, i64, i64) #1

declare dso_local i32 @phy_start_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
