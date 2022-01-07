; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { %struct.sk_buff*, i32, %struct.TYPE_2__* }
%struct.sk_buff = type opaque
%struct.TYPE_2__ = type { i64 }

@HNS3_RING_RX_RING_FBDNUM_REG = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@RCB_NOF_ALLOC_RX_BUFF_ONCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns3_clean_rx_ring(%struct.hns3_enet_ring* %0, i32 %1, void (%struct.hns3_enet_ring*, %struct.sk_buff*)* %2) #0 {
  %4 = alloca %struct.hns3_enet_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (%struct.hns3_enet_ring*, %struct.sk_buff*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store void (%struct.hns3_enet_ring*, %struct.sk_buff*)* %2, void (%struct.hns3_enet_ring*, %struct.sk_buff*)** %6, align 8
  %13 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %14 = call i32 @hns3_desc_unused(%struct.hns3_enet_ring* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %16 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %15, i32 0, i32 0
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %19 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HNS3_RING_RX_RING_FBDNUM_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl_relaxed(i64 %24)
  store i32 %25, i32* %12, align 4
  %26 = call i32 (...) @rmb()
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %12, align 4
  %29 = sub nsw i32 %28, %27
  store i32 %29, i32* %12, align 4
  %30 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %31 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %94, %78, %3
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %40, %41
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i1 [ false, %35 ], [ %42, %39 ]
  br i1 %44, label %45, label %114

45:                                               ; preds = %43
  %46 = load i32, i32* %7, align 4
  %47 = icmp sge i32 %46, 16
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @hns3_nic_alloc_rx_buffers(%struct.hns3_enet_ring* %49, i32 %50)
  %52 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %53 = call i32 @hns3_desc_unused(%struct.hns3_enet_ring* %52)
  %54 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %55 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %53, %56
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %48, %45
  %59 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %60 = call i32 @hns3_handle_rx_bd(%struct.hns3_enet_ring* %59, %struct.sk_buff** %8)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %115

68:                                               ; preds = %58
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @ENXIO, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %115

74:                                               ; preds = %68
  %75 = load i32, i32* %11, align 4
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %80 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %85 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %90 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %89, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %90, align 8
  %91 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %92 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %91, i32 0, i32 1
  store i32 0, i32* %92, align 8
  br label %35

93:                                               ; preds = %74
  br label %94

94:                                               ; preds = %93
  %95 = load void (%struct.hns3_enet_ring*, %struct.sk_buff*)*, void (%struct.hns3_enet_ring*, %struct.sk_buff*)** %6, align 8
  %96 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  call void %95(%struct.hns3_enet_ring* %96, %struct.sk_buff* %97)
  %98 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %99 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %104 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %7, align 4
  %108 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %109 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %108, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %109, align 8
  %110 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %111 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %110, i32 0, i32 1
  store i32 0, i32* %111, align 8
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %35

114:                                              ; preds = %43
  br label %115

115:                                              ; preds = %114, %73, %67
  %116 = load i32, i32* %7, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @hns3_nic_alloc_rx_buffers(%struct.hns3_enet_ring* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %115
  %123 = load i32, i32* %9, align 4
  ret i32 %123
}

declare dso_local i32 @hns3_desc_unused(%struct.hns3_enet_ring*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @hns3_nic_alloc_rx_buffers(%struct.hns3_enet_ring*, i32) #1

declare dso_local i32 @hns3_handle_rx_bd(%struct.hns3_enet_ring*, %struct.sk_buff**) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
