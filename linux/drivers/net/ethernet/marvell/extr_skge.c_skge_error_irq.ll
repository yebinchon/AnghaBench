; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_error_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_error_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i32, %struct.pci_dev*, %struct.TYPE_2__** }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@B0_HWE_ISRC = common dso_local global i32 0, align 4
@IS_NO_STAT_M1 = common dso_local global i32 0, align 4
@IS_NO_TIST_M1 = common dso_local global i32 0, align 4
@RX_MFF_CTRL1 = common dso_local global i32 0, align 4
@MFF_CLR_INSTAT = common dso_local global i32 0, align 4
@IS_NO_STAT_M2 = common dso_local global i32 0, align 4
@IS_NO_TIST_M2 = common dso_local global i32 0, align 4
@RX_MFF_CTRL2 = common dso_local global i32 0, align 4
@IS_IRQ_TIST_OV = common dso_local global i32 0, align 4
@GMAC_TI_ST_CTRL = common dso_local global i32 0, align 4
@GMT_ST_CLR_IRQ = common dso_local global i32 0, align 4
@IS_RAM_RD_PAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Ram read data parity error\0A\00", align 1
@B3_RI_CTRL = common dso_local global i32 0, align 4
@RI_CLR_RD_PERR = common dso_local global i32 0, align 4
@IS_RAM_WR_PAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Ram write data parity error\0A\00", align 1
@RI_CLR_WR_PERR = common dso_local global i32 0, align 4
@IS_M1_PAR_ERR = common dso_local global i32 0, align 4
@IS_M2_PAR_ERR = common dso_local global i32 0, align 4
@IS_R1_PAR_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: receive queue parity error\0A\00", align 1
@B0_R1_CSR = common dso_local global i32 0, align 4
@CSR_IRQ_CL_P = common dso_local global i32 0, align 4
@IS_R2_PAR_ERR = common dso_local global i32 0, align 4
@B0_R2_CSR = common dso_local global i32 0, align 4
@IS_IRQ_MST_ERR = common dso_local global i32 0, align 4
@IS_IRQ_STAT = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"PCI error cmd=%#x status=%#x\0A\00", align 1
@PCI_STATUS_ERROR_BITS = common dso_local global i32 0, align 4
@B2_TST_CTRL1 = common dso_local global i32 0, align 4
@TST_CFG_WRITE_ON = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@TST_CFG_WRITE_OFF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"unable to clear error (so ignoring them)\0A\00", align 1
@IS_HW_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_hw*)* @skge_error_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_error_irq(%struct.skge_hw* %0) #0 {
  %2 = alloca %struct.skge_hw*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %2, align 8
  %7 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %8 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  %10 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %11 = load i32, i32* @B0_HWE_ISRC, align 4
  %12 = call i32 @skge_read32(%struct.skge_hw* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %14 = call i64 @is_genesis(%struct.skge_hw* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IS_NO_STAT_M1, align 4
  %19 = load i32, i32* @IS_NO_TIST_M1, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %25 = load i32, i32* @RX_MFF_CTRL1, align 4
  %26 = load i32, i32* @MFF_CLR_INSTAT, align 4
  %27 = call i32 @skge_write16(%struct.skge_hw* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %16
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @IS_NO_STAT_M2, align 4
  %31 = load i32, i32* @IS_NO_TIST_M2, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %37 = load i32, i32* @RX_MFF_CTRL2, align 4
  %38 = load i32, i32* @MFF_CLR_INSTAT, align 4
  %39 = call i32 @skge_write16(%struct.skge_hw* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %28
  br label %52

41:                                               ; preds = %1
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @IS_IRQ_TIST_OV, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %48 = load i32, i32* @GMAC_TI_ST_CTRL, align 4
  %49 = load i32, i32* @GMT_ST_CLR_IRQ, align 4
  %50 = call i32 @skge_write8(%struct.skge_hw* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %41
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @IS_RAM_RD_PAR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %62 = load i32, i32* @B3_RI_CTRL, align 4
  %63 = load i32, i32* @RI_CLR_RD_PERR, align 4
  %64 = call i32 @skge_write16(%struct.skge_hw* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %52
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @IS_RAM_WR_PAR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = call i32 (i32*, i8*, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %75 = load i32, i32* @B3_RI_CTRL, align 4
  %76 = load i32, i32* @RI_CLR_WR_PERR, align 4
  %77 = call i32 @skge_write16(%struct.skge_hw* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %70, %65
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @IS_M1_PAR_ERR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %85 = call i32 @skge_mac_parity(%struct.skge_hw* %84, i32 0)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @IS_M2_PAR_ERR, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %93 = call i32 @skge_mac_parity(%struct.skge_hw* %92, i32 1)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @IS_R1_PAR_ERR, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 0
  %102 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %103 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %104, i64 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %111 = load i32, i32* @B0_R1_CSR, align 4
  %112 = load i32, i32* @CSR_IRQ_CL_P, align 4
  %113 = call i32 @skge_write32(%struct.skge_hw* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %99, %94
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @IS_R2_PAR_ERR, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %114
  %120 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 0
  %122 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %123 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %124, i64 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32*, i8*, ...) @dev_err(i32* %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %131 = load i32, i32* @B0_R2_CSR, align 4
  %132 = load i32, i32* @CSR_IRQ_CL_P, align 4
  %133 = call i32 @skge_write32(%struct.skge_hw* %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %119, %114
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @IS_IRQ_MST_ERR, align 4
  %137 = load i32, i32* @IS_IRQ_STAT, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %135, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %196

141:                                              ; preds = %134
  %142 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %143 = load i32, i32* @PCI_COMMAND, align 4
  %144 = call i32 @pci_read_config_word(%struct.pci_dev* %142, i32 %143, i32* %6)
  %145 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %146 = load i32, i32* @PCI_STATUS, align 4
  %147 = call i32 @pci_read_config_word(%struct.pci_dev* %145, i32 %146, i32* %5)
  %148 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %149 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %148, i32 0, i32 0
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %5, align 4
  %152 = call i32 (i32*, i8*, ...) @dev_err(i32* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %150, i32 %151)
  %153 = load i32, i32* @PCI_STATUS_ERROR_BITS, align 4
  %154 = load i32, i32* %5, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %5, align 4
  %156 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %157 = load i32, i32* @B2_TST_CTRL1, align 4
  %158 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %159 = call i32 @skge_write8(%struct.skge_hw* %156, i32 %157, i32 %158)
  %160 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %161 = load i32, i32* @PCI_COMMAND, align 4
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %166 = or i32 %164, %165
  %167 = call i32 @pci_write_config_word(%struct.pci_dev* %160, i32 %161, i32 %166)
  %168 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %169 = load i32, i32* @PCI_STATUS, align 4
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @pci_write_config_word(%struct.pci_dev* %168, i32 %169, i32 %170)
  %172 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %173 = load i32, i32* @B2_TST_CTRL1, align 4
  %174 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %175 = call i32 @skge_write8(%struct.skge_hw* %172, i32 %173, i32 %174)
  %176 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %177 = load i32, i32* @B0_HWE_ISRC, align 4
  %178 = call i32 @skge_read32(%struct.skge_hw* %176, i32 %177)
  store i32 %178, i32* %4, align 4
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @IS_IRQ_STAT, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %141
  %184 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %185 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %184, i32 0, i32 1
  %186 = load %struct.pci_dev*, %struct.pci_dev** %185, align 8
  %187 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %186, i32 0, i32 0
  %188 = call i32 @dev_warn(i32* %187, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %189 = load i32, i32* @IS_HW_ERR, align 4
  %190 = xor i32 %189, -1
  %191 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %192 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %183, %141
  br label %196

196:                                              ; preds = %195, %134
  ret void
}

declare dso_local i32 @skge_read32(%struct.skge_hw*, i32) #1

declare dso_local i64 @is_genesis(%struct.skge_hw*) #1

declare dso_local i32 @skge_write16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @skge_mac_parity(%struct.skge_hw*, i32) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
