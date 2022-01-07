; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i8* }
%struct.hnae3_handle = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hnae3_ae_ops* }
%struct.hnae3_ae_ops = type { i32 (%struct.hnae3_handle*, i32*, i32*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@PORT_NONE = common dso_local global i8* null, align 8
@HNAE3_MODULE_TYPE_CR = common dso_local global i32 0, align 4
@PORT_DA = common dso_local global i8* null, align 8
@PORT_FIBRE = common dso_local global i8* null, align 8
@PORT_TP = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"Unknown media type\00", align 1
@ETH_MDIO_SUPPORTS_C22 = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @hns3_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca %struct.hnae3_ae_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %11)
  store %struct.hnae3_handle* %12, %struct.hnae3_handle** %6, align 8
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %14 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %16, align 8
  store %struct.hnae3_ae_ops* %17, %struct.hnae3_ae_ops** %7, align 8
  %18 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %7, align 8
  %19 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %18, i32 0, i32 0
  %20 = load i32 (%struct.hnae3_handle*, i32*, i32*)*, i32 (%struct.hnae3_handle*, i32*, i32*)** %19, align 8
  %21 = icmp ne i32 (%struct.hnae3_handle*, i32*, i32*)* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %7, align 8
  %24 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %23, i32 0, i32 0
  %25 = load i32 (%struct.hnae3_handle*, i32*, i32*)*, i32 (%struct.hnae3_handle*, i32*, i32*)** %24, align 8
  %26 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %27 = call i32 %25(%struct.hnae3_handle* %26, i32* %9, i32* %8)
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %109

31:                                               ; preds = %22
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %87 [
    i32 128, label %33
    i32 129, label %41
    i32 131, label %59
    i32 130, label %67
  ]

33:                                               ; preds = %31
  %34 = load i8*, i8** @PORT_NONE, align 8
  %35 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i8* %34, i8** %37, align 8
  %38 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %39 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %40 = call i32 @hns3_get_ksettings(%struct.hnae3_handle* %38, %struct.ethtool_link_ksettings* %39)
  br label %90

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @HNAE3_MODULE_TYPE_CR, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i8*, i8** @PORT_DA, align 8
  %47 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i8* %46, i8** %49, align 8
  br label %55

50:                                               ; preds = %41
  %51 = load i8*, i8** @PORT_FIBRE, align 8
  %52 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %53 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  store i8* %51, i8** %54, align 8
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %57 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %58 = call i32 @hns3_get_ksettings(%struct.hnae3_handle* %56, %struct.ethtool_link_ksettings* %57)
  br label %90

59:                                               ; preds = %31
  %60 = load i8*, i8** @PORT_NONE, align 8
  %61 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store i8* %60, i8** %63, align 8
  %64 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %65 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %66 = call i32 @hns3_get_ksettings(%struct.hnae3_handle* %64, %struct.ethtool_link_ksettings* %65)
  br label %90

67:                                               ; preds = %31
  %68 = load i8*, i8** @PORT_TP, align 8
  %69 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  store i8* %68, i8** %71, align 8
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %67
  %77 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %78 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %79 = call i32 @hns3_get_ksettings(%struct.hnae3_handle* %77, %struct.ethtool_link_ksettings* %78)
  br label %86

80:                                               ; preds = %67
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %85 = call i32 @phy_ethtool_ksettings_get(i32 %83, %struct.ethtool_link_ksettings* %84)
  br label %86

86:                                               ; preds = %80, %76
  br label %90

87:                                               ; preds = %31
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = call i32 @netdev_warn(%struct.net_device* %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %109

90:                                               ; preds = %86, %59, %55, %33
  %91 = load i32, i32* @ETH_MDIO_SUPPORTS_C22, align 4
  %92 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %93 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 8
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = call i32 @hns3_get_link(%struct.net_device* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %90
  %100 = load i32, i32* @SPEED_UNKNOWN, align 4
  %101 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %102 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %105 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %106 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  br label %108

108:                                              ; preds = %99, %90
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %87, %28
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

declare dso_local i32 @hns3_get_ksettings(%struct.hnae3_handle*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @phy_ethtool_ksettings_get(i32, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @hns3_get_link(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
