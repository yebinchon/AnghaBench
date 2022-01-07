; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_rx_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_rx_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_channel = type { %struct.xlgmac_ring*, %struct.xlgmac_pdata* }
%struct.xlgmac_ring = type { i64, i64 }
%struct.xlgmac_pdata = type { %struct.xlgmac_hw_ops, %struct.xlgmac_desc_ops }
%struct.xlgmac_hw_ops = type { i32 (%struct.xlgmac_pdata.0*, %struct.xlgmac_desc_data*, i64)* }
%struct.xlgmac_pdata.0 = type opaque
%struct.xlgmac_desc_data = type opaque
%struct.xlgmac_desc_ops = type { i64 (%struct.xlgmac_pdata.1*, %struct.xlgmac_ring*, %struct.xlgmac_desc_data.2*)*, i32 (%struct.xlgmac_pdata.3*, %struct.xlgmac_desc_data.4*)* }
%struct.xlgmac_pdata.1 = type opaque
%struct.xlgmac_desc_data.2 = type opaque
%struct.xlgmac_pdata.3 = type opaque
%struct.xlgmac_desc_data.4 = type opaque
%struct.xlgmac_desc_data.5 = type { i32 }

@DMA_CH_RDTR_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_channel*)* @xlgmac_rx_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_rx_refresh(%struct.xlgmac_channel* %0) #0 {
  %2 = alloca %struct.xlgmac_channel*, align 8
  %3 = alloca %struct.xlgmac_pdata*, align 8
  %4 = alloca %struct.xlgmac_ring*, align 8
  %5 = alloca %struct.xlgmac_desc_data.5*, align 8
  %6 = alloca %struct.xlgmac_desc_ops*, align 8
  %7 = alloca %struct.xlgmac_hw_ops*, align 8
  store %struct.xlgmac_channel* %0, %struct.xlgmac_channel** %2, align 8
  %8 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %9 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %8, i32 0, i32 1
  %10 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  store %struct.xlgmac_pdata* %10, %struct.xlgmac_pdata** %3, align 8
  %11 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %12 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %11, i32 0, i32 0
  %13 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %12, align 8
  store %struct.xlgmac_ring* %13, %struct.xlgmac_ring** %4, align 8
  %14 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %15 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %14, i32 0, i32 1
  store %struct.xlgmac_desc_ops* %15, %struct.xlgmac_desc_ops** %6, align 8
  %16 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %17 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %16, i32 0, i32 0
  store %struct.xlgmac_hw_ops* %17, %struct.xlgmac_hw_ops** %7, align 8
  br label %18

18:                                               ; preds = %51, %1
  %19 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %20 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %23 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %18
  %27 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %28 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %29 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.xlgmac_desc_data.5* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %27, i64 %30)
  store %struct.xlgmac_desc_data.5* %31, %struct.xlgmac_desc_data.5** %5, align 8
  %32 = load %struct.xlgmac_desc_ops*, %struct.xlgmac_desc_ops** %6, align 8
  %33 = getelementptr inbounds %struct.xlgmac_desc_ops, %struct.xlgmac_desc_ops* %32, i32 0, i32 1
  %34 = load i32 (%struct.xlgmac_pdata.3*, %struct.xlgmac_desc_data.4*)*, i32 (%struct.xlgmac_pdata.3*, %struct.xlgmac_desc_data.4*)** %33, align 8
  %35 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %36 = bitcast %struct.xlgmac_pdata* %35 to %struct.xlgmac_pdata.3*
  %37 = load %struct.xlgmac_desc_data.5*, %struct.xlgmac_desc_data.5** %5, align 8
  %38 = bitcast %struct.xlgmac_desc_data.5* %37 to %struct.xlgmac_desc_data.4*
  %39 = call i32 %34(%struct.xlgmac_pdata.3* %36, %struct.xlgmac_desc_data.4* %38)
  %40 = load %struct.xlgmac_desc_ops*, %struct.xlgmac_desc_ops** %6, align 8
  %41 = getelementptr inbounds %struct.xlgmac_desc_ops, %struct.xlgmac_desc_ops* %40, i32 0, i32 0
  %42 = load i64 (%struct.xlgmac_pdata.1*, %struct.xlgmac_ring*, %struct.xlgmac_desc_data.2*)*, i64 (%struct.xlgmac_pdata.1*, %struct.xlgmac_ring*, %struct.xlgmac_desc_data.2*)** %41, align 8
  %43 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %44 = bitcast %struct.xlgmac_pdata* %43 to %struct.xlgmac_pdata.1*
  %45 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %46 = load %struct.xlgmac_desc_data.5*, %struct.xlgmac_desc_data.5** %5, align 8
  %47 = bitcast %struct.xlgmac_desc_data.5* %46 to %struct.xlgmac_desc_data.2*
  %48 = call i64 %42(%struct.xlgmac_pdata.1* %44, %struct.xlgmac_ring* %45, %struct.xlgmac_desc_data.2* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %26
  br label %67

51:                                               ; preds = %26
  %52 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %7, align 8
  %53 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %52, i32 0, i32 0
  %54 = load i32 (%struct.xlgmac_pdata.0*, %struct.xlgmac_desc_data*, i64)*, i32 (%struct.xlgmac_pdata.0*, %struct.xlgmac_desc_data*, i64)** %53, align 8
  %55 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %56 = bitcast %struct.xlgmac_pdata* %55 to %struct.xlgmac_pdata.0*
  %57 = load %struct.xlgmac_desc_data.5*, %struct.xlgmac_desc_data.5** %5, align 8
  %58 = bitcast %struct.xlgmac_desc_data.5* %57 to %struct.xlgmac_desc_data*
  %59 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %60 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 %54(%struct.xlgmac_pdata.0* %56, %struct.xlgmac_desc_data* %58, i64 %61)
  %63 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %64 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  br label %18

67:                                               ; preds = %50, %18
  %68 = call i32 (...) @wmb()
  %69 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %70 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %71 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, 1
  %74 = call %struct.xlgmac_desc_data.5* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %69, i64 %73)
  store %struct.xlgmac_desc_data.5* %74, %struct.xlgmac_desc_data.5** %5, align 8
  %75 = load %struct.xlgmac_desc_data.5*, %struct.xlgmac_desc_data.5** %5, align 8
  %76 = getelementptr inbounds %struct.xlgmac_desc_data.5, %struct.xlgmac_desc_data.5* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @lower_32_bits(i32 %77)
  %79 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %80 = load i32, i32* @DMA_CH_RDTR_LO, align 4
  %81 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %79, i32 %80)
  %82 = call i32 @writel(i32 %78, i32 %81)
  ret void
}

declare dso_local %struct.xlgmac_desc_data.5* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
