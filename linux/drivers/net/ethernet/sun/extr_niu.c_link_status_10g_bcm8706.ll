; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_link_status_10g_bcm8706.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_link_status_10g_bcm8706.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BCM8704_PMA_PMD_DEV_ADDR = common dso_local global i32 0, align 4
@BCM8704_PMD_RCV_SIGDET = common dso_local global i32 0, align 4
@PMD_RCV_SIGDET_GLOBAL = common dso_local global i32 0, align 4
@BCM8704_PCS_DEV_ADDR = common dso_local global i32 0, align 4
@BCM8704_PCS_10G_R_STATUS = common dso_local global i32 0, align 4
@PCS_10G_R_STATUS_BLK_LOCK = common dso_local global i32 0, align 4
@BCM8704_PHYXS_DEV_ADDR = common dso_local global i32 0, align 4
@BCM8704_PHYXS_XGXS_LANE_STAT = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_ALINGED = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_MAGIC = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_PATTEST = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_LANE3 = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_LANE2 = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_LANE1 = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_LANE0 = common dso_local global i32 0, align 4
@SPEED_INVALID = common dso_local global i32 0, align 4
@DUPLEX_INVALID = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32*)* @link_status_10g_bcm8706 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_status_10g_bcm8706(%struct.niu* %0, i32* %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.niu*, %struct.niu** %3, align 8
  %8 = load %struct.niu*, %struct.niu** %3, align 8
  %9 = getelementptr inbounds %struct.niu, %struct.niu* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BCM8704_PMA_PMD_DEV_ADDR, align 4
  %12 = load i32, i32* @BCM8704_PMD_RCV_SIGDET, align 4
  %13 = call i32 @mdio_read(%struct.niu* %7, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 65535
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  br label %88

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PMD_RCV_SIGDET_GLOBAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %88

26:                                               ; preds = %20
  %27 = load %struct.niu*, %struct.niu** %3, align 8
  %28 = load %struct.niu*, %struct.niu** %3, align 8
  %29 = getelementptr inbounds %struct.niu, %struct.niu* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BCM8704_PCS_DEV_ADDR, align 4
  %32 = load i32, i32* @BCM8704_PCS_10G_R_STATUS, align 4
  %33 = call i32 @mdio_read(%struct.niu* %27, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %88

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PCS_10G_R_STATUS_BLK_LOCK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %88

43:                                               ; preds = %37
  %44 = load %struct.niu*, %struct.niu** %3, align 8
  %45 = load %struct.niu*, %struct.niu** %3, align 8
  %46 = getelementptr inbounds %struct.niu, %struct.niu* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BCM8704_PHYXS_DEV_ADDR, align 4
  %49 = load i32, i32* @BCM8704_PHYXS_XGXS_LANE_STAT, align 4
  %50 = call i32 @mdio_read(%struct.niu* %44, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %88

54:                                               ; preds = %43
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @PHYXS_XGXS_LANE_STAT_ALINGED, align 4
  %57 = load i32, i32* @PHYXS_XGXS_LANE_STAT_MAGIC, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @PHYXS_XGXS_LANE_STAT_PATTEST, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @PHYXS_XGXS_LANE_STAT_LANE3, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @PHYXS_XGXS_LANE_STAT_LANE2, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @PHYXS_XGXS_LANE_STAT_LANE1, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @PHYXS_XGXS_LANE_STAT_LANE0, align 4
  %68 = or i32 %66, %67
  %69 = icmp ne i32 %55, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  %71 = load i32, i32* @SPEED_INVALID, align 4
  %72 = load %struct.niu*, %struct.niu** %3, align 8
  %73 = getelementptr inbounds %struct.niu, %struct.niu* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @DUPLEX_INVALID, align 4
  %76 = load %struct.niu*, %struct.niu** %3, align 8
  %77 = getelementptr inbounds %struct.niu, %struct.niu* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  br label %88

79:                                               ; preds = %54
  store i32 1, i32* %6, align 4
  %80 = load i32, i32* @SPEED_10000, align 4
  %81 = load %struct.niu*, %struct.niu** %3, align 8
  %82 = getelementptr inbounds %struct.niu, %struct.niu* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @DUPLEX_FULL, align 4
  %85 = load %struct.niu*, %struct.niu** %3, align 8
  %86 = getelementptr inbounds %struct.niu, %struct.niu* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %79, %70, %53, %42, %36, %25, %19
  %89 = load i32, i32* %6, align 4
  %90 = load i32*, i32** %4, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @mdio_read(%struct.niu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
