; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_nx_update_dma_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_nx_update_dma_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_3__, %struct.pci_dev* }
%struct.TYPE_3__ = type { i64 }
%struct.pci_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@CRB_DMA_SHIFT = common dso_local global i32 0, align 4
@NX_P2_C1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"using %d-bit dma mask\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*)* @nx_update_dma_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_update_dma_mask(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %11, i32 0, i32 1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %10, align 8
  store i32 0, i32* %4, align 4
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %15 = load i32, i32* @CRB_DMA_SHIFT, align 4
  %16 = call i32 @NXRD32(%struct.netxen_adapter* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 32
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

20:                                               ; preds = %1
  %21 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @NX_IS_REVISION_P3(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 9
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %43

31:                                               ; preds = %27, %20
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NX_P2_C1, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = icmp sle i32 %39, 4
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %38, %31
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %43
  %47 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 32, %54
  %56 = call i32 @DMA_BIT_MASK(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @pci_set_dma_mask(%struct.pci_dev* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  br label %85

63:                                               ; preds = %46
  %64 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @NX_IS_REVISION_P3(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %85

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %63
  %79 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 32, %81
  %83 = call i32 @dev_info(%struct.TYPE_4__* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %43
  store i32 0, i32* %2, align 4
  br label %93

85:                                               ; preds = %76, %62
  %86 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @pci_set_dma_mask(%struct.pci_dev* %86, i32 %87)
  %89 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %89, i32 %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %85, %84, %19
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i64 @NX_IS_REVISION_P3(i64) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
