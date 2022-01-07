; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_pci.c_hl_pci_elbi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_pci.c_hl_pci_elbi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@HL_PLDM_PCI_ELBI_TIMEOUT_MSEC = common dso_local global i64 0, align 8
@HL_PCI_ELBI_TIMEOUT_MSEC = common dso_local global i64 0, align 8
@mmPCI_CONFIG_ELBI_STS = common dso_local global i32 0, align 4
@mmPCI_CONFIG_ELBI_ADDR = common dso_local global i32 0, align 4
@mmPCI_CONFIG_ELBI_DATA = common dso_local global i32 0, align 4
@mmPCI_CONFIG_ELBI_CTRL = common dso_local global i32 0, align 4
@PCI_CONFIG_ELBI_CTRL_WRITE = common dso_local global i32 0, align 4
@PCI_CONFIG_ELBI_STS_MASK = common dso_local global i32 0, align 4
@PCI_CONFIG_ELBI_STS_DONE = common dso_local global i32 0, align 4
@PCI_CONFIG_ELBI_STS_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error writing to ELBI\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ELBI write didn't finish in time\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"ELBI write has undefined bits in status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, i64, i32)* @hl_pci_elbi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hl_pci_elbi_write(%struct.hl_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %8, align 8
  %15 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %16 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @HL_PLDM_PCI_ELBI_TIMEOUT_MSEC, align 8
  store i64 %20, i64* %10, align 8
  br label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @HL_PCI_ELBI_TIMEOUT_MSEC, align 8
  store i64 %22, i64* %10, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %25 = load i32, i32* @mmPCI_CONFIG_ELBI_STS, align 4
  %26 = call i32 @pci_write_config_dword(%struct.pci_dev* %24, i32 %25, i32 0)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %28 = load i32, i32* @mmPCI_CONFIG_ELBI_ADDR, align 4
  %29 = load i64, i64* %6, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @pci_write_config_dword(%struct.pci_dev* %27, i32 %28, i32 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %33 = load i32, i32* @mmPCI_CONFIG_ELBI_DATA, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @pci_write_config_dword(%struct.pci_dev* %32, i32 %33, i32 %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %37 = load i32, i32* @mmPCI_CONFIG_ELBI_CTRL, align 4
  %38 = load i32, i32* @PCI_CONFIG_ELBI_CTRL_WRITE, align 4
  %39 = call i32 @pci_write_config_dword(%struct.pci_dev* %36, i32 %37, i32 %38)
  %40 = call i32 (...) @ktime_get()
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @ktime_add_ms(i32 %40, i64 %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %61, %23
  %44 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %45 = load i32, i32* @mmPCI_CONFIG_ELBI_STS, align 4
  %46 = call i32 @pci_read_config_dword(%struct.pci_dev* %44, i32 %45, i32* %11)
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @PCI_CONFIG_ELBI_STS_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %63

52:                                               ; preds = %43
  %53 = call i32 (...) @ktime_get()
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @ktime_compare(i32 %53, i32 %54)
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %59 = load i32, i32* @mmPCI_CONFIG_ELBI_STS, align 4
  %60 = call i32 @pci_read_config_dword(%struct.pci_dev* %58, i32 %59, i32* %11)
  br label %63

61:                                               ; preds = %52
  %62 = call i32 @usleep_range(i32 300, i32 500)
  br label %43

63:                                               ; preds = %57, %51
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @PCI_CONFIG_ELBI_STS_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @PCI_CONFIG_ELBI_STS_DONE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %101

70:                                               ; preds = %63
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @PCI_CONFIG_ELBI_STS_ERR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %77 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %101

82:                                               ; preds = %70
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @PCI_CONFIG_ELBI_STS_MASK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %82
  %88 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %89 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %101

94:                                               ; preds = %82
  %95 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %96 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %94, %87, %75, %69
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @ktime_add_ms(i32, i64) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
