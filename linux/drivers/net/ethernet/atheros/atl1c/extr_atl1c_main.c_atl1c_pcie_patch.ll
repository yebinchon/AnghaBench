; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_pcie_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_pcie_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i64, i64 }

@REG_MASTER_CTRL = common dso_local global i32 0, align 4
@MASTER_CTRL_CLK_SEL_DIS = common dso_local global i32 0, align 4
@athr_l1c = common dso_local global i64 0, align 8
@athr_l2c = common dso_local global i64 0, align 8
@REG_PCIE_PHYMISC = common dso_local global i32 0, align 4
@PCIE_PHYMISC_FORCE_RCV_DET = common dso_local global i32 0, align 4
@MASTER_CTRL_WAKEN_25M = common dso_local global i32 0, align 4
@athr_l2c_b = common dso_local global i64 0, align 8
@L2CB_V10 = common dso_local global i64 0, align 8
@REG_PCIE_PHYMISC2 = common dso_local global i32 0, align 4
@PCIE_PHYMISC2_CDR_BW = common dso_local global i32 0, align 4
@L2CB1_PCIE_PHYMISC2_CDR_BW = common dso_local global i32 0, align 4
@PCIE_PHYMISC2_L0S_TH = common dso_local global i32 0, align 4
@L2CB1_PCIE_PHYMISC2_L0S_TH = common dso_local global i32 0, align 4
@REG_LINK_CTRL = common dso_local global i32 0, align 4
@LINK_CTRL_EXT_SYNC = common dso_local global i32 0, align 4
@athr_l1d = common dso_local global i64 0, align 8
@REG_PM_CTRL = common dso_local global i32 0, align 4
@PM_CTRL_L0S_BUFSRX_EN = common dso_local global i32 0, align 4
@REG_DMA_DBG = common dso_local global i32 0, align 4
@DMA_DBG_VENDOR_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_hw*)* @atl1c_pcie_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_pcie_patch(%struct.atl1c_hw* %0) #0 {
  %2 = alloca %struct.atl1c_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %2, align 8
  %5 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %6 = load i32, i32* @REG_MASTER_CTRL, align 4
  %7 = call i32 @AT_READ_REG(%struct.atl1c_hw* %5, i32 %6, i32* %3)
  %8 = load i32, i32* @MASTER_CTRL_CLK_SEL_DIS, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %13 = load i32, i32* @REG_MASTER_CTRL, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %12, i32 %13, i32 %14)
  %16 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %17 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @athr_l1c, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %23 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @athr_l2c, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21, %1
  %28 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %29 = load i32, i32* @REG_PCIE_PHYMISC, align 4
  %30 = call i32 @AT_READ_REG(%struct.atl1c_hw* %28, i32 %29, i32* %4)
  %31 = load i32, i32* @PCIE_PHYMISC_FORCE_RCV_DET, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %35 = load i32, i32* @REG_PCIE_PHYMISC, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %34, i32 %35, i32 %36)
  br label %51

38:                                               ; preds = %21
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @MASTER_CTRL_WAKEN_25M, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %45 = load i32, i32* @REG_MASTER_CTRL, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @MASTER_CTRL_WAKEN_25M, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %44, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %43, %38
  br label %51

51:                                               ; preds = %50, %27
  %52 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %53 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @athr_l2c_b, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %51
  %58 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %59 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @L2CB_V10, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %57
  %64 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %65 = load i32, i32* @REG_PCIE_PHYMISC2, align 4
  %66 = call i32 @AT_READ_REG(%struct.atl1c_hw* %64, i32 %65, i32* %4)
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @PCIE_PHYMISC2_CDR_BW, align 4
  %69 = load i32, i32* @L2CB1_PCIE_PHYMISC2_CDR_BW, align 4
  %70 = call i32 @FIELD_SETX(i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @PCIE_PHYMISC2_L0S_TH, align 4
  %73 = load i32, i32* @L2CB1_PCIE_PHYMISC2_L0S_TH, align 4
  %74 = call i32 @FIELD_SETX(i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %76 = load i32, i32* @REG_PCIE_PHYMISC2, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %75, i32 %76, i32 %77)
  %79 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %80 = load i32, i32* @REG_LINK_CTRL, align 4
  %81 = call i32 @AT_READ_REG(%struct.atl1c_hw* %79, i32 %80, i32* %4)
  %82 = load i32, i32* @LINK_CTRL_EXT_SYNC, align 4
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  %85 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %86 = load i32, i32* @REG_LINK_CTRL, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %63, %57, %51
  %90 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %91 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @athr_l2c_b, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %97 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @athr_l1d, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %95, %89
  %102 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %103 = load i32, i32* @REG_PM_CTRL, align 4
  %104 = call i32 @AT_READ_REG(%struct.atl1c_hw* %102, i32 %103, i32* %4)
  %105 = load i32, i32* @PM_CTRL_L0S_BUFSRX_EN, align 4
  %106 = load i32, i32* %4, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %109 = load i32, i32* @REG_PM_CTRL, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %108, i32 %109, i32 %110)
  %112 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %113 = load i32, i32* @REG_DMA_DBG, align 4
  %114 = call i32 @AT_READ_REG(%struct.atl1c_hw* %112, i32 %113, i32* %4)
  %115 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %116 = load i32, i32* @REG_DMA_DBG, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @DMA_DBG_VENDOR_MSG, align 4
  %119 = xor i32 %118, -1
  %120 = and i32 %117, %119
  %121 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %115, i32 %116, i32 %120)
  br label %122

122:                                              ; preds = %101, %95
  ret void
}

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i32 @FIELD_SETX(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
