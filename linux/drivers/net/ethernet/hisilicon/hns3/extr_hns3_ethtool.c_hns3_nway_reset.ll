; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_nway_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_nway_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.hnae3_handle = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.hnae3_ae_ops* }
%struct.hnae3_ae_ops = type { i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)* }

@.str = private unnamed_addr constant [15 x i8] c"dev resetting!\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Autoneg is off, don't support to restart it\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"nway reset (using %s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hns3_nway_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_nway_reset(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.hnae3_ae_ops*, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %8)
  store %struct.hnae3_handle* %9, %struct.hnae3_handle** %4, align 8
  %10 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %11 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %13, align 8
  store %struct.hnae3_ae_ops* %14, %struct.hnae3_ae_ops** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.phy_device*, %struct.phy_device** %16, align 8
  store %struct.phy_device* %17, %struct.phy_device** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @netif_running(%struct.net_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i64 @hns3_nic_resetting(%struct.net_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @netdev_err(%struct.net_device* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %88

31:                                               ; preds = %22
  %32 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %33 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %32, i32 0, i32 0
  %34 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %33, align 8
  %35 = icmp ne i32 (%struct.hnae3_handle*)* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %38 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %37, i32 0, i32 1
  %39 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %38, align 8
  %40 = icmp ne i32 (%struct.hnae3_handle*)* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %88

44:                                               ; preds = %36
  %45 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %46 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %45, i32 0, i32 0
  %47 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %46, align 8
  %48 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %49 = call i32 %47(%struct.hnae3_handle* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @AUTONEG_ENABLE, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = call i32 @netdev_err(%struct.net_device* %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %88

58:                                               ; preds = %44
  %59 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %60 = load i32, i32* @drv, align 4
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %63 = icmp ne %struct.phy_device* %62, null
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %66 = call i32 @netif_dbg(%struct.hnae3_handle* %59, i32 %60, %struct.net_device* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %68 = icmp ne %struct.phy_device* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %71 = call i32 @genphy_restart_aneg(%struct.phy_device* %70)
  store i32 %71, i32* %2, align 4
  br label %88

72:                                               ; preds = %58
  %73 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %74 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 32
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @EOPNOTSUPP, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %88

82:                                               ; preds = %72
  %83 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %84 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %83, i32 0, i32 1
  %85 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %84, align 8
  %86 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %87 = call i32 %85(%struct.hnae3_handle* %86)
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %82, %79, %69, %53, %41, %26, %21
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @hns3_nic_resetting(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_dbg(%struct.hnae3_handle*, i32, %struct.net_device*, i8*, i8*) #1

declare dso_local i32 @genphy_restart_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
