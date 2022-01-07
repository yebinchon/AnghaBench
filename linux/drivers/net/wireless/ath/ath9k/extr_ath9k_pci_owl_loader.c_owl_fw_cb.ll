; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ath9k_pci_owl_loader.c_owl_fw_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ath9k_pci_owl_loader.c_owl_fw_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32, i64 }
%struct.pci_dev = type { %struct.pci_bus*, i32 }
%struct.pci_bus = type { i32 }
%struct.owl_ctx = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"no eeprom data received.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"eeprom file has an invalid size.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @owl_fw_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_fw_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.owl_ctx*, align 8
  %7 = alloca %struct.pci_bus*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.pci_dev*
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = call i64 @pci_get_drvdata(%struct.pci_dev* %10)
  %12 = inttoptr i64 %11 to %struct.owl_ctx*
  store %struct.owl_ctx* %12, %struct.owl_ctx** %6, align 8
  %13 = load %struct.owl_ctx*, %struct.owl_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.owl_ctx, %struct.owl_ctx* %13, i32 0, i32 0
  %15 = call i32 @complete(i32* %14)
  %16 = load %struct.firmware*, %struct.firmware** %3, align 8
  %17 = icmp ne %struct.firmware* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %64

22:                                               ; preds = %2
  %23 = load %struct.firmware*, %struct.firmware** %3, align 8
  %24 = getelementptr inbounds %struct.firmware, %struct.firmware* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 4096
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = load %struct.firmware*, %struct.firmware** %3, align 8
  %29 = getelementptr inbounds %struct.firmware, %struct.firmware* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 512
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.firmware*, %struct.firmware** %3, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %32, %27, %22
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 1
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %64

42:                                               ; preds = %32
  %43 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %44 = load %struct.firmware*, %struct.firmware** %3, align 8
  %45 = getelementptr inbounds %struct.firmware, %struct.firmware* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load %struct.firmware*, %struct.firmware** %3, align 8
  %49 = getelementptr inbounds %struct.firmware, %struct.firmware* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @ath9k_pci_fixup(%struct.pci_dev* %43, i32* %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %64

54:                                               ; preds = %42
  %55 = call i32 (...) @pci_lock_rescan_remove()
  %56 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = load %struct.pci_bus*, %struct.pci_bus** %57, align 8
  store %struct.pci_bus* %58, %struct.pci_bus** %7, align 8
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = call i32 @pci_stop_and_remove_bus_device(%struct.pci_dev* %59)
  %61 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %62 = call i32 @pci_rescan_bus(%struct.pci_bus* %61)
  %63 = call i32 (...) @pci_unlock_rescan_remove()
  br label %64

64:                                               ; preds = %54, %53, %38, %18
  %65 = load %struct.firmware*, %struct.firmware** %3, align 8
  %66 = call i32 @release_firmware(%struct.firmware* %65)
  ret void
}

declare dso_local i64 @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @ath9k_pci_fixup(%struct.pci_dev*, i32*, i32) #1

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local i32 @pci_stop_and_remove_bus_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_rescan_bus(%struct.pci_bus*) #1

declare dso_local i32 @pci_unlock_rescan_remove(...) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
