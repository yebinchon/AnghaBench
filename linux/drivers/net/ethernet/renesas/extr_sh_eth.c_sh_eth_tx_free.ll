; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_tx_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_tx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sh_eth_private = type { i64, i32, i32, i32**, %struct.TYPE_3__*, %struct.sh_eth_txdesc* }
%struct.TYPE_3__ = type { i32 }
%struct.sh_eth_txdesc = type { i32, i32, i32 }

@TD_TACT = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"tx entry %d status 0x%08x\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TD_TFP = common dso_local global i32 0, align 4
@TD_TDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @sh_eth_tx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_tx_free(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_eth_private*, align 8
  %6 = alloca %struct.sh_eth_txdesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %10)
  store %struct.sh_eth_private* %11, %struct.sh_eth_private** %5, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %140, %2
  %13 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %14 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %17 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %15, %19
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %145

22:                                               ; preds = %12
  %23 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %24 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %27 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = srem i32 %25, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %31 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %30, i32 0, i32 5
  %32 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %32, i64 %34
  store %struct.sh_eth_txdesc* %35, %struct.sh_eth_txdesc** %6, align 8
  %36 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %6, align 8
  %37 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TD_TACT, align 4
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %22
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %145

51:                                               ; preds = %47, %22
  %52 = call i32 (...) @dma_rmb()
  %53 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %54 = load i32, i32* @tx_done, align 4
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %6, align 8
  %58 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  %61 = call i32 @netif_info(%struct.sh_eth_private* %53, i32 %54, %struct.net_device* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %60)
  %62 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %63 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %62, i32 0, i32 3
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %102

70:                                               ; preds = %51
  %71 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %72 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %71, i32 0, i32 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %6, align 8
  %76 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %6, align 8
  %80 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = ashr i32 %82, 16
  %84 = load i32, i32* @DMA_TO_DEVICE, align 4
  %85 = call i32 @dma_unmap_single(i32* %74, i32 %78, i32 %83, i32 %84)
  %86 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %87 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %86, i32 0, i32 3
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @dev_kfree_skb_irq(i32* %92)
  %94 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %95 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %94, i32 0, i32 3
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  store i32* null, i32** %99, align 8
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %70, %51
  %103 = load i32, i32* @TD_TFP, align 4
  %104 = call i32 @cpu_to_le32(i32 %103)
  %105 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %6, align 8
  %106 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %109 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  %112 = icmp sge i32 %107, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %102
  %114 = load i32, i32* @TD_TDLE, align 4
  %115 = call i32 @cpu_to_le32(i32 %114)
  %116 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %6, align 8
  %117 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %113, %102
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %120
  %124 = load %struct.net_device*, %struct.net_device** %3, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %6, align 8
  %130 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @le32_to_cpu(i32 %131)
  %133 = ashr i32 %132, 16
  %134 = load %struct.net_device*, %struct.net_device** %3, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, %133
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %123, %120
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %142 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  br label %12

145:                                              ; preds = %50, %12
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @netif_info(%struct.sh_eth_private*, i32, %struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
