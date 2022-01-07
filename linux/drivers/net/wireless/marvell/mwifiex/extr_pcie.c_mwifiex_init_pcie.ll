; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_init_pcie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_init_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { i8*, i8*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"set_dma_mask(32) failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"set_consistent_dma_mask(64) failed\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"req_reg(0) error\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"iomap(0) error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"req_reg(2) error\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"iomap(2) error\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"PCI memory map Virt0: %pK PCI memory map Virt2: %pK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_init_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_init_pcie(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.pcie_service_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %7 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %7, i32 0, i32 0
  %9 = load %struct.pcie_service_card*, %struct.pcie_service_card** %8, align 8
  store %struct.pcie_service_card* %9, %struct.pcie_service_card** %4, align 8
  %10 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %11 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %10, i32 0, i32 2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %14 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %15 = call i32 @pci_set_drvdata(%struct.pci_dev* %13, %struct.pcie_service_card* %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %17 = call i32 @pci_enable_device(%struct.pci_dev* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %118

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = call i32 @pci_set_master(%struct.pci_dev* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %25 = call i32 @DMA_BIT_MASK(i32 32)
  %26 = call i32 @pci_set_dma_mask(%struct.pci_dev* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %115

32:                                               ; preds = %21
  %33 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %34 = call i32 @DMA_BIT_MASK(i32 32)
  %35 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %115

40:                                               ; preds = %32
  %41 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %42 = load i32, i32* @DRV_NAME, align 4
  %43 = call i32 @pci_request_region(%struct.pci_dev* %41, i32 0, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %114

48:                                               ; preds = %40
  %49 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %50 = call i8* @pci_iomap(%struct.pci_dev* %49, i32 0, i32 0)
  %51 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %52 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %54 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %48
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %111

61:                                               ; preds = %48
  %62 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %63 = load i32, i32* @DRV_NAME, align 4
  %64 = call i32 @pci_request_region(%struct.pci_dev* %62, i32 2, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %105

69:                                               ; preds = %61
  %70 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %71 = call i8* @pci_iomap(%struct.pci_dev* %70, i32 2, i32 0)
  %72 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %73 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %75 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %69
  %79 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %102

82:                                               ; preds = %69
  %83 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %84 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %87 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @pr_notice(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %85, i8* %88)
  %90 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %91 = call i32 @mwifiex_pcie_alloc_buffers(%struct.mwifiex_adapter* %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %96

95:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %120

96:                                               ; preds = %94
  %97 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %98 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %99 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @pci_iounmap(%struct.pci_dev* %97, i8* %100)
  br label %102

102:                                              ; preds = %96, %78
  %103 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %104 = call i32 @pci_release_region(%struct.pci_dev* %103, i32 2)
  br label %105

105:                                              ; preds = %102, %67
  %106 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %107 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %108 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @pci_iounmap(%struct.pci_dev* %106, i8* %109)
  br label %111

111:                                              ; preds = %105, %57
  %112 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %113 = call i32 @pci_release_region(%struct.pci_dev* %112, i32 0)
  br label %114

114:                                              ; preds = %111, %46
  br label %115

115:                                              ; preds = %114, %38, %29
  %116 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %117 = call i32 @pci_disable_device(%struct.pci_dev* %116)
  br label %118

118:                                              ; preds = %115, %20
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %95
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.pcie_service_card*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i32) #1

declare dso_local i8* @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i8*, i8*) #1

declare dso_local i32 @mwifiex_pcie_alloc_buffers(%struct.mwifiex_adapter*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
