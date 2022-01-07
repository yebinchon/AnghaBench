; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_bcom_phy_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_bcom_phy_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { i32, i32, %struct.skge_hw* }
%struct.skge_hw = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@PHY_BCOM_INT_STAT = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"phy interrupt status 0x%x\0A\00", align 1
@PHY_B_IS_PSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: uncorrectable pair swap error\0A\00", align 1
@PHY_B_IS_NO_HDCL = common dso_local global i32 0, align 4
@PHY_BCOM_CTRL = common dso_local global i32 0, align 4
@PHY_CT_LOOP = common dso_local global i32 0, align 4
@PHY_B_IS_AN_PR = common dso_local global i32 0, align 4
@PHY_B_IS_LST_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*)* @bcom_phy_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcom_phy_intr(%struct.skge_port* %0) #0 {
  %2 = alloca %struct.skge_port*, align 8
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.skge_port* %0, %struct.skge_port** %2, align 8
  %7 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %8 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %7, i32 0, i32 2
  %9 = load %struct.skge_hw*, %struct.skge_hw** %8, align 8
  store %struct.skge_hw* %9, %struct.skge_hw** %3, align 8
  %10 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %11 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PHY_BCOM_INT_STAT, align 4
  %16 = call i32 @xm_phy_read(%struct.skge_hw* %13, i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %18 = load i32, i32* @intr, align 4
  %19 = load i32, i32* @KERN_DEBUG, align 4
  %20 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %21 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @netif_printk(%struct.skge_port* %17, i32 %18, i32 %19, i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PHY_B_IS_PSE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %1
  %30 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %31 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %29, %1
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @PHY_B_IS_NO_HDCL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PHY_BCOM_CTRL, align 4
  %49 = call i32 @xm_phy_read(%struct.skge_hw* %46, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @PHY_BCOM_CTRL, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @PHY_CT_LOOP, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @xm_phy_write(%struct.skge_hw* %50, i32 %51, i32 %52, i32 %55)
  %57 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @PHY_BCOM_CTRL, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @PHY_CT_LOOP, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = call i32 @xm_phy_write(%struct.skge_hw* %57, i32 %58, i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %45, %40
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @PHY_B_IS_AN_PR, align 4
  %68 = load i32, i32* @PHY_B_IS_LST_CHANGE, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @bcom_check_link(%struct.skge_hw* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %65
  ret void
}

declare dso_local i32 @xm_phy_read(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @netif_printk(%struct.skge_port*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @xm_phy_write(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @bcom_check_link(%struct.skge_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
