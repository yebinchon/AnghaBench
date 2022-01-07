; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_nfp_cpp_from_nfp6000_pcie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_nfp_cpp_from_nfp6000_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%struct.pci_dev = type { i32 }
%struct.nfp6000_pcie = type { i32, i32, %struct.pci_dev*, i32* }

@.str = private unnamed_addr constant [66 x i8] c"Netronome Flow Processor NFP4000/NFP5000/NFP6000 PCIe Card Probe\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFP_CPP_INTERFACE_TYPE_PCI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Interface type %d is not the expected %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NFP_CPP_INTERFACE_CHANNEL_PEROPENER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Interface channel %d is not the expected %d\0A\00", align 1
@nfp6000_pcie_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"NFP6000 PCI setup failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_cpp* @nfp_cpp_from_nfp6000_pcie(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.nfp_cpp*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.nfp6000_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = call i32 @dev_info(i32* %8, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call i32 @pcie_print_link_status(%struct.pci_dev* %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.nfp6000_pcie* @kzalloc(i32 24, i32 %12)
  store %struct.nfp6000_pcie* %13, %struct.nfp6000_pcie** %4, align 8
  %14 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %15 = icmp ne %struct.nfp6000_pcie* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %78

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %23 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %22, i32 0, i32 3
  store i32* %21, i32** %23, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %26 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %25, i32 0, i32 2
  store %struct.pci_dev* %24, %struct.pci_dev** %26, align 8
  %27 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %28 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %27, i32 0, i32 1
  %29 = call i32 @init_waitqueue_head(i32* %28)
  %30 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %31 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 @nfp6000_get_interface(i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @NFP_CPP_INTERFACE_TYPE_of(i32 %36)
  %38 = load i64, i64* @NFP_CPP_INTERFACE_TYPE_PCI, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %19
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @NFP_CPP_INTERFACE_TYPE_of(i32 %43)
  %45 = load i64, i64* @NFP_CPP_INTERFACE_TYPE_PCI, align 8
  %46 = call i32 (i32*, i8*, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %45)
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %75

49:                                               ; preds = %19
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @NFP_CPP_INTERFACE_CHANNEL_of(i32 %50)
  %52 = load i64, i64* @NFP_CPP_INTERFACE_CHANNEL_PEROPENER, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @NFP_CPP_INTERFACE_CHANNEL_of(i32 %57)
  %59 = load i64, i64* @NFP_CPP_INTERFACE_CHANNEL_PEROPENER, align 8
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %58, i64 %59)
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %75

63:                                               ; preds = %49
  %64 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @enable_bars(%struct.nfp6000_pcie* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %75

70:                                               ; preds = %63
  %71 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %74 = call %struct.nfp_cpp* @nfp_cpp_from_operations(i32* @nfp6000_pcie_ops, i32* %72, %struct.nfp6000_pcie* %73)
  store %struct.nfp_cpp* %74, %struct.nfp_cpp** %2, align 8
  br label %84

75:                                               ; preds = %69, %54, %40
  %76 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %77 = call i32 @kfree(%struct.nfp6000_pcie* %76)
  br label %78

78:                                               ; preds = %75, %16
  %79 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = call i32 (i32*, i8*, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* %6, align 4
  %83 = call %struct.nfp_cpp* @ERR_PTR(i32 %82)
  store %struct.nfp_cpp* %83, %struct.nfp_cpp** %2, align 8
  br label %84

84:                                               ; preds = %78, %70
  %85 = load %struct.nfp_cpp*, %struct.nfp_cpp** %2, align 8
  ret %struct.nfp_cpp* %85
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pcie_print_link_status(%struct.pci_dev*) #1

declare dso_local %struct.nfp6000_pcie* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @nfp6000_get_interface(i32*) #1

declare dso_local i64 @NFP_CPP_INTERFACE_TYPE_of(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @NFP_CPP_INTERFACE_CHANNEL_of(i32) #1

declare dso_local i32 @enable_bars(%struct.nfp6000_pcie*, i32) #1

declare dso_local %struct.nfp_cpp* @nfp_cpp_from_operations(i32*, i32*, %struct.nfp6000_pcie*) #1

declare dso_local i32 @kfree(%struct.nfp6000_pcie*) #1

declare dso_local %struct.nfp_cpp* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
