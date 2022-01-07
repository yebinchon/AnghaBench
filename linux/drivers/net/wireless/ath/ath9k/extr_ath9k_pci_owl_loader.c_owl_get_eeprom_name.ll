; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ath9k_pci_owl_loader.c_owl_get_eeprom_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ath9k_pci_owl_loader.c_owl_get_eeprom_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"using auto-generated eeprom filename\0A\00", align 1
@EEPROM_FILENAME_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ath9k-eeprom-pci-%s.bin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pci_dev*)* @owl_get_eeprom_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @owl_get_eeprom_name(%struct.pci_dev* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i32 @dev_dbg(%struct.device* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @EEPROM_FILENAME_LEN, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @devm_kzalloc(%struct.device* %10, i32 %11, i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %24

17:                                               ; preds = %1
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @EEPROM_FILENAME_LEN, align 4
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_name(%struct.device* %20)
  %22 = call i32 @scnprintf(i8* %18, i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %2, align 8
  br label %24

24:                                               ; preds = %17, %16
  %25 = load i8*, i8** %2, align 8
  ret i8* %25
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
