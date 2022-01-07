; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_reset_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_reset_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i64, i32, i32, i32 }

@BNX2_DRV_MSG_DATA_WAIT0 = common dso_local global i32 0, align 4
@BNX2_DRV_RESET_SIGNATURE = common dso_local global i32 0, align 4
@BNX2_DRV_RESET_SIGNATURE_MAGIC = common dso_local global i32 0, align 4
@BNX2_MISC_ID = common dso_local global i32 0, align 4
@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@BNX2_MISC_COMMAND = common dso_local global i32 0, align 4
@BNX2_MISC_COMMAND_SW_RESET = common dso_local global i32 0, align 4
@BNX2_PCICFG_MISC_CONFIG_REG_WINDOW_ENA = common dso_local global i32 0, align 4
@BNX2_PCICFG_MISC_CONFIG_TARGET_MB_WORD_SWAP = common dso_local global i32 0, align 4
@BNX2_PCICFG_MISC_CONFIG = common dso_local global i32 0, align 4
@BNX2_PCICFG_MISC_CONFIG_CORE_RST_REQ = common dso_local global i32 0, align 4
@BNX2_CHIP_ID_5706_A0 = common dso_local global i64 0, align 8
@BNX2_CHIP_ID_5706_A1 = common dso_local global i64 0, align 8
@BNX2_PCICFG_MISC_CONFIG_CORE_RST_BSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Chip reset did not complete\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BNX2_PCI_SWAP_DIAG0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Chip not in correct endian mode\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_DATA_WAIT1 = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_REMOTE_PHY_CAP = common dso_local global i32 0, align 4
@BNX2_MISC_VREG_CONTROL = common dso_local global i32 0, align 4
@BNX2_FLAG_USING_MSIX = common dso_local global i32 0, align 4
@BNX2_MISC_ECO_HW_CTL = common dso_local global i32 0, align 4
@BNX2_MISC_ECO_HW_CTL_LARGE_GRC_TMOUT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, i32)* @bnx2_reset_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_reset_chip(%struct.bnx2* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.bnx2* %0, %struct.bnx2** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %11 = call i32 @bnx2_wait_dma_complete(%struct.bnx2* %10)
  %12 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %13 = load i32, i32* @BNX2_DRV_MSG_DATA_WAIT0, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @bnx2_fw_sync(%struct.bnx2* %12, i32 %15, i32 1, i32 1)
  %17 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %18 = load i32, i32* @BNX2_DRV_RESET_SIGNATURE, align 4
  %19 = load i32, i32* @BNX2_DRV_RESET_SIGNATURE_MAGIC, align 4
  %20 = call i32 @bnx2_shmem_wr(%struct.bnx2* %17, i32 %18, i32 %19)
  %21 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %22 = load i32, i32* @BNX2_MISC_ID, align 4
  %23 = call i32 @BNX2_RD(%struct.bnx2* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %25 = call i64 @BNX2_CHIP(%struct.bnx2* %24)
  %26 = load i64, i64* @BNX2_CHIP_5709, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %2
  %29 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %30 = load i32, i32* @BNX2_MISC_COMMAND, align 4
  %31 = load i32, i32* @BNX2_MISC_COMMAND_SW_RESET, align 4
  %32 = call i32 @BNX2_WR(%struct.bnx2* %29, i32 %30, i32 %31)
  %33 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %34 = load i32, i32* @BNX2_MISC_COMMAND, align 4
  %35 = call i32 @BNX2_RD(%struct.bnx2* %33, i32 %34)
  %36 = call i32 @udelay(i32 5)
  %37 = load i32, i32* @BNX2_PCICFG_MISC_CONFIG_REG_WINDOW_ENA, align 4
  %38 = load i32, i32* @BNX2_PCICFG_MISC_CONFIG_TARGET_MB_WORD_SWAP, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %41 = load i32, i32* @BNX2_PCICFG_MISC_CONFIG, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @BNX2_WR(%struct.bnx2* %40, i32 %41, i32 %42)
  br label %97

44:                                               ; preds = %2
  %45 = load i32, i32* @BNX2_PCICFG_MISC_CONFIG_CORE_RST_REQ, align 4
  %46 = load i32, i32* @BNX2_PCICFG_MISC_CONFIG_REG_WINDOW_ENA, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @BNX2_PCICFG_MISC_CONFIG_TARGET_MB_WORD_SWAP, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %6, align 4
  %50 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %51 = load i32, i32* @BNX2_PCICFG_MISC_CONFIG, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @BNX2_WR(%struct.bnx2* %50, i32 %51, i32 %52)
  %54 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %55 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %54)
  %56 = load i64, i64* @BNX2_CHIP_ID_5706_A0, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %44
  %59 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %60 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %59)
  %61 = load i64, i64* @BNX2_CHIP_ID_5706_A1, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58, %44
  %64 = call i32 @msleep(i32 20)
  br label %65

65:                                               ; preds = %63, %58
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %82, %65
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 10
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %71 = load i32, i32* @BNX2_PCICFG_MISC_CONFIG, align 4
  %72 = call i32 @BNX2_RD(%struct.bnx2* %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @BNX2_PCICFG_MISC_CONFIG_CORE_RST_REQ, align 4
  %75 = load i32, i32* @BNX2_PCICFG_MISC_CONFIG_CORE_RST_BSY, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %85

80:                                               ; preds = %69
  %81 = call i32 @udelay(i32 10)
  br label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %66

85:                                               ; preds = %79, %66
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @BNX2_PCICFG_MISC_CONFIG_CORE_RST_REQ, align 4
  %88 = load i32, i32* @BNX2_PCICFG_MISC_CONFIG_CORE_RST_BSY, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %171

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %28
  %98 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %99 = load i32, i32* @BNX2_PCI_SWAP_DIAG0, align 4
  %100 = call i32 @BNX2_RD(%struct.bnx2* %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 16909060
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* @ENODEV, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %171

107:                                              ; preds = %97
  %108 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %109 = load i32, i32* @BNX2_DRV_MSG_DATA_WAIT1, align 4
  %110 = load i32, i32* %5, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @bnx2_fw_sync(%struct.bnx2* %108, i32 %111, i32 1, i32 0)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %3, align 4
  br label %171

117:                                              ; preds = %107
  %118 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %119 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %118, i32 0, i32 3
  %120 = call i32 @spin_lock_bh(i32* %119)
  %121 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %122 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %9, align 8
  %124 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %125 = call i32 @bnx2_init_fw_cap(%struct.bnx2* %124)
  %126 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %127 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @BNX2_PHY_FLAG_REMOTE_PHY_CAP, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %117
  %133 = load i64, i64* %9, align 8
  %134 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %135 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %133, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %140 = call i32 @bnx2_set_default_remote_link(%struct.bnx2* %139)
  br label %141

141:                                              ; preds = %138, %132, %117
  %142 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %143 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %142, i32 0, i32 3
  %144 = call i32 @spin_unlock_bh(i32* %143)
  %145 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %146 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %145)
  %147 = load i64, i64* @BNX2_CHIP_ID_5706_A0, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %141
  %150 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %151 = load i32, i32* @BNX2_MISC_VREG_CONTROL, align 4
  %152 = call i32 @BNX2_WR(%struct.bnx2* %150, i32 %151, i32 250)
  %153 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %154 = call i32 @bnx2_alloc_bad_rbuf(%struct.bnx2* %153)
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %149, %141
  %156 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %157 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @BNX2_FLAG_USING_MSIX, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %155
  %163 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %164 = call i32 @bnx2_setup_msix_tbl(%struct.bnx2* %163)
  %165 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %166 = load i32, i32* @BNX2_MISC_ECO_HW_CTL, align 4
  %167 = load i32, i32* @BNX2_MISC_ECO_HW_CTL_LARGE_GRC_TMOUT_EN, align 4
  %168 = call i32 @BNX2_WR(%struct.bnx2* %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %162, %155
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %169, %115, %103, %92
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @bnx2_wait_dma_complete(%struct.bnx2*) #1

declare dso_local i32 @bnx2_fw_sync(%struct.bnx2*, i32, i32, i32) #1

declare dso_local i32 @bnx2_shmem_wr(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @BNX2_CHIP_ID(%struct.bnx2*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @bnx2_init_fw_cap(%struct.bnx2*) #1

declare dso_local i32 @bnx2_set_default_remote_link(%struct.bnx2*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @bnx2_alloc_bad_rbuf(%struct.bnx2*) #1

declare dso_local i32 @bnx2_setup_msix_tbl(%struct.bnx2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
