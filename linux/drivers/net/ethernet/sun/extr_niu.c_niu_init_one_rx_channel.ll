; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_one_rx_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_one_rx_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }
%struct.rx_ring_info = type { i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@RX_DMA_ENT_MSK_RBR_EMPTY = common dso_local global i32 0, align 4
@RX_DMA_CTL_STAT_MEX = common dso_local global i32 0, align 4
@RX_DMA_CTL_STAT_RCRTHRES = common dso_local global i32 0, align 4
@RX_DMA_CTL_STAT_RCRTO = common dso_local global i32 0, align 4
@RX_DMA_CTL_STAT_RBR_EMPTY = common dso_local global i32 0, align 4
@RXDMA_CFIG2_MBADDR_L = common dso_local global i32 0, align 4
@RXDMA_CFIG2_FULL_HDR = common dso_local global i32 0, align 4
@RBR_CFIG_A_LEN_SHIFT = common dso_local global i32 0, align 4
@RBR_CFIG_A_STADDR_BASE = common dso_local global i32 0, align 4
@RBR_CFIG_A_STADDR = common dso_local global i32 0, align 4
@RCRCFIG_A_LEN_SHIFT = common dso_local global i32 0, align 4
@RCRCFIG_A_STADDR_BASE = common dso_local global i32 0, align 4
@RCRCFIG_A_STADDR = common dso_local global i32 0, align 4
@RCRCFIG_B_PTHRES_SHIFT = common dso_local global i32 0, align 4
@RCRCFIG_B_ENTOUT = common dso_local global i32 0, align 4
@RCRCFIG_B_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.rx_ring_info*)* @niu_init_one_rx_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_init_one_rx_channel(%struct.niu* %0, %struct.rx_ring_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.niu*, align 8
  %5 = alloca %struct.rx_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %5, align 8
  %9 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %10 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.niu*, %struct.niu** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @niu_rx_channel_reset(%struct.niu* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %149

19:                                               ; preds = %2
  %20 = load %struct.niu*, %struct.niu** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @niu_rx_channel_lpage_init(%struct.niu* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %149

27:                                               ; preds = %19
  %28 = load %struct.niu*, %struct.niu** %4, align 8
  %29 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %30 = call i32 @niu_rx_channel_wred_init(%struct.niu* %28, %struct.rx_ring_info* %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @RX_DMA_ENT_MSK(i32 %31)
  %33 = load i32, i32* @RX_DMA_ENT_MSK_RBR_EMPTY, align 4
  %34 = call i32 @nw64(i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @RX_DMA_CTL_STAT(i32 %35)
  %37 = load i32, i32* @RX_DMA_CTL_STAT_MEX, align 4
  %38 = load i32, i32* @RX_DMA_CTL_STAT_RCRTHRES, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @RX_DMA_CTL_STAT_RCRTO, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RX_DMA_CTL_STAT_RBR_EMPTY, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @nw64(i32 %36, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @RXDMA_CFIG1(i32 %45)
  %47 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %48 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 32
  %51 = call i32 @nw64(i32 %46, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @RXDMA_CFIG2(i32 %52)
  %54 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %55 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @RXDMA_CFIG2_MBADDR_L, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @RXDMA_CFIG2_FULL_HDR, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @nw64(i32 %53, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @RBR_CFIG_A(i32 %62)
  %64 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %65 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %64, i32 0, i32 8
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @RBR_CFIG_A_LEN_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %71 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @RBR_CFIG_A_STADDR_BASE, align 4
  %74 = load i32, i32* @RBR_CFIG_A_STADDR, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = or i32 %69, %76
  %78 = call i32 @nw64(i32 %63, i32 %77)
  %79 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %80 = call i32 @niu_compute_rbr_cfig_b(%struct.rx_ring_info* %79, i32* %8)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %27
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %149

85:                                               ; preds = %27
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @RBR_CFIG_B(i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @nw64(i32 %87, i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @RCRCFIG_A(i32 %90)
  %92 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %93 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* @RCRCFIG_A_LEN_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %99 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @RCRCFIG_A_STADDR_BASE, align 4
  %102 = load i32, i32* @RCRCFIG_A_STADDR, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = or i32 %97, %104
  %106 = call i32 @nw64(i32 %91, i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @RCRCFIG_B(i32 %107)
  %109 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %110 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* @RCRCFIG_B_PTHRES_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = load i32, i32* @RCRCFIG_B_ENTOUT, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %118 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load i32, i32* @RCRCFIG_B_TIMEOUT_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = or i32 %116, %122
  %124 = call i32 @nw64(i32 %108, i32 %123)
  %125 = load %struct.niu*, %struct.niu** %4, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @niu_enable_rx_channel(%struct.niu* %125, i32 %126, i32 1)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %85
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %3, align 4
  br label %149

132:                                              ; preds = %85
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @RBR_KICK(i32 %133)
  %135 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %136 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @nw64(i32 %134, i32 %137)
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @RX_DMA_CTL_STAT(i32 %139)
  %141 = call i32 @nr64(i32 %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* @RX_DMA_CTL_STAT_RBR_EMPTY, align 4
  %143 = load i32, i32* %8, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @RX_DMA_CTL_STAT(i32 %145)
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @nw64(i32 %146, i32 %147)
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %132, %130, %83, %25, %17
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @niu_rx_channel_reset(%struct.niu*, i32) #1

declare dso_local i32 @niu_rx_channel_lpage_init(%struct.niu*, i32) #1

declare dso_local i32 @niu_rx_channel_wred_init(%struct.niu*, %struct.rx_ring_info*) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @RX_DMA_ENT_MSK(i32) #1

declare dso_local i32 @RX_DMA_CTL_STAT(i32) #1

declare dso_local i32 @RXDMA_CFIG1(i32) #1

declare dso_local i32 @RXDMA_CFIG2(i32) #1

declare dso_local i32 @RBR_CFIG_A(i32) #1

declare dso_local i32 @niu_compute_rbr_cfig_b(%struct.rx_ring_info*, i32*) #1

declare dso_local i32 @RBR_CFIG_B(i32) #1

declare dso_local i32 @RCRCFIG_A(i32) #1

declare dso_local i32 @RCRCFIG_B(i32) #1

declare dso_local i32 @niu_enable_rx_channel(%struct.niu*, i32, i32) #1

declare dso_local i32 @RBR_KICK(i32) #1

declare dso_local i32 @nr64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
