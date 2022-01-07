; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_pmos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_pmos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_PMOS0_CONTROL = common dso_local global i32 0, align 4
@PMOS0_ACTIVE_BITS = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [28 x i8] c"JMB38x: set PMOS0 val 0x%x\0A\00", align 1
@PCI_PMOS1_CONTROL = common dso_local global i32 0, align 4
@PMOS1_ACTIVE_BITS = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"JMB38x: set PMOS1 val 0x%x\0A\00", align 1
@PCI_CLOCK_CTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Clock Control by PCI config is disabled!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @jmb38x_ms_pmos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmb38x_ms_pmos(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = load i32, i32* @PCI_PMOS0_CONTROL, align 4
  %8 = call i32 @pci_read_config_byte(%struct.pci_dev* %6, i32 %7, i8* %5)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i8, i8* @PMOS0_ACTIVE_BITS, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %15, %13
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %5, align 1
  br label %26

18:                                               ; preds = %2
  %19 = load i8, i8* @PMOS0_ACTIVE_BITS, align 1
  %20 = zext i8 %19 to i32
  %21 = xor i32 %20, -1
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, %21
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %5, align 1
  br label %26

26:                                               ; preds = %18, %11
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = load i32, i32* @PCI_PMOS0_CONTROL, align 4
  %29 = load i8, i8* %5, align 1
  %30 = call i32 @pci_write_config_byte(%struct.pci_dev* %27, i32 %28, i8 zeroext %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i8, i8* %5, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = call i64 @pci_resource_flags(%struct.pci_dev* %36, i32 1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %26
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = load i32, i32* @PCI_PMOS1_CONTROL, align 4
  %42 = call i32 @pci_read_config_byte(%struct.pci_dev* %40, i32 %41, i8* %5)
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i8, i8* @PMOS1_ACTIVE_BITS, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %5, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, %47
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %5, align 1
  br label %60

52:                                               ; preds = %39
  %53 = load i8, i8* @PMOS1_ACTIVE_BITS, align 1
  %54 = zext i8 %53 to i32
  %55 = xor i32 %54, -1
  %56 = load i8, i8* %5, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, %55
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %5, align 1
  br label %60

60:                                               ; preds = %52, %45
  %61 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %62 = load i32, i32* @PCI_PMOS1_CONTROL, align 4
  %63 = load i8, i8* %5, align 1
  %64 = call i32 @pci_write_config_byte(%struct.pci_dev* %61, i32 %62, i8 zeroext %63)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load i8, i8* %5, align 1
  %68 = zext i8 %67 to i32
  %69 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %60, %26
  %71 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %72 = load i32, i32* @PCI_CLOCK_CTL, align 4
  %73 = call i32 @pci_read_config_byte(%struct.pci_dev* %71, i32 %72, i8* %5)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %75 = load i32, i32* @PCI_CLOCK_CTL, align 4
  %76 = load i8, i8* %5, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %77, -16
  %79 = trunc i32 %78 to i8
  %80 = call i32 @pci_write_config_byte(%struct.pci_dev* %74, i32 %75, i8 zeroext %79)
  %81 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %82 = load i32, i32* @PCI_CLOCK_CTL, align 4
  %83 = load i8, i8* %5, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %84, 1
  %86 = trunc i32 %85 to i8
  %87 = call i32 @pci_write_config_byte(%struct.pci_dev* %81, i32 %82, i8 zeroext %86)
  %88 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %89 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %88, i32 0, i32 0
  %90 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i64 @pci_resource_flags(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
