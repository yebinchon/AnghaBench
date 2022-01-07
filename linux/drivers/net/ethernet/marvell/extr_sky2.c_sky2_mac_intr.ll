; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_mac_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_mac_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { %struct.net_device** }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sky2_port = type { i32 }

@GMAC_IRQ_SRC = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"mac interrupt status 0x%x\0A\00", align 1
@GM_IS_RX_CO_OV = common dso_local global i32 0, align 4
@GM_RX_IRQ_SRC = common dso_local global i32 0, align 4
@GM_IS_TX_CO_OV = common dso_local global i32 0, align 4
@GM_TX_IRQ_SRC = common dso_local global i32 0, align 4
@GM_IS_RX_FF_OR = common dso_local global i32 0, align 4
@RX_GMF_CTRL_T = common dso_local global i32 0, align 4
@GMF_CLI_RX_FO = common dso_local global i32 0, align 4
@GM_IS_TX_FF_UR = common dso_local global i32 0, align 4
@TX_GMF_CTRL_T = common dso_local global i32 0, align 4
@GMF_CLI_TX_FU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*, i32)* @sky2_mac_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_mac_intr(%struct.sky2_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sky2_port*, align 8
  %7 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %9 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %8, i32 0, i32 0
  %10 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.net_device*, %struct.net_device** %10, i64 %12
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %15)
  store %struct.sky2_port* %16, %struct.sky2_port** %6, align 8
  %17 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @GMAC_IRQ_SRC, align 4
  %20 = call i32 @SK_REG(i32 %18, i32 %19)
  %21 = call i32 @sky2_read8(%struct.sky2_hw* %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %23 = load i32, i32* @intr, align 4
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @netif_info(%struct.sky2_port* %22, i32 %23, %struct.net_device* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @GM_IS_RX_CO_OV, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @GM_RX_IRQ_SRC, align 4
  %35 = call i32 @gma_read16(%struct.sky2_hw* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %2
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @GM_IS_TX_CO_OV, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @GM_TX_IRQ_SRC, align 4
  %45 = call i32 @gma_read16(%struct.sky2_hw* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @GM_IS_RX_FF_OR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %60 = call i32 @SK_REG(i32 %58, i32 %59)
  %61 = load i32, i32* @GMF_CLI_RX_FO, align 4
  %62 = call i32 @sky2_write8(%struct.sky2_hw* %57, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %51, %46
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @GM_IS_TX_FF_UR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %77 = call i32 @SK_REG(i32 %75, i32 %76)
  %78 = load i32, i32* @GMF_CLI_TX_FU, align 4
  %79 = call i32 @sky2_write8(%struct.sky2_hw* %74, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %68, %63
  ret void
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sky2_read8(%struct.sky2_hw*, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @netif_info(%struct.sky2_port*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @gma_read16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
