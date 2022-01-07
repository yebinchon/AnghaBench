; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c_sdhci_o2_dll_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c_sdhci_o2_dll_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pci_slot = type { %struct.sdhci_pci_chip* }
%struct.sdhci_pci_chip = type { i32 }
%struct.o2_host = type { i64 }

@O2_SD_LOCK_WP = common dso_local global i32 0, align 4
@DMDN_SZ = common dso_local global i64 0, align 8
@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@O2_PLL_DLL_WDT_CONTROL1 = common dso_local global i32 0, align 4
@O2_PLL_SOFT_RESET = common dso_local global i32 0, align 4
@O2_SD_FUNC_REG4 = common dso_local global i32 0, align 4
@O2_SD_FREG4_ENABLE_CLK_SET = common dso_local global i32 0, align 4
@dmdn_table = common dso_local global i32* null, align 8
@SDHCI_CLOCK_INT_EN = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CARD_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: DLL unlocked when dll_adjust_count is %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: card present detect failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: DLL adjust over max times\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @sdhci_o2_dll_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_o2_dll_recovery(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_pci_slot*, align 8
  %7 = alloca %struct.sdhci_pci_chip*, align 8
  %8 = alloca %struct.o2_host*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %10 = call %struct.sdhci_pci_slot* @sdhci_priv(%struct.sdhci_host* %9)
  store %struct.sdhci_pci_slot* %10, %struct.sdhci_pci_slot** %6, align 8
  %11 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %6, align 8
  %12 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %11, i32 0, i32 0
  %13 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %12, align 8
  store %struct.sdhci_pci_chip* %13, %struct.sdhci_pci_chip** %7, align 8
  %14 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %6, align 8
  %15 = call %struct.o2_host* @sdhci_pci_priv(%struct.sdhci_pci_slot* %14)
  store %struct.o2_host* %15, %struct.o2_host** %8, align 8
  %16 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %7, align 8
  %17 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %20 = call i32 @pci_read_config_byte(i32 %18, i32 %19, i32* %4)
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 127
  store i32 %22, i32* %4, align 4
  %23 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %7, align 8
  %24 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @pci_write_config_byte(i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %116, %1
  %30 = load %struct.o2_host*, %struct.o2_host** %8, align 8
  %31 = getelementptr inbounds %struct.o2_host, %struct.o2_host* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DMDN_SZ, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %35, %29
  %40 = phi i1 [ false, %29 ], [ %38, %35 ]
  br i1 %40, label %41, label %121

41:                                               ; preds = %39
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %43 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %44 = call i32 @sdhci_writeb(%struct.sdhci_host* %42, i32 0, i32 %43)
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %46 = load i32, i32* @O2_PLL_DLL_WDT_CONTROL1, align 4
  %47 = call i32 @sdhci_readl(%struct.sdhci_host* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @O2_PLL_SOFT_RESET, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @O2_PLL_DLL_WDT_CONTROL1, align 4
  %54 = call i32 @sdhci_writel(%struct.sdhci_host* %51, i32 %52, i32 %53)
  %55 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %7, align 8
  %56 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @O2_SD_FUNC_REG4, align 4
  %59 = call i32 @pci_read_config_dword(i32 %57, i32 %58, i32* %5)
  %60 = load i32, i32* @O2_SD_FREG4_ENABLE_CLK_SET, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %7, align 8
  %64 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @O2_SD_FUNC_REG4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @pci_write_config_dword(i32 %65, i32 %66, i32 %67)
  %69 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %7, align 8
  %70 = load i32*, i32** @dmdn_table, align 8
  %71 = load %struct.o2_host*, %struct.o2_host** %8, align 8
  %72 = getelementptr inbounds %struct.o2_host, %struct.o2_host* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @o2_pci_set_baseclk(%struct.sdhci_pci_chip* %69, i32 %75)
  %77 = load i32, i32* @SDHCI_CLOCK_INT_EN, align 4
  store i32 %77, i32* %4, align 4
  %78 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %81 = call i32 @sdhci_writeb(%struct.sdhci_host* %78, i32 %79, i32 %80)
  %82 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %83 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @sdhci_o2_get_cd(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %41
  %88 = call i32 @usleep_range(i32 5000, i32 6000)
  %89 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %90 = call i64 @sdhci_o2_wait_dll_detect_lock(%struct.sdhci_host* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %99 = call i32 @sdhci_writeb(%struct.sdhci_host* %96, i32 %97, i32 %98)
  store i32 1, i32* %3, align 4
  br label %109

100:                                              ; preds = %87
  %101 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %102 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @mmc_hostname(i32 %103)
  %105 = load %struct.o2_host*, %struct.o2_host** %8, align 8
  %106 = getelementptr inbounds %struct.o2_host, %struct.o2_host* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %104, i64 %107)
  br label %109

109:                                              ; preds = %100, %92
  br label %116

110:                                              ; preds = %41
  %111 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %112 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @mmc_hostname(i32 %113)
  %115 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %121

116:                                              ; preds = %109
  %117 = load %struct.o2_host*, %struct.o2_host** %8, align 8
  %118 = getelementptr inbounds %struct.o2_host, %struct.o2_host* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %118, align 8
  br label %29

121:                                              ; preds = %110, %39
  %122 = load i32, i32* %3, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %136, label %124

124:                                              ; preds = %121
  %125 = load %struct.o2_host*, %struct.o2_host** %8, align 8
  %126 = getelementptr inbounds %struct.o2_host, %struct.o2_host* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @DMDN_SZ, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %132 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @mmc_hostname(i32 %133)
  %135 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %130, %124, %121
  %137 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %7, align 8
  %138 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %141 = call i32 @pci_read_config_byte(i32 %139, i32 %140, i32* %4)
  %142 = load i32, i32* %4, align 4
  %143 = or i32 %142, 128
  store i32 %143, i32* %4, align 4
  %144 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %7, align 8
  %145 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %148 = load i32, i32* %4, align 4
  %149 = call i32 @pci_write_config_byte(i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.sdhci_pci_slot* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.o2_host* @sdhci_pci_priv(%struct.sdhci_pci_slot*) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @sdhci_writeb(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @o2_pci_set_baseclk(%struct.sdhci_pci_chip*, i32) #1

declare dso_local i64 @sdhci_o2_get_cd(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @sdhci_o2_wait_dll_detect_lock(%struct.sdhci_host*) #1

declare dso_local i32 @pr_warn(i8*, i32, i64) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
