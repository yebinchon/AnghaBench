; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_validate_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_validate_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, %struct.firmware*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.firmware = type { i64, i32* }
%struct.pci_dev = type { i32 }

@QLCNIC_UNIFIED_ROMIMAGE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_UNI_FW_MIN_SIZE = common dso_local global i64 0, align 8
@QLCNIC_FW_MAGIC_OFFSET = common dso_local global i64 0, align 8
@QLCNIC_BDINFO_MAGIC = common dso_local global i64 0, align 8
@QLCNIC_FW_MIN_SIZE = common dso_local global i64 0, align 8
@QLCNIC_MIN_FW_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"%s: firmware version %d.%d.%d unsupported\0A\00", align 1
@fw_name = common dso_local global i32* null, align 8
@QLCNIC_BIOS_VERSION_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: firmware bios is incompatible\0A\00", align 1
@QLCNIC_FW_IMG_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_validate_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_validate_firmware(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %8, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 1
  %16 = load %struct.firmware*, %struct.firmware** %15, align 8
  store %struct.firmware* %16, %struct.firmware** %9, align 8
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @QLCNIC_UNIFIED_ROMIMAGE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %27 = call i64 @qlcnic_validate_unified_romimage(%struct.qlcnic_adapter* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %108

32:                                               ; preds = %25
  %33 = load i64, i64* @QLCNIC_UNI_FW_MIN_SIZE, align 8
  store i64 %33, i64* %7, align 8
  br label %50

34:                                               ; preds = %1
  %35 = load %struct.firmware*, %struct.firmware** %9, align 8
  %36 = getelementptr inbounds %struct.firmware, %struct.firmware* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @QLCNIC_FW_MAGIC_OFFSET, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le32_to_cpu(i32 %40)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @QLCNIC_BDINFO_MAGIC, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %108

48:                                               ; preds = %34
  %49 = load i64, i64* @QLCNIC_FW_MIN_SIZE, align 8
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %48, %32
  %51 = load %struct.firmware*, %struct.firmware** %9, align 8
  %52 = getelementptr inbounds %struct.firmware, %struct.firmware* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %108

59:                                               ; preds = %50
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %61 = call i64 @qlcnic_get_fw_version(%struct.qlcnic_adapter* %60)
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @QLCNIC_DECODE_VERSION(i64 %62)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @QLCNIC_MIN_FW_VERSION, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %59
  %68 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = load i32*, i32** @fw_name, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @_major(i64 %74)
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @_minor(i64 %76)
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @_build(i64 %78)
  %80 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %75, i32 %77, i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %108

83:                                               ; preds = %59
  %84 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %85 = call i64 @qlcnic_get_bios_version(%struct.qlcnic_adapter* %84)
  store i64 %85, i64* %4, align 8
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %87 = load i32, i32* @QLCNIC_BIOS_VERSION_OFFSET, align 4
  %88 = bitcast i64* %6 to i32*
  %89 = call i32 @qlcnic_rom_fast_read(%struct.qlcnic_adapter* %86, i32 %87, i32* %88)
  %90 = load i64, i64* %4, align 8
  %91 = load i64, i64* %6, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %83
  %94 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = load i32*, i32** @fw_name, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %108

103:                                              ; preds = %83
  %104 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %105 = load i32, i32* @QLCNIC_FW_IMG_VALID, align 4
  %106 = load i64, i64* @QLCNIC_BDINFO_MAGIC, align 8
  %107 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %104, i32 %105, i64 %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %103, %93, %67, %56, %45, %29
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @qlcnic_validate_unified_romimage(%struct.qlcnic_adapter*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @qlcnic_get_fw_version(%struct.qlcnic_adapter*) #1

declare dso_local i64 @QLCNIC_DECODE_VERSION(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @_major(i64) #1

declare dso_local i32 @_minor(i64) #1

declare dso_local i32 @_build(i64) #1

declare dso_local i64 @qlcnic_get_bios_version(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_rom_fast_read(%struct.qlcnic_adapter*, i32, i32*) #1

declare dso_local i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
