; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i64, i32, i64, i64, i64, i64, i64 }
%struct.bcmgenet_priv = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_INTR_THRESHOLD_MASK = common dso_local global i64 0, align 8
@DMA_TIMEOUT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DMA_MBUF_DONE_THRESH = common dso_local global i32 0, align 4
@DESC_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @bcmgenet_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.bcmgenet_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.bcmgenet_priv* %9, %struct.bcmgenet_priv** %6, align 8
  %10 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DMA_INTR_THRESHOLD_MASK, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %34, label %15

15:                                               ; preds = %2
  %16 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DMA_INTR_THRESHOLD_MASK, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DMA_TIMEOUT_MASK, align 4
  %31 = mul nsw i32 %30, 8
  %32 = add nsw i32 %31, 1
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26, %20, %15, %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %135

37:                                               ; preds = %26
  %38 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %135

50:                                               ; preds = %42, %37
  %51 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %50
  %56 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %55
  %61 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70, %65, %60, %55, %50
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %135

78:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %96, %78
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %82 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ult i32 %80, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %79
  %88 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @DMA_MBUF_DONE_THRESH, align 4
  %95 = call i32 @bcmgenet_tdma_ring_writel(%struct.bcmgenet_priv* %88, i64 %90, i64 %93, i32 %94)
  br label %96

96:                                               ; preds = %87
  %97 = load i32, i32* %7, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %79

99:                                               ; preds = %79
  %100 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %101 = load i64, i64* @DESC_INDEX, align 8
  %102 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %103 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @DMA_MBUF_DONE_THRESH, align 4
  %106 = call i32 @bcmgenet_tdma_ring_writel(%struct.bcmgenet_priv* %100, i64 %101, i64 %104, i32 %105)
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %124, %99
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %110 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ult i32 %108, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %107
  %116 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %117 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %123 = call i32 @bcmgenet_set_ring_rx_coalesce(i32* %121, %struct.ethtool_coalesce* %122)
  br label %124

124:                                              ; preds = %115
  %125 = load i32, i32* %7, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %107

127:                                              ; preds = %107
  %128 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %129 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @DESC_INDEX, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %134 = call i32 @bcmgenet_set_ring_rx_coalesce(i32* %132, %struct.ethtool_coalesce* %133)
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %127, %75, %47, %34
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcmgenet_tdma_ring_writel(%struct.bcmgenet_priv*, i64, i64, i32) #1

declare dso_local i32 @bcmgenet_set_ring_rx_coalesce(i32*, %struct.ethtool_coalesce*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
