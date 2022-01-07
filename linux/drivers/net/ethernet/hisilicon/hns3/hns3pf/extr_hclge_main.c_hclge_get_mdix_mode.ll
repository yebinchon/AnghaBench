; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_mdix_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_mdix_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.phy_device* }
%struct.phy_device = type { i32 }

@ETH_TP_MDI_INVALID = common dso_local global i32 0, align 4
@HCLGE_PHY_PAGE_REG = common dso_local global i32 0, align 4
@HCLGE_PHY_PAGE_MDIX = common dso_local global i32 0, align 4
@HCLGE_PHY_CSC_REG = common dso_local global i32 0, align 4
@HCLGE_PHY_MDIX_CTRL_M = common dso_local global i32 0, align 4
@HCLGE_PHY_MDIX_CTRL_S = common dso_local global i32 0, align 4
@HCLGE_PHY_CSS_REG = common dso_local global i32 0, align 4
@HCLGE_PHY_MDIX_STATUS_B = common dso_local global i32 0, align 4
@HCLGE_PHY_SPEED_DUP_RESOLVE_B = common dso_local global i32 0, align 4
@HCLGE_PHY_PAGE_COPPER = common dso_local global i32 0, align 4
@ETH_TP_MDI = common dso_local global i32 0, align 4
@ETH_TP_MDI_X = common dso_local global i32 0, align 4
@ETH_TP_MDI_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, i32*, i32*)* @hclge_get_mdix_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_get_mdix_mode(%struct.hnae3_handle* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hclge_vport*, align 8
  %8 = alloca %struct.hclge_dev*, align 8
  %9 = alloca %struct.phy_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %15 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %14)
  store %struct.hclge_vport* %15, %struct.hclge_vport** %7, align 8
  %16 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %17 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %16, i32 0, i32 0
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %17, align 8
  store %struct.hclge_dev* %18, %struct.hclge_dev** %8, align 8
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %20 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.phy_device*, %struct.phy_device** %22, align 8
  store %struct.phy_device* %23, %struct.phy_device** %9, align 8
  %24 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %25 = icmp ne %struct.phy_device* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ETH_TP_MDI_INVALID, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @ETH_TP_MDI_INVALID, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  br label %85

31:                                               ; preds = %3
  %32 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %33 = load i32, i32* @HCLGE_PHY_PAGE_REG, align 4
  %34 = load i32, i32* @HCLGE_PHY_PAGE_MDIX, align 4
  %35 = call i32 @phy_write(%struct.phy_device* %32, i32 %33, i32 %34)
  %36 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %37 = load i32, i32* @HCLGE_PHY_CSC_REG, align 4
  %38 = call i32 @phy_read(%struct.phy_device* %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @HCLGE_PHY_MDIX_CTRL_M, align 4
  %41 = load i32, i32* @HCLGE_PHY_MDIX_CTRL_S, align 4
  %42 = call i32 @hnae3_get_field(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %44 = load i32, i32* @HCLGE_PHY_CSS_REG, align 4
  %45 = call i32 @phy_read(%struct.phy_device* %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @HCLGE_PHY_MDIX_STATUS_B, align 4
  %48 = call i32 @hnae3_get_bit(i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @HCLGE_PHY_SPEED_DUP_RESOLVE_B, align 4
  %51 = call i32 @hnae3_get_bit(i32 %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %53 = load i32, i32* @HCLGE_PHY_PAGE_REG, align 4
  %54 = load i32, i32* @HCLGE_PHY_PAGE_COPPER, align 4
  %55 = call i32 @phy_write(%struct.phy_device* %52, i32 %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  switch i32 %56, label %66 [
    i32 0, label %57
    i32 1, label %60
    i32 3, label %63
  ]

57:                                               ; preds = %31
  %58 = load i32, i32* @ETH_TP_MDI, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  br label %69

60:                                               ; preds = %31
  %61 = load i32, i32* @ETH_TP_MDI_X, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  br label %69

63:                                               ; preds = %31
  %64 = load i32, i32* @ETH_TP_MDI_AUTO, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  br label %69

66:                                               ; preds = %31
  %67 = load i32, i32* @ETH_TP_MDI_INVALID, align 4
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %63, %60, %57
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @ETH_TP_MDI_INVALID, align 4
  %74 = load i32*, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  br label %85

75:                                               ; preds = %69
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @ETH_TP_MDI_X, align 4
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  br label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @ETH_TP_MDI, align 4
  %83 = load i32*, i32** %6, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %26, %84, %72
  ret void
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @hnae3_get_field(i32, i32, i32) #1

declare dso_local i32 @hnae3_get_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
