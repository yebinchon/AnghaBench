; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_amd_execute_tuning_hs200.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_amd_execute_tuning_hs200.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sdhci_pci_slot = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@AMD_MSLEEP_DURATION = common dso_local global i32 0, align 4
@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4
@SDHCI_SOFTWARE_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no tuning point found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32)* @amd_execute_tuning_hs200 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_execute_tuning_hs200(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_pci_slot*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %14 = call %struct.sdhci_pci_slot* @sdhci_priv(%struct.sdhci_host* %13)
  store %struct.sdhci_pci_slot* %14, %struct.sdhci_pci_slot** %6, align 8
  %15 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %6, align 8
  %16 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %21 = call i32 @amd_tuning_reset(%struct.sdhci_host* %20)
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %55, %2
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 12
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  %26 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @amd_config_tuning_phase(%struct.pci_dev* %26, i32 %27)
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %30 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @mmc_send_tuning(%struct.TYPE_4__* %31, i32 %32, i32* null)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  %36 = load i32, i32* @AMD_MSLEEP_DURATION, align 4
  %37 = call i32 @msleep(i32 %36)
  %38 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %39 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @SDHCI_SOFTWARE_RESET, align 4
  %44 = call i32 @sdhci_writeb(%struct.sdhci_host* %41, i32 %42, i32 %43)
  br label %54

45:                                               ; preds = %25
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %35
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %22

58:                                               ; preds = %22
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %80

67:                                               ; preds = %58
  %68 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sdiv i32 %70, 2
  %72 = sub nsw i32 %69, %71
  %73 = call i32 @amd_config_tuning_phase(%struct.pci_dev* %68, i32 %72)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %75 = call i32 @amd_enable_manual_tuning(%struct.pci_dev* %74)
  %76 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %77 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %67, %61
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.sdhci_pci_slot* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local i32 @amd_tuning_reset(%struct.sdhci_host*) #1

declare dso_local i32 @amd_config_tuning_phase(%struct.pci_dev*, i32) #1

declare dso_local i64 @mmc_send_tuning(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sdhci_writeb(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @amd_enable_manual_tuning(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
