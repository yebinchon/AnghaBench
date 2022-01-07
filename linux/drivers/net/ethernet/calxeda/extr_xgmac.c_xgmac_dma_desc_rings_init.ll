; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_dma_desc_rings_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_dma_desc_rings_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.xgmac_priv = type { i32, i8*, i64, i8*, i32, i8*, i64, i64, i8*, i64, i64, i64, i64, i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"mtu [%d] bfsize [%d]\0A\00", align 1
@DMA_RX_RING_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TX_RING_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"DMA desc rings: virt addr (Rx %p, Tx %p)\0A\09DMA phy addr (Rx 0x%08x, Tx 0x%08x)\0A\00", align 1
@XGMAC_DMA_TX_BASE_ADDR = common dso_local global i64 0, align 8
@XGMAC_DMA_RX_BASE_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xgmac_dma_desc_rings_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgmac_dma_desc_rings_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.xgmac_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.xgmac_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.xgmac_priv* %7, %struct.xgmac_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ETH_HLEN, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i64, i64* @ETH_FCS_LEN, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* @NET_IP_ALIGN, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @ALIGN(i64 %16, i32 8)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %19 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %18, i32 0, i32 13
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i32, i8*, i8*, i32, ...) @netdev_dbg(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25)
  %27 = load i32, i32* @DMA_RX_RING_SZ, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kcalloc(i32 %27, i32 8, i32 %28)
  %30 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %31 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %33 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %179

39:                                               ; preds = %1
  %40 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %41 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DMA_RX_RING_SZ, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %48 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %47, i32 0, i32 2
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @dma_alloc_coherent(i32 %42, i32 %46, i64* %48, i32 %49)
  %51 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %52 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %54 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %39
  br label %172

58:                                               ; preds = %39
  %59 = load i32, i32* @DMA_TX_RING_SZ, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kcalloc(i32 %59, i32 8, i32 %60)
  %62 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %63 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %62, i32 0, i32 5
  store i8* %61, i8** %63, align 8
  %64 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %65 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %64, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %58
  br label %157

69:                                               ; preds = %58
  %70 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %71 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @DMA_TX_RING_SZ, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %78 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %77, i32 0, i32 7
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i8* @dma_alloc_coherent(i32 %72, i32 %76, i64* %78, i32 %79)
  %81 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %82 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %81, i32 0, i32 8
  store i8* %80, i8** %82, align 8
  %83 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %84 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %83, i32 0, i32 8
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %69
  br label %152

88:                                               ; preds = %69
  %89 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %90 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %89, i32 0, i32 13
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %93 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %96 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %95, i32 0, i32 8
  %97 = load i8*, i8** %96, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %100 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %104 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 (i32, i8*, i8*, i32, ...) @netdev_dbg(i32 %91, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i8* %94, i32 %98, i32 %102, i32 %106)
  %108 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %109 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %108, i32 0, i32 12
  store i64 0, i64* %109, align 8
  %110 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %111 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %110, i32 0, i32 11
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %114 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %116 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* @DMA_RX_RING_SZ, align 4
  %119 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %120 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @desc_init_rx_desc(i8* %117, i32 %118, i32 %121)
  %123 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %124 = call i32 @xgmac_rx_refill(%struct.xgmac_priv* %123)
  %125 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %126 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %125, i32 0, i32 10
  store i64 0, i64* %126, align 8
  %127 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %128 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %127, i32 0, i32 9
  store i64 0, i64* %128, align 8
  %129 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %130 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %129, i32 0, i32 8
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* @DMA_TX_RING_SZ, align 4
  %133 = call i32 @desc_init_tx_desc(i8* %131, i32 %132)
  %134 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %135 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %138 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @XGMAC_DMA_TX_BASE_ADDR, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writel(i64 %136, i64 %141)
  %143 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %144 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %147 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %146, i32 0, i32 6
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @XGMAC_DMA_RX_BASE_ADDR, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @writel(i64 %145, i64 %150)
  store i32 0, i32* %2, align 4
  br label %179

152:                                              ; preds = %87
  %153 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %154 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %153, i32 0, i32 5
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @kfree(i8* %155)
  br label %157

157:                                              ; preds = %152, %68
  %158 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %159 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @DMA_RX_RING_SZ, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 4
  %164 = trunc i64 %163 to i32
  %165 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %166 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %165, i32 0, i32 3
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %169 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @dma_free_coherent(i32 %160, i32 %164, i8* %167, i64 %170)
  br label %172

172:                                              ; preds = %157, %57
  %173 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %174 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @kfree(i8* %175)
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %172, %88, %36
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.xgmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i8*, i32, ...) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @desc_init_rx_desc(i8*, i32, i32) #1

declare dso_local i32 @xgmac_rx_refill(%struct.xgmac_priv*) #1

declare dso_local i32 @desc_init_tx_desc(i8*, i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
