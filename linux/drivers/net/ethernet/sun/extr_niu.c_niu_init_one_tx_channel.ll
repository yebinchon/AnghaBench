; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_one_tx_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_one_tx_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }
%struct.tx_ring_info = type { i32, i32, i32, i32, i32, i64 }

@TX_RNG_CFIG_STADDR_BASE = common dso_local global i32 0, align 4
@TX_RNG_CFIG_STADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"TX ring channel %d DMA addr (%llx) is not aligned\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TX_RNG_CFIG_LEN_SHIFT = common dso_local global i32 0, align 4
@TXDMA_MBH_MBADDR = common dso_local global i32 0, align 4
@TXDMA_MBL_MBADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"TX ring channel %d MBOX addr (%llx) has invalid bits\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.tx_ring_info*)* @niu_init_one_tx_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_init_one_tx_channel(%struct.niu* %0, %struct.tx_ring_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.niu*, align 8
  %5 = alloca %struct.tx_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store %struct.tx_ring_info* %1, %struct.tx_ring_info** %5, align 8
  %10 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %11 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.niu*, %struct.niu** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @niu_tx_channel_stop(%struct.niu* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %132

20:                                               ; preds = %2
  %21 = load %struct.niu*, %struct.niu** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @niu_tx_channel_reset(%struct.niu* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %132

28:                                               ; preds = %20
  %29 = load %struct.niu*, %struct.niu** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @niu_tx_channel_lpage_init(%struct.niu* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %132

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @TXC_DMA_MAX(i32 %37)
  %39 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %40 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nw64(i32 %38, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @TX_ENT_MSK(i32 %43)
  %45 = call i32 @nw64(i32 %44, i32 0)
  %46 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %47 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @TX_RNG_CFIG_STADDR_BASE, align 4
  %50 = load i32, i32* @TX_RNG_CFIG_STADDR, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %48, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %36
  %56 = load %struct.niu*, %struct.niu** %4, align 8
  %57 = getelementptr inbounds %struct.niu, %struct.niu* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %61 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = call i32 @netdev_err(i32 %58, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %59, i64 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %132

67:                                               ; preds = %36
  %68 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %69 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %70, 8
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @TX_RNG_CFIG_LEN_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %76 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %74, %77
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @TX_RNG_CFIG(i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @nw64(i32 %80, i32 %81)
  %83 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %84 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = ashr i32 %85, 32
  %87 = load i32, i32* @TXDMA_MBH_MBADDR, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %67
  %92 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %93 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @TXDMA_MBL_MBADDR, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %91, %67
  %100 = load %struct.niu*, %struct.niu** %4, align 8
  %101 = getelementptr inbounds %struct.niu, %struct.niu* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %105 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = call i32 @netdev_err(i32 %102, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %103, i64 %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %132

111:                                              ; preds = %91
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @TXDMA_MBH(i32 %112)
  %114 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %115 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = ashr i32 %116, 32
  %118 = call i32 @nw64(i32 %113, i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @TXDMA_MBL(i32 %119)
  %121 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %122 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @TXDMA_MBL_MBADDR, align 4
  %125 = and i32 %123, %124
  %126 = call i32 @nw64(i32 %120, i32 %125)
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @TX_CS(i32 %127)
  %129 = call i32 @nw64(i32 %128, i32 0)
  %130 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %131 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %130, i32 0, i32 5
  store i64 0, i64* %131, align 8
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %111, %99, %55, %34, %26, %18
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @niu_tx_channel_stop(%struct.niu*, i32) #1

declare dso_local i32 @niu_tx_channel_reset(%struct.niu*, i32) #1

declare dso_local i32 @niu_tx_channel_lpage_init(%struct.niu*, i32) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @TXC_DMA_MAX(i32) #1

declare dso_local i32 @TX_ENT_MSK(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i64) #1

declare dso_local i32 @TX_RNG_CFIG(i32) #1

declare dso_local i32 @TXDMA_MBH(i32) #1

declare dso_local i32 @TXDMA_MBL(i32) #1

declare dso_local i32 @TX_CS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
