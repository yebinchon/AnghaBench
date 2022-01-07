; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_process_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_process_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_desc_ring = type { i64, i64, i64, %struct.xgene_enet_raw_desc*, %struct.net_device* }
%struct.xgene_enet_raw_desc = type { i32 }
%struct.net_device = type { i32 }
%struct.xgene_enet_pdata = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xgene_enet_desc_ring*, i32)* }

@NV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_desc_ring*, i32)* @xgene_enet_process_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_process_ring(%struct.xgene_enet_desc_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.xgene_enet_desc_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xgene_enet_pdata*, align 8
  %7 = alloca %struct.xgene_enet_raw_desc*, align 8
  %8 = alloca %struct.xgene_enet_raw_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_desc_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %17 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %16, i32 0, i32 4
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %19)
  store %struct.xgene_enet_pdata* %20, %struct.xgene_enet_pdata** %6, align 8
  %21 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %22 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %25 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %26, 1
  store i64 %27, i64* %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %123, %2
  %29 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %30 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %29, i32 0, i32 3
  %31 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.xgene_enet_raw_desc, %struct.xgene_enet_raw_desc* %31, i64 %32
  store %struct.xgene_enet_raw_desc* %33, %struct.xgene_enet_raw_desc** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store %struct.xgene_enet_raw_desc* null, %struct.xgene_enet_raw_desc** %8, align 8
  %34 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %7, align 8
  %35 = call i32 @xgene_enet_is_desc_slot_empty(%struct.xgene_enet_raw_desc* %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %127

39:                                               ; preds = %28
  %40 = call i32 (...) @dma_rmb()
  %41 = load i32, i32* @NV, align 4
  %42 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %7, align 8
  %43 = getelementptr inbounds %struct.xgene_enet_raw_desc, %struct.xgene_enet_raw_desc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le64_to_cpu(i32 %44)
  %46 = call i64 @GET_BIT(i32 %41, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %39
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  %51 = load i64, i64* %10, align 8
  %52 = and i64 %50, %51
  store i64 %52, i64* %9, align 8
  %53 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %54 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %53, i32 0, i32 3
  %55 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.xgene_enet_raw_desc, %struct.xgene_enet_raw_desc* %55, i64 %56
  store %struct.xgene_enet_raw_desc* %57, %struct.xgene_enet_raw_desc** %8, align 8
  %58 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %8, align 8
  %59 = call i32 @xgene_enet_is_desc_slot_empty(%struct.xgene_enet_raw_desc* %58)
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %48
  %63 = load i64, i64* %9, align 8
  %64 = sub i64 %63, 1
  %65 = load i64, i64* %10, align 8
  %66 = and i64 %64, %65
  store i64 %66, i64* %9, align 8
  br label %127

67:                                               ; preds = %48
  %68 = call i32 (...) @dma_rmb()
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %67, %39
  %74 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %7, align 8
  %75 = call i64 @is_rx_desc(%struct.xgene_enet_raw_desc* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %79 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %7, align 8
  %80 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %8, align 8
  %81 = call i32 @xgene_enet_rx_frame(%struct.xgene_enet_desc_ring* %78, %struct.xgene_enet_raw_desc* %79, %struct.xgene_enet_raw_desc* %80)
  store i32 %81, i32* %11, align 4
  br label %86

82:                                               ; preds = %73
  %83 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %84 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %7, align 8
  %85 = call i32 @xgene_enet_tx_completion(%struct.xgene_enet_desc_ring* %83, %struct.xgene_enet_raw_desc* %84)
  store i32 %85, i32* %11, align 4
  store i32 1, i32* %15, align 4
  br label %86

86:                                               ; preds = %82, %77
  %87 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %7, align 8
  %88 = call i32 @xgene_enet_mark_desc_slot_empty(%struct.xgene_enet_raw_desc* %87)
  %89 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %8, align 8
  %90 = icmp ne %struct.xgene_enet_raw_desc* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %8, align 8
  %93 = call i32 @xgene_enet_mark_desc_slot_empty(%struct.xgene_enet_raw_desc* %92)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i64, i64* %9, align 8
  %96 = add i64 %95, 1
  %97 = load i64, i64* %10, align 8
  %98 = and i64 %96, %97
  store i64 %98, i64* %9, align 8
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %94
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %110 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %113 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %108
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %107, %94
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %127

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %28, label %127

127:                                              ; preds = %123, %121, %62, %38
  %128 = load i32, i32* %13, align 4
  %129 = call i64 @likely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %157

131:                                              ; preds = %127
  %132 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %133 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32 (%struct.xgene_enet_desc_ring*, i32)*, i32 (%struct.xgene_enet_desc_ring*, i32)** %135, align 8
  %137 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sub nsw i32 0, %138
  %140 = call i32 %136(%struct.xgene_enet_desc_ring* %137, i32 %139)
  %141 = load i64, i64* %9, align 8
  %142 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %143 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load %struct.net_device*, %struct.net_device** %5, align 8
  %145 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %146 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @__netif_subqueue_stopped(%struct.net_device* %144, i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %131
  %151 = load %struct.net_device*, %struct.net_device** %5, align 8
  %152 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %153 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @netif_start_subqueue(%struct.net_device* %151, i64 %154)
  br label %156

156:                                              ; preds = %150, %131
  br label %157

157:                                              ; preds = %156, %127
  %158 = load i32, i32* %14, align 4
  ret i32 %158
}

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xgene_enet_is_desc_slot_empty(%struct.xgene_enet_raw_desc*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i64 @GET_BIT(i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @is_rx_desc(%struct.xgene_enet_raw_desc*) #1

declare dso_local i32 @xgene_enet_rx_frame(%struct.xgene_enet_desc_ring*, %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc*) #1

declare dso_local i32 @xgene_enet_tx_completion(%struct.xgene_enet_desc_ring*, %struct.xgene_enet_raw_desc*) #1

declare dso_local i32 @xgene_enet_mark_desc_slot_empty(%struct.xgene_enet_raw_desc*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @__netif_subqueue_stopped(%struct.net_device*, i64) #1

declare dso_local i32 @netif_start_subqueue(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
