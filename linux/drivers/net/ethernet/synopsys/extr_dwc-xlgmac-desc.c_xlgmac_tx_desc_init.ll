; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-desc.c_xlgmac_tx_desc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-desc.c_xlgmac_tx_desc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, %struct.xlgmac_channel*, %struct.xlgmac_hw_ops }
%struct.xlgmac_channel = type { %struct.xlgmac_ring* }
%struct.xlgmac_ring = type { i32, i32, i32, i64, i64, %struct.xlgmac_dma_desc* }
%struct.xlgmac_dma_desc = type { i32 }
%struct.xlgmac_hw_ops = type { i32 (%struct.xlgmac_channel.0*)* }
%struct.xlgmac_channel.0 = type opaque
%struct.xlgmac_desc_data = type { i32, %struct.xlgmac_dma_desc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_tx_desc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_tx_desc_init(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca %struct.xlgmac_hw_ops*, align 8
  %4 = alloca %struct.xlgmac_desc_data*, align 8
  %5 = alloca %struct.xlgmac_dma_desc*, align 8
  %6 = alloca %struct.xlgmac_channel*, align 8
  %7 = alloca %struct.xlgmac_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %11 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %12 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %11, i32 0, i32 2
  store %struct.xlgmac_hw_ops* %12, %struct.xlgmac_hw_ops** %3, align 8
  %13 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %14 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %13, i32 0, i32 1
  %15 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %14, align 8
  store %struct.xlgmac_channel* %15, %struct.xlgmac_channel** %6, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %75, %1
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %19 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %80

22:                                               ; preds = %16
  %23 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %6, align 8
  %24 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %23, i32 0, i32 0
  %25 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %24, align 8
  store %struct.xlgmac_ring* %25, %struct.xlgmac_ring** %7, align 8
  %26 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %27 = icmp ne %struct.xlgmac_ring* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %80

29:                                               ; preds = %22
  %30 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %31 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %30, i32 0, i32 5
  %32 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %31, align 8
  store %struct.xlgmac_dma_desc* %32, %struct.xlgmac_dma_desc** %5, align 8
  %33 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %34 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %58, %29
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %39 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %43, i32 %44)
  store %struct.xlgmac_desc_data* %45, %struct.xlgmac_desc_data** %4, align 8
  %46 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %5, align 8
  %47 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %4, align 8
  %48 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %47, i32 0, i32 1
  store %struct.xlgmac_dma_desc* %46, %struct.xlgmac_dma_desc** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %4, align 8
  %51 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %5, align 8
  %53 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %52, i32 1
  store %struct.xlgmac_dma_desc* %53, %struct.xlgmac_dma_desc** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 4
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %36

61:                                               ; preds = %36
  %62 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %63 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %65 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %67 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %66, i32 0, i32 2
  %68 = call i32 @memset(i32* %67, i32 0, i32 4)
  %69 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %3, align 8
  %70 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %69, i32 0, i32 0
  %71 = load i32 (%struct.xlgmac_channel.0*)*, i32 (%struct.xlgmac_channel.0*)** %70, align 8
  %72 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %6, align 8
  %73 = bitcast %struct.xlgmac_channel* %72 to %struct.xlgmac_channel.0*
  %74 = call i32 %71(%struct.xlgmac_channel.0* %73)
  br label %75

75:                                               ; preds = %61
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %6, align 8
  %79 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %78, i32 1
  store %struct.xlgmac_channel* %79, %struct.xlgmac_channel** %6, align 8
  br label %16

80:                                               ; preds = %28, %16
  ret void
}

declare dso_local %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
