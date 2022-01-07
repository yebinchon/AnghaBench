; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_wait_for_target_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_wait_for_target_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { i64 }

@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"boot waiting target to initialise\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@ATH10K_PCI_TARGET_WAIT = common dso_local global i32 0, align 4
@FW_INDICATOR_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"boot target indicator %x\0A\00", align 1
@FW_IND_EVENT_PENDING = common dso_local global i32 0, align 4
@FW_IND_INITIALIZED = common dso_local global i32 0, align 4
@ATH10K_PCI_IRQ_LEGACY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"failed to read device register, device is gone\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"device has crashed during init\0A\00", align 1
@ECOMM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"failed to receive initialized event from target: %08x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"boot target initialised\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_pci_wait_for_target_init(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_pci*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %7)
  store %struct.ath10k_pci* %8, %struct.ath10k_pci** %4, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %11 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %9, i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i32, i32* @ATH10K_PCI_TARGET_WAIT, align 4
  %14 = call i64 @msecs_to_jiffies(i32 %13)
  %15 = add i64 %12, %14
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %50, %1
  %17 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %18 = load i32, i32* @FW_INDICATOR_ADDRESS, align 4
  %19 = call i32 @ath10k_pci_read32(%struct.ath10k* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %20, i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %50

27:                                               ; preds = %16
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @FW_IND_EVENT_PENDING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %55

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @FW_IND_INITIALIZED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %55

39:                                               ; preds = %33
  %40 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %41 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ATH10K_PCI_IRQ_LEGACY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %47 = call i32 @ath10k_pci_enable_legacy_irq(%struct.ath10k* %46)
  br label %48

48:                                               ; preds = %45, %39
  %49 = call i32 @mdelay(i32 10)
  br label %50

50:                                               ; preds = %48, %26
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @time_before(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %16, label %55

55:                                               ; preds = %50, %38, %32
  %56 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %57 = call i32 @ath10k_pci_disable_and_clear_legacy_irq(%struct.ath10k* %56)
  %58 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %59 = call i32 @ath10k_pci_irq_msi_fw_mask(%struct.ath10k* %58)
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %64 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %92

67:                                               ; preds = %55
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @FW_IND_EVENT_PENDING, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %74 = call i32 @ath10k_warn(%struct.ath10k* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @ECOMM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %92

77:                                               ; preds = %67
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @FW_IND_INITIALIZED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %83, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @ETIMEDOUT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %92

88:                                               ; preds = %77
  %89 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %90 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %91 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %89, i32 %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %82, %72, %62
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, ...) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ath10k_pci_read32(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_pci_enable_legacy_irq(%struct.ath10k*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ath10k_pci_disable_and_clear_legacy_irq(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_irq_msi_fw_mask(%struct.ath10k*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
