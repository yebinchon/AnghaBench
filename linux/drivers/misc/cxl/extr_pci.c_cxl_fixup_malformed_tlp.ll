; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_fixup_malformed_tlp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_fixup_malformed_tlp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@PCI_ERR_UNCOR_MASK = common dso_local global i64 0, align 8
@PCI_ERR_UNC_MALF_TLP = common dso_local global i32 0, align 4
@PCI_ERR_UNC_INTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl*, %struct.pci_dev*)* @cxl_fixup_malformed_tlp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxl_fixup_malformed_tlp(%struct.cxl* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.cxl*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cxl* %0, %struct.cxl** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %7 = load %struct.cxl*, %struct.cxl** %3, align 8
  %8 = getelementptr inbounds %struct.cxl, %struct.cxl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 61440
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %51

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = load i32, i32* @PCI_EXT_CAP_ID_ERR, align 4
  %16 = call i32 @pci_find_ext_capability(%struct.pci_dev* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %51

19:                                               ; preds = %13
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @PCI_ERR_UNCOR_MASK, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @pci_read_config_dword(%struct.pci_dev* %20, i64 %24, i32* %6)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PCI_ERR_UNC_MALF_TLP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PCI_ERR_UNC_INTN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %51

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %19
  %38 = load i32, i32* @PCI_ERR_UNC_MALF_TLP, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @PCI_ERR_UNC_INTN, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @PCI_ERR_UNCOR_MASK, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @pci_write_config_dword(%struct.pci_dev* %44, i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %37, %35, %18, %12
  ret void
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
