; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c_sdhci_pci_o2_probe_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c_sdhci_pci_o2_probe_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_slot = type { %struct.sdhci_host*, %struct.sdhci_pci_chip* }
%struct.sdhci_host = type { %struct.TYPE_5__, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sdhci_pci_chip = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.o2_host = type { i64 }

@SDHCI_CAPABILITIES = common dso_local global i32 0, align 4
@SDHCI_CAN_DO_8BIT = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@O2_SD_VENDOR_SETTING = common dso_local global i32 0, align 4
@SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12 = common dso_local global i32 0, align 4
@O2_SD_MISC_SETTING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%s: emmc 1.8v flag is set, force 1.8v signaling voltage\0A\00", align 1
@SDHCI_SIGNALING_330 = common dso_local global i32 0, align 4
@SDHCI_SIGNALING_180 = common dso_local global i32 0, align 4
@MMC_CAP2_NO_SD = common dso_local global i32 0, align 4
@MMC_CAP2_NO_SDIO = common dso_local global i32 0, align 4
@O2_SD_DETECT_SETTING = common dso_local global i32 0, align 4
@sdhci_o2_get_cd = common dso_local global i32 0, align 4
@sdhci_o2_execute_tuning = common dso_local global i32 0, align 4
@O2_SD_VENDOR_SETTING2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdhci_pci_o2_probe_slot(%struct.sdhci_pci_slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_pci_slot*, align 8
  %4 = alloca %struct.sdhci_pci_chip*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.o2_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdhci_pci_slot* %0, %struct.sdhci_pci_slot** %3, align 8
  %10 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %11 = call %struct.o2_host* @sdhci_pci_priv(%struct.sdhci_pci_slot* %10)
  store %struct.o2_host* %11, %struct.o2_host** %6, align 8
  %12 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %13 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %12, i32 0, i32 1
  %14 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %13, align 8
  store %struct.sdhci_pci_chip* %14, %struct.sdhci_pci_chip** %4, align 8
  %15 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %16 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %15, i32 0, i32 0
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %16, align 8
  store %struct.sdhci_host* %17, %struct.sdhci_host** %5, align 8
  %18 = load %struct.o2_host*, %struct.o2_host** %6, align 8
  %19 = getelementptr inbounds %struct.o2_host, %struct.o2_host* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %21 = load i32, i32* @SDHCI_CAPABILITIES, align 4
  %22 = call i32 @sdhci_readl(%struct.sdhci_host* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @SDHCI_CAN_DO_8BIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %30 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %28
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %27, %1
  %36 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %4, align 8
  %37 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %144 [
    i32 131, label %41
    i32 129, label %41
    i32 128, label %41
    i32 130, label %41
    i32 132, label %41
  ]

41:                                               ; preds = %35, %35, %35, %35, %35
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %43 = load i32, i32* @O2_SD_VENDOR_SETTING, align 4
  %44 = call i32 @sdhci_readl(%struct.sdhci_host* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i32, i32* @SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12, align 4
  %50 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %51 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %41
  %55 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %4, align 8
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %57 = call i32 @sdhci_pci_o2_enable_msi(%struct.sdhci_pci_chip* %55, %struct.sdhci_host* %56)
  %58 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %4, align 8
  %59 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 129
  br i1 %63, label %64, label %122

64:                                               ; preds = %54
  %65 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %4, align 8
  %66 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* @O2_SD_MISC_SETTING, align 4
  %69 = call i32 @pci_read_config_dword(%struct.TYPE_6__* %67, i32 %68, i32* %7)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %146

75:                                               ; preds = %64
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 16
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %115

79:                                               ; preds = %75
  %80 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %81 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = call i32 @mmc_hostname(%struct.TYPE_7__* %82)
  %84 = call i32 @pr_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @SDHCI_SIGNALING_330, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %88 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* @SDHCI_SIGNALING_180, align 4
  %92 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %93 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* @MMC_CAP2_NO_SD, align 4
  %97 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %98 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %96
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* @MMC_CAP2_NO_SDIO, align 4
  %104 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %105 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %104, i32 0, i32 1
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %103
  store i32 %109, i32* %107, align 4
  %110 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %4, align 8
  %111 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i32, i32* @O2_SD_DETECT_SETTING, align 4
  %114 = call i32 @pci_write_config_dword(%struct.TYPE_6__* %112, i32 %113, i32 3)
  br label %115

115:                                              ; preds = %79, %75
  %116 = load i32, i32* @sdhci_o2_get_cd, align 4
  %117 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %118 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %117, i32 0, i32 0
  %119 = load %struct.sdhci_host*, %struct.sdhci_host** %118, align 8
  %120 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i32 %116, i32* %121, align 4
  br label %122

122:                                              ; preds = %115, %54
  %123 = load i32, i32* @sdhci_o2_execute_tuning, align 4
  %124 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %125 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %4, align 8
  %128 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 132
  br i1 %132, label %133, label %134

133:                                              ; preds = %122
  br label %145

134:                                              ; preds = %122
  %135 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %136 = load i32, i32* @O2_SD_VENDOR_SETTING2, align 4
  %137 = call i32 @sdhci_readl(%struct.sdhci_host* %135, i32 %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, 4096
  store i32 %139, i32* %7, align 4
  %140 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @O2_SD_VENDOR_SETTING2, align 4
  %143 = call i32 @sdhci_writel(%struct.sdhci_host* %140, i32 %141, i32 %142)
  br label %145

144:                                              ; preds = %35
  br label %145

145:                                              ; preds = %144, %134, %133
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %145, %72
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.o2_host* @sdhci_pci_priv(%struct.sdhci_pci_slot*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_pci_o2_enable_msi(%struct.sdhci_pci_chip*, %struct.sdhci_host*) #1

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.TYPE_7__*) #1

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
