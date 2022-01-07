; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_init_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_init_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i32, i32, i64, i32, %struct.bcm_sysport_cb*, i64, i64, i64 }
%struct.bcm_sysport_cb = type { i64 }

@WORDS_PER_DESC = common dso_local global i32 0, align 4
@SYS_PORT_RDMA_OFFSET = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"CB allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DESC_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"SKB allocation failed\0A\00", align 1
@RDMA_STATUS = common dso_local global i32 0, align 4
@RDMA_DISABLED = common dso_local global i32 0, align 4
@RDMA_WRITE_PTR_LO = common dso_local global i32 0, align 4
@RDMA_WRITE_PTR_HI = common dso_local global i32 0, align 4
@RDMA_PROD_INDEX = common dso_local global i32 0, align 4
@RDMA_CONS_INDEX = common dso_local global i32 0, align 4
@RDMA_RING_SIZE_SHIFT = common dso_local global i32 0, align 4
@RX_BUF_LENGTH = common dso_local global i32 0, align 4
@RDMA_RING_BUF_SIZE = common dso_local global i32 0, align 4
@RDMA_START_ADDR_HI = common dso_local global i32 0, align 4
@RDMA_START_ADDR_LO = common dso_local global i32 0, align 4
@RDMA_END_ADDR_HI = common dso_local global i32 0, align 4
@RDMA_END_ADDR_LO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"RDMA cfg, num_rx_bds=%d, rx_bds=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sysport_priv*)* @bcm_sysport_init_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sysport_init_rx_ring(%struct.bcm_sysport_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_sysport_priv*, align 8
  %4 = alloca %struct.bcm_sysport_cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %3, align 8
  %8 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %9 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @WORDS_PER_DESC, align 4
  %12 = sdiv i32 %10, %11
  %13 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %14 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %16 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SYS_PORT_RDMA_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %21 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %23 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %25 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %27 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.bcm_sysport_cb* @kcalloc(i32 %28, i32 8, i32 %29)
  %31 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %32 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %31, i32 0, i32 4
  store %struct.bcm_sysport_cb* %30, %struct.bcm_sysport_cb** %32, align 8
  %33 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %34 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %33, i32 0, i32 4
  %35 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %34, align 8
  %36 = icmp ne %struct.bcm_sysport_cb* %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %1
  %38 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %39 = load i32, i32* @hw, align 4
  %40 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %41 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @netif_err(%struct.bcm_sysport_priv* %38, i32 %39, i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %148

46:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %70, %46
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %50 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %47
  %54 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %55 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %54, i32 0, i32 4
  %56 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.bcm_sysport_cb, %struct.bcm_sysport_cb* %56, i64 %58
  store %struct.bcm_sysport_cb* %59, %struct.bcm_sysport_cb** %4, align 8
  %60 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %61 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @DESC_SIZE, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %62, %66
  %68 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %4, align 8
  %69 = getelementptr inbounds %struct.bcm_sysport_cb, %struct.bcm_sysport_cb* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %53
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %47

73:                                               ; preds = %47
  %74 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %75 = call i32 @bcm_sysport_alloc_rx_bufs(%struct.bcm_sysport_priv* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %80 = load i32, i32* @hw, align 4
  %81 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %82 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @netif_err(%struct.bcm_sysport_priv* %79, i32 %80, i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %148

86:                                               ; preds = %73
  %87 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %88 = load i32, i32* @RDMA_STATUS, align 4
  %89 = call i32 @rdma_readl(%struct.bcm_sysport_priv* %87, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @RDMA_DISABLED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %86
  %95 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %96 = call i32 @rdma_enable_set(%struct.bcm_sysport_priv* %95, i32 0)
  br label %97

97:                                               ; preds = %94, %86
  %98 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %99 = load i32, i32* @RDMA_WRITE_PTR_LO, align 4
  %100 = call i32 @rdma_writel(%struct.bcm_sysport_priv* %98, i32 0, i32 %99)
  %101 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %102 = load i32, i32* @RDMA_WRITE_PTR_HI, align 4
  %103 = call i32 @rdma_writel(%struct.bcm_sysport_priv* %101, i32 0, i32 %102)
  %104 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %105 = load i32, i32* @RDMA_PROD_INDEX, align 4
  %106 = call i32 @rdma_writel(%struct.bcm_sysport_priv* %104, i32 0, i32 %105)
  %107 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %108 = load i32, i32* @RDMA_CONS_INDEX, align 4
  %109 = call i32 @rdma_writel(%struct.bcm_sysport_priv* %107, i32 0, i32 %108)
  %110 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %111 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %112 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @RDMA_RING_SIZE_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = load i32, i32* @RX_BUF_LENGTH, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @RDMA_RING_BUF_SIZE, align 4
  %119 = call i32 @rdma_writel(%struct.bcm_sysport_priv* %110, i32 %117, i32 %118)
  %120 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %121 = load i32, i32* @RDMA_START_ADDR_HI, align 4
  %122 = call i32 @rdma_writel(%struct.bcm_sysport_priv* %120, i32 0, i32 %121)
  %123 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %124 = load i32, i32* @RDMA_START_ADDR_LO, align 4
  %125 = call i32 @rdma_writel(%struct.bcm_sysport_priv* %123, i32 0, i32 %124)
  %126 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %127 = load i32, i32* @RDMA_END_ADDR_HI, align 4
  %128 = call i32 @rdma_writel(%struct.bcm_sysport_priv* %126, i32 0, i32 %127)
  %129 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %130 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %131 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 1
  %134 = load i32, i32* @RDMA_END_ADDR_LO, align 4
  %135 = call i32 @rdma_writel(%struct.bcm_sysport_priv* %129, i32 %133, i32 %134)
  %136 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %137 = load i32, i32* @hw, align 4
  %138 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %139 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %142 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %145 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @netif_dbg(%struct.bcm_sysport_priv* %136, i32 %137, i32 %140, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %143, i64 %146)
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %97, %78, %37
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.bcm_sysport_cb* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @netif_err(%struct.bcm_sysport_priv*, i32, i32, i8*) #1

declare dso_local i32 @bcm_sysport_alloc_rx_bufs(%struct.bcm_sysport_priv*) #1

declare dso_local i32 @rdma_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @rdma_enable_set(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @rdma_writel(%struct.bcm_sysport_priv*, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.bcm_sysport_priv*, i32, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
