; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.marvell_nfc = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"marvell,system-controller\00", align 1
@GENCONF_SOC_DEVICE_MUX = common dso_local global i32 0, align 4
@GENCONF_SOC_DEVICE_MUX_NFC_EN = common dso_local global i32 0, align 4
@GENCONF_SOC_DEVICE_MUX_ECC_CLK_RST = common dso_local global i32 0, align 4
@GENCONF_SOC_DEVICE_MUX_ECC_CORE_RST = common dso_local global i32 0, align 4
@GENCONF_SOC_DEVICE_MUX_NFC_INT_EN = common dso_local global i32 0, align 4
@GENCONF_CLK_GATING_CTRL = common dso_local global i32 0, align 4
@GENCONF_CLK_GATING_CTRL_ND_GATE = common dso_local global i32 0, align 4
@GENCONF_ND_CLK_CTRL = common dso_local global i32 0, align 4
@GENCONF_ND_CLK_CTRL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.marvell_nfc*)* @marvell_nfc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_init(%struct.marvell_nfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.marvell_nfc*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.regmap*, align 8
  store %struct.marvell_nfc* %0, %struct.marvell_nfc** %3, align 8
  %6 = load %struct.marvell_nfc*, %struct.marvell_nfc** %3, align 8
  %7 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.marvell_nfc*, %struct.marvell_nfc** %3, align 8
  %12 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.regmap* %19, %struct.regmap** %5, align 8
  %20 = load %struct.regmap*, %struct.regmap** %5, align 8
  %21 = call i64 @IS_ERR(%struct.regmap* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.regmap*, %struct.regmap** %5, align 8
  %25 = call i32 @PTR_ERR(%struct.regmap* %24)
  store i32 %25, i32* %2, align 4
  br label %60

26:                                               ; preds = %17
  %27 = load %struct.regmap*, %struct.regmap** %5, align 8
  %28 = load i32, i32* @GENCONF_SOC_DEVICE_MUX, align 4
  %29 = load i32, i32* @GENCONF_SOC_DEVICE_MUX_NFC_EN, align 4
  %30 = load i32, i32* @GENCONF_SOC_DEVICE_MUX_ECC_CLK_RST, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @GENCONF_SOC_DEVICE_MUX_ECC_CORE_RST, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @GENCONF_SOC_DEVICE_MUX_NFC_INT_EN, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @regmap_write(%struct.regmap* %27, i32 %28, i32 %35)
  %37 = load %struct.regmap*, %struct.regmap** %5, align 8
  %38 = load i32, i32* @GENCONF_CLK_GATING_CTRL, align 4
  %39 = load i32, i32* @GENCONF_CLK_GATING_CTRL_ND_GATE, align 4
  %40 = load i32, i32* @GENCONF_CLK_GATING_CTRL_ND_GATE, align 4
  %41 = call i32 @regmap_update_bits(%struct.regmap* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.regmap*, %struct.regmap** %5, align 8
  %43 = load i32, i32* @GENCONF_ND_CLK_CTRL, align 4
  %44 = load i32, i32* @GENCONF_ND_CLK_CTRL_EN, align 4
  %45 = load i32, i32* @GENCONF_ND_CLK_CTRL_EN, align 4
  %46 = call i32 @regmap_update_bits(%struct.regmap* %42, i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %26, %1
  %48 = load %struct.marvell_nfc*, %struct.marvell_nfc** %3, align 8
  %49 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load %struct.marvell_nfc*, %struct.marvell_nfc** %3, align 8
  %56 = call i32 @marvell_nfc_init_dma(%struct.marvell_nfc* %55)
  br label %57

57:                                               ; preds = %54, %47
  %58 = load %struct.marvell_nfc*, %struct.marvell_nfc** %3, align 8
  %59 = call i32 @marvell_nfc_reset(%struct.marvell_nfc* %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %23
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @marvell_nfc_init_dma(%struct.marvell_nfc*) #1

declare dso_local i32 @marvell_nfc_reset(%struct.marvell_nfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
