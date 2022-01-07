; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_init_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_init_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32, i32*, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }

@ET1310_PCI_EEPROM_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Could not read PCI config space for EEPROM Status\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@et131x_init_eeprom.eedata = internal constant [4 x i32] [i32 254, i32 19, i32 16, i32 255], align 16
@.str.1 = private unnamed_addr constant [36 x i8] c"Fatal EEPROM Status Error - 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et131x_adapter*)* @et131x_init_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et131x_init_eeprom(%struct.et131x_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %3, align 8
  %8 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %8, i32 0, i32 2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = load i32, i32* @ET1310_PCI_EEPROM_STATUS, align 4
  %13 = call i64 @pci_read_config_byte(%struct.pci_dev* %11, i32 %12, i32* %5)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = load i32, i32* @ET1310_PCI_EEPROM_STATUS, align 4
  %16 = call i64 @pci_read_config_byte(%struct.pci_dev* %14, i32 %15, i32* %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %97

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 76
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %48, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* @et131x_init_eeprom.eedata, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @eeprom_write(%struct.et131x_adapter* %38, i32 %39, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %34

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %28
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57, %52
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %5, align 4
  %64 = call i32 (i32*, i8*, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %97

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %24
  %71 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %74 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = call i32 @eeprom_read(%struct.et131x_adapter* %73, i32 112, i32* %77)
  %79 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %80 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = call i32 @eeprom_read(%struct.et131x_adapter* %79, i32 113, i32* %83)
  %85 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 205
  br i1 %90, label %91, label %96

91:                                               ; preds = %70
  %92 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %91, %70
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %60, %18
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i64 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @eeprom_write(%struct.et131x_adapter*, i32, i32) #1

declare dso_local i32 @eeprom_read(%struct.et131x_adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
