; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_power_aux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_power_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i64, i64, i32 }

@CHIP_ID_YUKON_XL = common dso_local global i64 0, align 8
@CHIP_REV_YU_XL_A1 = common dso_local global i64 0, align 8
@B2_Y2_CLK_GATE = common dso_local global i32 0, align 4
@Y2_PCI_CLK_LNK1_DIS = common dso_local global i32 0, align 4
@Y2_COR_CLK_LNK1_DIS = common dso_local global i32 0, align 4
@Y2_CLK_GAT_LNK1_DIS = common dso_local global i32 0, align 4
@Y2_PCI_CLK_LNK2_DIS = common dso_local global i32 0, align 4
@Y2_COR_CLK_LNK2_DIS = common dso_local global i32 0, align 4
@Y2_CLK_GAT_LNK2_DIS = common dso_local global i32 0, align 4
@B0_CTST = common dso_local global i32 0, align 4
@Y2_VAUX_AVAIL = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i32 0, align 4
@B0_POWER_CTRL = common dso_local global i32 0, align 4
@PC_VAUX_ENA = common dso_local global i32 0, align 4
@PC_VCC_ENA = common dso_local global i32 0, align 4
@PC_VAUX_ON = common dso_local global i32 0, align 4
@PC_VCC_OFF = common dso_local global i32 0, align 4
@Y2_LED_STAT_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*)* @sky2_power_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_power_aux(%struct.sky2_hw* %0) #0 {
  %2 = alloca %struct.sky2_hw*, align 8
  store %struct.sky2_hw* %0, %struct.sky2_hw** %2, align 8
  %3 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %4 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %10 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHIP_REV_YU_XL_A1, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %16 = load i32, i32* @B2_Y2_CLK_GATE, align 4
  %17 = call i32 @sky2_write8(%struct.sky2_hw* %15, i32 %16, i32 0)
  br label %33

18:                                               ; preds = %8, %1
  %19 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %20 = load i32, i32* @B2_Y2_CLK_GATE, align 4
  %21 = load i32, i32* @Y2_PCI_CLK_LNK1_DIS, align 4
  %22 = load i32, i32* @Y2_COR_CLK_LNK1_DIS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @Y2_CLK_GAT_LNK1_DIS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @Y2_PCI_CLK_LNK2_DIS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @Y2_COR_CLK_LNK2_DIS, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @Y2_CLK_GAT_LNK2_DIS, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @sky2_write8(%struct.sky2_hw* %19, i32 %20, i32 %31)
  br label %33

33:                                               ; preds = %18, %14
  %34 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %35 = load i32, i32* @B0_CTST, align 4
  %36 = call i32 @sky2_read32(%struct.sky2_hw* %34, i32 %35)
  %37 = load i32, i32* @Y2_VAUX_AVAIL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %33
  %41 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %42 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PCI_D3cold, align 4
  %45 = call i64 @pci_pme_capable(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %49 = load i32, i32* @B0_POWER_CTRL, align 4
  %50 = load i32, i32* @PC_VAUX_ENA, align 4
  %51 = load i32, i32* @PC_VCC_ENA, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @PC_VAUX_ON, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @PC_VCC_OFF, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @sky2_write8(%struct.sky2_hw* %48, i32 %49, i32 %56)
  br label %58

58:                                               ; preds = %47, %40, %33
  %59 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %60 = load i32, i32* @B0_CTST, align 4
  %61 = load i32, i32* @Y2_LED_STAT_OFF, align 4
  %62 = call i32 @sky2_write16(%struct.sky2_hw* %59, i32 %60, i32 %61)
  ret void
}

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i64 @pci_pme_capable(i32, i32) #1

declare dso_local i32 @sky2_write16(%struct.sky2_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
