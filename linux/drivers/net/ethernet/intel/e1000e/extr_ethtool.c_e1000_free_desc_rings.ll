; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_free_desc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_free_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.pci_dev*, %struct.e1000_ring, %struct.e1000_ring }
%struct.pci_dev = type { i32 }
%struct.e1000_ring = type { i32, %struct.e1000_buffer*, i32*, i32, i32 }
%struct.e1000_buffer = type { i32, i32, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_free_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_free_desc_rings(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_ring*, align 8
  %4 = alloca %struct.e1000_ring*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.e1000_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 2
  store %struct.e1000_ring* %9, %struct.e1000_ring** %3, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 1
  store %struct.e1000_ring* %11, %struct.e1000_ring** %4, align 8
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %62

19:                                               ; preds = %1
  %20 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %20, i32 0, i32 1
  %22 = load %struct.e1000_buffer*, %struct.e1000_buffer** %21, align 8
  %23 = icmp ne %struct.e1000_buffer* %22, null
  br i1 %23, label %24, label %62

24:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %58, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %25
  %32 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %32, i32 0, i32 1
  %34 = load %struct.e1000_buffer*, %struct.e1000_buffer** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %34, i64 %36
  store %struct.e1000_buffer* %37, %struct.e1000_buffer** %6, align 8
  %38 = load %struct.e1000_buffer*, %struct.e1000_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %31
  %43 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load %struct.e1000_buffer*, %struct.e1000_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.e1000_buffer*, %struct.e1000_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DMA_TO_DEVICE, align 4
  %52 = call i32 @dma_unmap_single(i32* %44, i64 %47, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %42, %31
  %54 = load %struct.e1000_buffer*, %struct.e1000_buffer** %6, align 8
  %55 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_kfree_skb(i32 %56)
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %25

61:                                               ; preds = %25
  br label %62

62:                                               ; preds = %61, %19, %1
  %63 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %64 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %107

67:                                               ; preds = %62
  %68 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %69 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %68, i32 0, i32 1
  %70 = load %struct.e1000_buffer*, %struct.e1000_buffer** %69, align 8
  %71 = icmp ne %struct.e1000_buffer* %70, null
  br i1 %71, label %72, label %107

72:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %103, %72
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %76 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %73
  %80 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %81 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %80, i32 0, i32 1
  %82 = load %struct.e1000_buffer*, %struct.e1000_buffer** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %82, i64 %84
  store %struct.e1000_buffer* %85, %struct.e1000_buffer** %6, align 8
  %86 = load %struct.e1000_buffer*, %struct.e1000_buffer** %6, align 8
  %87 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %79
  %91 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 0
  %93 = load %struct.e1000_buffer*, %struct.e1000_buffer** %6, align 8
  %94 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %97 = call i32 @dma_unmap_single(i32* %92, i64 %95, i32 2048, i32 %96)
  br label %98

98:                                               ; preds = %90, %79
  %99 = load %struct.e1000_buffer*, %struct.e1000_buffer** %6, align 8
  %100 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_kfree_skb(i32 %101)
  br label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %73

106:                                              ; preds = %73
  br label %107

107:                                              ; preds = %106, %67, %62
  %108 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %109 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %127

112:                                              ; preds = %107
  %113 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 0
  %115 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %116 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %119 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %122 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dma_free_coherent(i32* %114, i32 %117, i32* %120, i32 %123)
  %125 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %126 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %125, i32 0, i32 2
  store i32* null, i32** %126, align 8
  br label %127

127:                                              ; preds = %112, %107
  %128 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %129 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %134 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %133, i32 0, i32 0
  %135 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %136 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %139 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %142 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @dma_free_coherent(i32* %134, i32 %137, i32* %140, i32 %143)
  %145 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %146 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %145, i32 0, i32 2
  store i32* null, i32** %146, align 8
  br label %147

147:                                              ; preds = %132, %127
  %148 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %149 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %148, i32 0, i32 1
  %150 = load %struct.e1000_buffer*, %struct.e1000_buffer** %149, align 8
  %151 = call i32 @kfree(%struct.e1000_buffer* %150)
  %152 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %153 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %152, i32 0, i32 1
  store %struct.e1000_buffer* null, %struct.e1000_buffer** %153, align 8
  %154 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %155 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %154, i32 0, i32 1
  %156 = load %struct.e1000_buffer*, %struct.e1000_buffer** %155, align 8
  %157 = call i32 @kfree(%struct.e1000_buffer* %156)
  %158 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %159 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %158, i32 0, i32 1
  store %struct.e1000_buffer* null, %struct.e1000_buffer** %159, align 8
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.e1000_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
