; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_83xx_get_minidump_template.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_83xx_get_minidump_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, %struct.pci_dev*, %struct.qlcnic_hardware_context* }
%struct.pci_dev = type { i32 }
%struct.qlcnic_hardware_context = type { %struct.qlcnic_fw_dump }
%struct.qlcnic_fw_dump = type { i32, %struct.qlcnic_83xx_dump_template_hdr* }
%struct.qlcnic_83xx_dump_template_hdr = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Supports FW dump capability\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Extended iSCSI dump capability and updated capture mask to 0x1f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_get_minidump_template(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qlcnic_hardware_context*, align 8
  %6 = alloca %struct.qlcnic_fw_dump*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlcnic_83xx_dump_template_hdr*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 2
  %13 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %12, align 8
  store %struct.qlcnic_hardware_context* %13, %struct.qlcnic_hardware_context** %5, align 8
  %14 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %15 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %14, i32 0, i32 0
  store %struct.qlcnic_fw_dump* %15, %struct.qlcnic_fw_dump** %6, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %3, align 8
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %23 = call i64 @qlcnic_83xx_get_fw_version(%struct.qlcnic_adapter* %22)
  store i64 %23, i64* %4, align 8
  %24 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %6, align 8
  %25 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %24, i32 0, i32 1
  %26 = load %struct.qlcnic_83xx_dump_template_hdr*, %struct.qlcnic_83xx_dump_template_hdr** %25, align 8
  %27 = icmp eq %struct.qlcnic_83xx_dump_template_hdr* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %28, %1
  %33 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %6, align 8
  %34 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %33, i32 0, i32 1
  %35 = load %struct.qlcnic_83xx_dump_template_hdr*, %struct.qlcnic_83xx_dump_template_hdr** %34, align 8
  %36 = call i32 @vfree(%struct.qlcnic_83xx_dump_template_hdr* %35)
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %38 = call i64 @qlcnic_83xx_md_check_extended_dump_capability(%struct.qlcnic_adapter* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %42 = call i32 @qlcnic_83xx_extend_md_capab(%struct.qlcnic_adapter* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %40, %32
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %48 = call i32 @qlcnic_fw_cmd_get_minidump_temp(%struct.qlcnic_adapter* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %70

52:                                               ; preds = %46
  %53 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = call i32 @dev_info(i32* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %6, align 8
  %60 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %59, i32 0, i32 1
  %61 = load %struct.qlcnic_83xx_dump_template_hdr*, %struct.qlcnic_83xx_dump_template_hdr** %60, align 8
  store %struct.qlcnic_83xx_dump_template_hdr* %61, %struct.qlcnic_83xx_dump_template_hdr** %10, align 8
  %62 = load %struct.qlcnic_83xx_dump_template_hdr*, %struct.qlcnic_83xx_dump_template_hdr** %10, align 8
  %63 = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, %struct.qlcnic_83xx_dump_template_hdr* %62, i32 0, i32 0
  store i32 31, i32* %63, align 4
  %64 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %6, align 8
  %65 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %64, i32 0, i32 0
  store i32 31, i32* %65, align 8
  %66 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = call i32 @dev_info(i32* %67, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %58, %52
  br label %70

70:                                               ; preds = %51, %69, %28
  ret void
}

declare dso_local i64 @qlcnic_83xx_get_fw_version(%struct.qlcnic_adapter*) #1

declare dso_local i32 @vfree(%struct.qlcnic_83xx_dump_template_hdr*) #1

declare dso_local i64 @qlcnic_83xx_md_check_extended_dump_capability(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_extend_md_capab(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_fw_cmd_get_minidump_temp(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
