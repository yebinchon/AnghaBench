; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_pci_err_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_pci_err_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ice_pf = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Cannot re-enable PCI device after reset, error %d\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@GLGEN_RTRIG = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"pci_cleanup_aer_uncorrect_error_status failed, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @ice_pci_err_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_pci_err_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.ice_pf* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.ice_pf* %8, %struct.ice_pf** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call i32 @pci_enable_device_mem(%struct.pci_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %18, i32* %4, align 4
  br label %39

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = call i32 @pci_set_master(%struct.pci_dev* %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = call i32 @pci_restore_state(%struct.pci_dev* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = call i32 @pci_save_state(%struct.pci_dev* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = call i32 @pci_wake_from_d3(%struct.pci_dev* %26, i32 0)
  %28 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %29 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %28, i32 0, i32 0
  %30 = load i32, i32* @GLGEN_RTRIG, align 4
  %31 = call i32 @rd32(i32* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %19
  %35 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %35, i32* %4, align 4
  br label %38

36:                                               ; preds = %19
  %37 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38, %13
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = call i32 @pci_cleanup_aer_uncorrect_error_status(%struct.pci_dev* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dev_dbg(i32* %46, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.ice_pf* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_wake_from_d3(%struct.pci_dev*, i32) #1

declare dso_local i32 @rd32(i32*, i32) #1

declare dso_local i32 @pci_cleanup_aer_uncorrect_error_status(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
