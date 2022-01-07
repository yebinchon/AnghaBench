; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_rx_desc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_rx_desc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i32 }
%struct.xlgmac_desc_data = type { %struct.TYPE_6__, %struct.xlgmac_dma_desc* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.xlgmac_dma_desc = type { i8*, i8*, i8*, i8* }

@RX_NORMAL_DESC3_INTE_POS = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_INTE_LEN = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_OWN_POS = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_OWN_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*, %struct.xlgmac_desc_data*, i32)* @xlgmac_rx_desc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_rx_desc_reset(%struct.xlgmac_pdata* %0, %struct.xlgmac_desc_data* %1, i32 %2) #0 {
  %4 = alloca %struct.xlgmac_pdata*, align 8
  %5 = alloca %struct.xlgmac_desc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xlgmac_dma_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %4, align 8
  store %struct.xlgmac_desc_data* %1, %struct.xlgmac_desc_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %5, align 8
  %14 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %13, i32 0, i32 1
  %15 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %14, align 8
  store %struct.xlgmac_dma_desc* %15, %struct.xlgmac_dma_desc** %7, align 8
  %16 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %17 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %20 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32 1, i32* %12, align 4
  br label %40

28:                                               ; preds = %24, %3
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  %34 = load i32, i32* %8, align 4
  %35 = urem i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 1, i32* %12, align 4
  br label %39

38:                                               ; preds = %31, %28
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %27
  %41 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %5, align 8
  %42 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %5, align 8
  %47 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %45, %50
  store i64 %51, i64* %10, align 8
  %52 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %5, align 8
  %53 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %5, align 8
  %58 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %56, %61
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @lower_32_bits(i64 %63)
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %7, align 8
  %67 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @upper_32_bits(i64 %68)
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %7, align 8
  %72 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @lower_32_bits(i64 %73)
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %7, align 8
  %77 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @upper_32_bits(i64 %78)
  %80 = call i8* @cpu_to_le32(i32 %79)
  %81 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %7, align 8
  %82 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %7, align 8
  %84 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @RX_NORMAL_DESC3_INTE_POS, align 4
  %87 = load i32, i32* @RX_NORMAL_DESC3_INTE_LEN, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %7, align 8
  %91 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = call i32 (...) @dma_wmb()
  %93 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %7, align 8
  %94 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* @RX_NORMAL_DESC3_OWN_POS, align 4
  %97 = load i32, i32* @RX_NORMAL_DESC3_OWN_LEN, align 4
  %98 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %95, i32 %96, i32 %97, i32 1)
  %99 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %7, align 8
  %100 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = call i32 (...) @dma_wmb()
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i8* @XLGMAC_SET_REG_BITS_LE(i8*, i32, i32, i32) #1

declare dso_local i32 @dma_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
