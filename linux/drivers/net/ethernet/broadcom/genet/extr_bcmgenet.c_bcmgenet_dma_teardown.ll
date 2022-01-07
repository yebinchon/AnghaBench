; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_dma_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_dma_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_CTRL = common dso_local global i32 0, align 4
@DMA_EN = common dso_local global i32 0, align 4
@DMA_TIMEOUT_VAL = common dso_local global i32 0, align 4
@DMA_STATUS = common dso_local global i32 0, align 4
@DMA_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Timed out while disabling TX DMA\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Timed out while disabling RX DMA\0A\00", align 1
@DMA_RING_BUF_EN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcmgenet_priv*)* @bcmgenet_dma_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_dma_teardown(%struct.bcmgenet_priv* %0) #0 {
  %2 = alloca %struct.bcmgenet_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %9 = load i32, i32* @DMA_CTRL, align 4
  %10 = call i32 @bcmgenet_tdma_readl(%struct.bcmgenet_priv* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @DMA_EN, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DMA_CTRL, align 4
  %18 = call i32 @bcmgenet_tdma_writel(%struct.bcmgenet_priv* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %33, %1
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @DMA_TIMEOUT_VAL, align 4
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %26 = load i32, i32* @DMA_STATUS, align 4
  %27 = call i32 @bcmgenet_tdma_readl(%struct.bcmgenet_priv* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @DMA_DISABLED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %35

33:                                               ; preds = %24
  %34 = call i32 @udelay(i32 1)
  br label %19

35:                                               ; preds = %32, %19
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @DMA_TIMEOUT_VAL, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %41 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @netdev_warn(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ETIMEDOUT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %39, %35
  %47 = call i32 @usleep_range(i32 10000, i32 20000)
  %48 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %49 = load i32, i32* @DMA_CTRL, align 4
  %50 = call i32 @bcmgenet_rdma_readl(%struct.bcmgenet_priv* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @DMA_EN, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @DMA_CTRL, align 4
  %58 = call i32 @bcmgenet_rdma_writel(%struct.bcmgenet_priv* %55, i32 %56, i32 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %73, %46
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @DMA_TIMEOUT_VAL, align 4
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %66 = load i32, i32* @DMA_STATUS, align 4
  %67 = call i32 @bcmgenet_rdma_readl(%struct.bcmgenet_priv* %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @DMA_DISABLED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %75

73:                                               ; preds = %64
  %74 = call i32 @udelay(i32 1)
  br label %59

75:                                               ; preds = %72, %59
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @DMA_TIMEOUT_VAL, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %81 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @netdev_warn(i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @ETIMEDOUT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %79, %75
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %102, %86
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %90 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %88, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %87
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @DMA_RING_BUF_EN_SHIFT, align 4
  %98 = add nsw i32 %96, %97
  %99 = shl i32 1, %98
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %87

105:                                              ; preds = %87
  %106 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %107 = load i32, i32* @DMA_CTRL, align 4
  %108 = call i32 @bcmgenet_rdma_readl(%struct.bcmgenet_priv* %106, i32 %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %5, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %5, align 4
  %113 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @DMA_CTRL, align 4
  %116 = call i32 @bcmgenet_rdma_writel(%struct.bcmgenet_priv* %113, i32 %114, i32 %115)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %132, %105
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %120 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %118, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %117
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @DMA_RING_BUF_EN_SHIFT, align 4
  %128 = add nsw i32 %126, %127
  %129 = shl i32 1, %128
  %130 = load i32, i32* %6, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %117

135:                                              ; preds = %117
  %136 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %137 = load i32, i32* @DMA_CTRL, align 4
  %138 = call i32 @bcmgenet_tdma_readl(%struct.bcmgenet_priv* %136, i32 %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %6, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %5, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %5, align 4
  %143 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @DMA_CTRL, align 4
  %146 = call i32 @bcmgenet_tdma_writel(%struct.bcmgenet_priv* %143, i32 %144, i32 %145)
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @bcmgenet_tdma_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_tdma_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @bcmgenet_rdma_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_rdma_writel(%struct.bcmgenet_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
