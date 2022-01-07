; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_find_dvsec_afu_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_find_dvsec_afu_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@OCXL_EXT_CAP_ID_DVSEC = common dso_local global i32 0, align 4
@OCXL_DVSEC_VENDOR_OFFSET = common dso_local global i64 0, align 8
@OCXL_DVSEC_ID_OFFSET = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_IBM = common dso_local global i64 0, align 8
@OCXL_DVSEC_AFU_CTRL_ID = common dso_local global i64 0, align 8
@OCXL_DVSEC_AFU_CTRL_AFU_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @find_dvsec_afu_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_dvsec_afu_ctrl(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %49, %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @OCXL_EXT_CAP_ID_DVSEC, align 4
  %14 = call i32 @pci_find_next_ext_capability(%struct.pci_dev* %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %10
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @OCXL_DVSEC_VENDOR_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @pci_read_config_word(%struct.pci_dev* %17, i64 %21, i64* %7)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @OCXL_DVSEC_ID_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @pci_read_config_word(%struct.pci_dev* %23, i64 %27, i64* %8)
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @PCI_VENDOR_ID_IBM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %16
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @OCXL_DVSEC_AFU_CTRL_ID, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @OCXL_DVSEC_AFU_CTRL_AFU_IDX, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @pci_read_config_byte(%struct.pci_dev* %37, i64 %41, i64* %9)
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %51

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %32, %16
  br label %10

50:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %46
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @pci_find_next_ext_capability(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i64*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
