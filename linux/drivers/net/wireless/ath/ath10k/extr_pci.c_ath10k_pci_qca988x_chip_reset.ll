; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_qca988x_chip_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_qca988x_chip_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"boot 988x chip reset\0A\00", align 1
@ATH10K_PCI_NUM_WARM_RESET_ATTEMPTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to warm reset attempt %d of %d: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to init copy engine: %d\0A\00", align 1
@QCA988X_HOST_INTEREST_ADDRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to poke copy engine: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"boot chip reset complete (warm)\0A\00", align 1
@ath10k_pci_reset_mode = common dso_local global i64 0, align 8
@ATH10K_PCI_RESET_WARM_ONLY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"refusing cold reset as requested\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to cold reset: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"failed to wait for target after cold reset: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"boot qca988x chip reset complete (cold)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_pci_qca988x_chip_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_qca988x_chip_reset(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %9 = call i32 @ath10k_dbg(%struct.ath10k* %7, i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %49, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ATH10K_PCI_NUM_WARM_RESET_ATTEMPTS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %16 = call i32 @ath10k_pci_warm_reset(%struct.ath10k* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* @ATH10K_PCI_NUM_WARM_RESET_ATTEMPTS, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  br label %49

26:                                               ; preds = %14
  %27 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %28 = call i32 @ath10k_pci_init_pipes(%struct.ath10k* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %49

35:                                               ; preds = %26
  %36 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %37 = load i32, i32* @QCA988X_HOST_INTEREST_ADDRESS, align 4
  %38 = call i32 @ath10k_pci_diag_read32(%struct.ath10k* %36, i32 %37, i32* %6)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %49

45:                                               ; preds = %35
  %46 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %47 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %48 = call i32 @ath10k_dbg(%struct.ath10k* %46, i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %85

49:                                               ; preds = %41, %31, %19
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %10

52:                                               ; preds = %10
  %53 = load i64, i64* @ath10k_pci_reset_mode, align 8
  %54 = load i64, i64* @ATH10K_PCI_RESET_WARM_ONLY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %58 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %59 = load i32, i32* @EPERM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %85

61:                                               ; preds = %52
  %62 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %63 = call i32 @ath10k_pci_cold_reset(%struct.ath10k* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %85

71:                                               ; preds = %61
  %72 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %73 = call i32 @ath10k_pci_wait_for_target_init(%struct.ath10k* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %77, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %85

81:                                               ; preds = %71
  %82 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %83 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %84 = call i32 @ath10k_dbg(%struct.ath10k* %82, i32 %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %76, %66, %56, %45
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @ath10k_pci_warm_reset(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @ath10k_pci_init_pipes(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_diag_read32(%struct.ath10k*, i32, i32*) #1

declare dso_local i32 @ath10k_pci_cold_reset(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_wait_for_target_init(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
