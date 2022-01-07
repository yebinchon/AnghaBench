; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_nfp6000_read_serial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_nfp6000_read_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_EXT_CAP_ID_DSN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"can't find PCIe Serial Number Capability\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32*)* @nfp6000_read_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp6000_read_serial(%struct.device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.pci_dev* @to_pci_dev(%struct.device* %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %12 = load i32, i32* @PCI_EXT_CAP_ID_DSN, align 4
  %13 = call i32 @pci_find_ext_capability(%struct.pci_dev* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 4
  %25 = call i32 @pci_read_config_dword(%struct.pci_dev* %22, i32 %24, i32* %8)
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 16
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = call i32 @put_unaligned_be16(i32 %27, i32* %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 8
  %34 = call i32 @pci_read_config_dword(%struct.pci_dev* %31, i32 %33, i32* %8)
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @put_unaligned_be32(i32 %35, i32* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %21, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
