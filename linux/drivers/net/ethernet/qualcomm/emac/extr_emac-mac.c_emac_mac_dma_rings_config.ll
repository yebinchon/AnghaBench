; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_dma_rings_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_dma_rings_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i32, i64, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@EMAC_DESC_CTRL_1 = common dso_local global i64 0, align 8
@EMAC_DESC_CTRL_8 = common dso_local global i64 0, align 8
@TPD_RING_SIZE_BMSK = common dso_local global i32 0, align 4
@EMAC_DESC_CTRL_9 = common dso_local global i64 0, align 8
@EMAC_DESC_CTRL_0 = common dso_local global i64 0, align 8
@EMAC_DESC_CTRL_2 = common dso_local global i64 0, align 8
@EMAC_DESC_CTRL_5 = common dso_local global i64 0, align 8
@RFD_RING_SIZE_BMSK = common dso_local global i32 0, align 4
@EMAC_DESC_CTRL_3 = common dso_local global i64 0, align 8
@RRD_RING_SIZE_BMSK = common dso_local global i32 0, align 4
@EMAC_DESC_CTRL_6 = common dso_local global i64 0, align 8
@RX_BUFFER_SIZE_BMSK = common dso_local global i32 0, align 4
@EMAC_DESC_CTRL_4 = common dso_local global i64 0, align 8
@EMAC_DESC_CTRL_11 = common dso_local global i64 0, align 8
@EMAC_INTER_SRAM_PART9 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*)* @emac_mac_dma_rings_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_mac_dma_rings_config(%struct.emac_adapter* %0) #0 {
  %2 = alloca %struct.emac_adapter*, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %2, align 8
  %3 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @upper_32_bits(i32 %7)
  %9 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EMAC_DESC_CTRL_1, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 %8, i64 %13)
  %15 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @lower_32_bits(i32 %19)
  %21 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EMAC_DESC_CTRL_8, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TPD_RING_SIZE_BMSK, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EMAC_DESC_CTRL_9, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @upper_32_bits(i32 %44)
  %46 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EMAC_DESC_CTRL_0, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  %52 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lower_32_bits(i32 %56)
  %58 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @EMAC_DESC_CTRL_2, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  %64 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %65 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @lower_32_bits(i32 %68)
  %70 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EMAC_DESC_CTRL_5, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  %76 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @RFD_RING_SIZE_BMSK, align 4
  %82 = and i32 %80, %81
  %83 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @EMAC_DESC_CTRL_3, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 %82, i64 %87)
  %89 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @RRD_RING_SIZE_BMSK, align 4
  %95 = and i32 %93, %94
  %96 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @EMAC_DESC_CTRL_6, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 %95, i64 %100)
  %102 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %103 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @RX_BUFFER_SIZE_BMSK, align 4
  %106 = and i32 %104, %105
  %107 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %108 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @EMAC_DESC_CTRL_4, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 %106, i64 %111)
  %113 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %114 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @EMAC_DESC_CTRL_11, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 0, i64 %117)
  %119 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %120 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @EMAC_INTER_SRAM_PART9, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @writel(i32 1, i64 %123)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
