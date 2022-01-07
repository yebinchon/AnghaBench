; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_alloc_hw_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_alloc_hw_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.pci_dev*, %struct.qlcnic_host_tx_ring*, %struct.qlcnic_recv_context* }
%struct.pci_dev = type { i32 }
%struct.qlcnic_host_tx_ring = type { i8*, i32, i32*, i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_sds_ring = type { i8*, i32 }
%struct.qlcnic_host_rds_ring = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_alloc_hw_resources(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_recv_context*, align 8
  %8 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %9 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %10 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 3
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %12, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 5
  %18 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %17, align 8
  store %struct.qlcnic_recv_context* %18, %struct.qlcnic_recv_context** %7, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %65, %1
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %19
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 4
  %28 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %28, i64 %30
  store %struct.qlcnic_host_tx_ring* %31, %struct.qlcnic_host_tx_ring** %10, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %35 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %34, i32 0, i32 3
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @dma_alloc_coherent(i32* %33, i32 4, i32* %35, i32 %36)
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %141

44:                                               ; preds = %25
  %45 = load i32*, i32** %11, align 8
  %46 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %47 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %51 = call i32 @TX_DESC_RINGSIZE(%struct.qlcnic_host_tx_ring* %50)
  %52 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %53 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %52, i32 0, i32 1
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @dma_alloc_coherent(i32* %49, i32 %51, i32* %53, i32 %54)
  store i8* %55, i8** %4, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %141

61:                                               ; preds = %44
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %64 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %19

68:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %101, %68
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %69
  %76 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %7, align 8
  %77 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %76, i32 0, i32 1
  %78 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %78, i64 %80
  store %struct.qlcnic_host_rds_ring* %81, %struct.qlcnic_host_rds_ring** %8, align 8
  %82 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %82, i32 0, i32 3
  %84 = load %struct.pci_dev*, %struct.pci_dev** %83, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %8, align 8
  %87 = call i32 @RCV_DESC_RINGSIZE(%struct.qlcnic_host_rds_ring* %86)
  %88 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %8, align 8
  %89 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %88, i32 0, i32 1
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i8* @dma_alloc_coherent(i32* %85, i32 %87, i32* %89, i32 %90)
  store i8* %91, i8** %4, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %75
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %141

97:                                               ; preds = %75
  %98 = load i8*, i8** %4, align 8
  %99 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %8, align 8
  %100 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %69

104:                                              ; preds = %69
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %137, %104
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %140

111:                                              ; preds = %105
  %112 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %7, align 8
  %113 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %112, i32 0, i32 0
  %114 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %114, i64 %116
  store %struct.qlcnic_host_sds_ring* %117, %struct.qlcnic_host_sds_ring** %9, align 8
  %118 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %119 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %118, i32 0, i32 3
  %120 = load %struct.pci_dev*, %struct.pci_dev** %119, align 8
  %121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 0
  %122 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %9, align 8
  %123 = call i32 @STATUS_DESC_RINGSIZE(%struct.qlcnic_host_sds_ring* %122)
  %124 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %9, align 8
  %125 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %124, i32 0, i32 1
  %126 = load i32, i32* @GFP_KERNEL, align 4
  %127 = call i8* @dma_alloc_coherent(i32* %121, i32 %123, i32* %125, i32 %126)
  store i8* %127, i8** %4, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %111
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %141

133:                                              ; preds = %111
  %134 = load i8*, i8** %4, align 8
  %135 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %9, align 8
  %136 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %105

140:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %145

141:                                              ; preds = %130, %94, %58, %41
  %142 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %143 = call i32 @qlcnic_free_hw_resources(%struct.qlcnic_adapter* %142)
  %144 = load i32, i32* %5, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %141, %140
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @TX_DESC_RINGSIZE(%struct.qlcnic_host_tx_ring*) #1

declare dso_local i32 @RCV_DESC_RINGSIZE(%struct.qlcnic_host_rds_ring*) #1

declare dso_local i32 @STATUS_DESC_RINGSIZE(%struct.qlcnic_host_sds_ring*) #1

declare dso_local i32 @qlcnic_free_hw_resources(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
