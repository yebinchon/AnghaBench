; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cb710_slot = type { i32 }
%struct.cb710_chip = type { i32 }
%struct.mmc_host = type { i32, i32, i32, i32, i32* }
%struct.cb710_mmc_reader = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@cb710_src_freq_mhz = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"source frequency: %dMHz\0A\00", align 1
@cb710_mmc_host = common dso_local global i32 0, align 4
@cb710_clock_divider_log2 = common dso_local global i32* null, align 8
@CB710_MAX_DIVIDER_IDX = common dso_local global i64 0, align 8
@MMC_VDD_32_33 = common dso_local global i32 0, align 4
@MMC_VDD_33_34 = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@cb710_mmc_finish_request_tasklet = common dso_local global i32 0, align 4
@CB710_DUMP_REGS_MMC = common dso_local global i32 0, align 4
@cb710_mmc_irq_handler = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"mmc_hostname is %s\0A\00", align 1
@CB710_MMC_IE_CARD_INSERTION_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"mmc_add_host() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cb710_mmc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb710_mmc_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cb710_slot*, align 8
  %5 = alloca %struct.cb710_chip*, align 8
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca %struct.cb710_mmc_reader*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.cb710_slot* @cb710_pdev_to_slot(%struct.platform_device* %10)
  store %struct.cb710_slot* %11, %struct.cb710_slot** %4, align 8
  %12 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %13 = call %struct.cb710_chip* @cb710_slot_to_chip(%struct.cb710_slot* %12)
  store %struct.cb710_chip* %13, %struct.cb710_chip** %5, align 8
  %14 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %15 = call i32 @cb710_slot_dev(%struct.cb710_slot* %14)
  %16 = call %struct.mmc_host* @mmc_alloc_host(i32 8, i32 %15)
  store %struct.mmc_host* %16, %struct.mmc_host** %6, align 8
  %17 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %18 = icmp ne %struct.mmc_host* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %108

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.mmc_host* %24)
  %26 = load %struct.cb710_chip*, %struct.cb710_chip** %5, align 8
  %27 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pci_read_config_dword(i32 %28, i32 72, i32* %9)
  %30 = load i32*, i32** @cb710_src_freq_mhz, align 8
  %31 = load i32, i32* %9, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 15
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %38 = call i32 @cb710_slot_dev(%struct.cb710_slot* %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 %41, 1000000
  store i32 %42, i32* %9, align 4
  %43 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %44 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %43, i32 0, i32 4
  store i32* @cb710_mmc_host, i32** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %47 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** @cb710_clock_divider_log2, align 8
  %50 = load i64, i64* @CB710_MAX_DIVIDER_IDX, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %48, %52
  %54 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %55 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @MMC_VDD_32_33, align 4
  %57 = load i32, i32* @MMC_VDD_33_34, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %60 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %62 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %63 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %65 = call %struct.cb710_mmc_reader* @mmc_priv(%struct.mmc_host* %64)
  store %struct.cb710_mmc_reader* %65, %struct.cb710_mmc_reader** %7, align 8
  %66 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %7, align 8
  %67 = getelementptr inbounds %struct.cb710_mmc_reader, %struct.cb710_mmc_reader* %66, i32 0, i32 1
  %68 = load i32, i32* @cb710_mmc_finish_request_tasklet, align 4
  %69 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %70 = ptrtoint %struct.mmc_host* %69 to i64
  %71 = call i32 @tasklet_init(i32* %67, i32 %68, i64 %70)
  %72 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %7, align 8
  %73 = getelementptr inbounds %struct.cb710_mmc_reader, %struct.cb710_mmc_reader* %72, i32 0, i32 0
  %74 = call i32 @spin_lock_init(i32* %73)
  %75 = load %struct.cb710_chip*, %struct.cb710_chip** %5, align 8
  %76 = load i32, i32* @CB710_DUMP_REGS_MMC, align 4
  %77 = call i32 @cb710_dump_regs(%struct.cb710_chip* %75, i32 %76)
  %78 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %79 = call i32 @cb710_mmc_enable_irq(%struct.cb710_slot* %78, i32 0, i32 -1)
  %80 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %81 = load i32*, i32** @cb710_mmc_irq_handler, align 8
  %82 = call i32 @cb710_set_irq_handler(%struct.cb710_slot* %80, i32* %81)
  %83 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %84 = call i32 @mmc_add_host(%struct.mmc_host* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %22
  br label %98

89:                                               ; preds = %22
  %90 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %91 = call i32 @cb710_slot_dev(%struct.cb710_slot* %90)
  %92 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %93 = call i32 @mmc_hostname(%struct.mmc_host* %92)
  %94 = call i32 @dev_dbg(i32 %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %96 = load i32, i32* @CB710_MMC_IE_CARD_INSERTION_STATUS, align 4
  %97 = call i32 @cb710_mmc_enable_irq(%struct.cb710_slot* %95, i32 %96, i32 0)
  store i32 0, i32* %2, align 4
  br label %108

98:                                               ; preds = %88
  %99 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %100 = call i32 @cb710_slot_dev(%struct.cb710_slot* %99)
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @dev_dbg(i32 %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %104 = call i32 @cb710_set_irq_handler(%struct.cb710_slot* %103, i32* null)
  %105 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %106 = call i32 @mmc_free_host(%struct.mmc_host* %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %98, %89, %19
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.cb710_slot* @cb710_pdev_to_slot(%struct.platform_device*) #1

declare dso_local %struct.cb710_chip* @cb710_slot_to_chip(%struct.cb710_slot*) #1

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, i32) #1

declare dso_local i32 @cb710_slot_dev(%struct.cb710_slot*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mmc_host*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local %struct.cb710_mmc_reader* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @cb710_dump_regs(%struct.cb710_chip*, i32) #1

declare dso_local i32 @cb710_mmc_enable_irq(%struct.cb710_slot*, i32, i32) #1

declare dso_local i32 @cb710_set_irq_handler(%struct.cb710_slot*, i32*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
