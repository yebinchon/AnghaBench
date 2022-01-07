; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_vec.c_aq_vec_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_vec.c_aq_vec_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_vec_s = type { i64, i32**, i64, %struct.TYPE_4__, i32, i32, %struct.aq_nic_s* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.aq_nic_s = type { i32 }
%struct.aq_nic_cfg_s = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.aq_ring_s = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@aq_vec_poll = common dso_local global i32 0, align 4
@AQ_CFG_NAPI_WEIGHT = common dso_local global i32 0, align 4
@AQ_VEC_TX_ID = common dso_local global i64 0, align 8
@AQ_VEC_RX_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aq_vec_s* @aq_vec_alloc(%struct.aq_nic_s* %0, i32 %1, %struct.aq_nic_cfg_s* %2) #0 {
  %4 = alloca %struct.aq_nic_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aq_nic_cfg_s*, align 8
  %7 = alloca %struct.aq_vec_s*, align 8
  %8 = alloca %struct.aq_ring_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.aq_nic_cfg_s* %2, %struct.aq_nic_cfg_s** %6, align 8
  store %struct.aq_vec_s* null, %struct.aq_vec_s** %7, align 8
  store %struct.aq_ring_s* null, %struct.aq_ring_s** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.aq_vec_s* @kzalloc(i32 56, i32 %12)
  store %struct.aq_vec_s* %13, %struct.aq_vec_s** %7, align 8
  %14 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %15 = icmp ne %struct.aq_vec_s* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  br label %128

19:                                               ; preds = %3
  %20 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %21 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %22 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %21, i32 0, i32 6
  store %struct.aq_nic_s* %20, %struct.aq_nic_s** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %25 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %30 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %28, %32
  %34 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %35 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i64 %33, i64* %36, align 8
  %37 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %38 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %42 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = call i32 @cpumask_set_cpu(i64 %40, i32* %43)
  %45 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %46 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %48 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %50 = call i32 @aq_nic_get_ndev(%struct.aq_nic_s* %49)
  %51 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %52 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %51, i32 0, i32 5
  %53 = load i32, i32* @aq_vec_poll, align 4
  %54 = load i32, i32* @AQ_CFG_NAPI_WEIGHT, align 4
  %55 = call i32 @netif_napi_add(i32 %50, i32* %52, i32 %53, i32 %54)
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %124, %19
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %59 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %127

62:                                               ; preds = %56
  %63 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %64 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %67 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %70 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @AQ_NIC_TCVEC2RING(i32 %65, i64 %68, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %75 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %74, i32 0, i32 1
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @AQ_VEC_TX_ID, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %86 = call %struct.aq_ring_s* @aq_ring_tx_alloc(i32* %82, %struct.aq_nic_s* %83, i32 %84, %struct.aq_nic_cfg_s* %85)
  store %struct.aq_ring_s* %86, %struct.aq_ring_s** %8, align 8
  %87 = load %struct.aq_ring_s*, %struct.aq_ring_s** %8, align 8
  %88 = icmp ne %struct.aq_ring_s* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %62
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  br label %128

92:                                               ; preds = %62
  %93 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %94 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.aq_ring_s*, %struct.aq_ring_s** %8, align 8
  %100 = call i32 @aq_nic_set_tx_ring(%struct.aq_nic_s* %97, i32 %98, %struct.aq_ring_s* %99)
  %101 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %102 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %101, i32 0, i32 1
  %103 = load i32**, i32*** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @AQ_VEC_RX_ID, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %113 = call %struct.aq_ring_s* @aq_ring_rx_alloc(i32* %109, %struct.aq_nic_s* %110, i32 %111, %struct.aq_nic_cfg_s* %112)
  store %struct.aq_ring_s* %113, %struct.aq_ring_s** %8, align 8
  %114 = load %struct.aq_ring_s*, %struct.aq_ring_s** %8, align 8
  %115 = icmp ne %struct.aq_ring_s* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %92
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %10, align 4
  br label %128

119:                                              ; preds = %92
  %120 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %121 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %121, align 8
  br label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %9, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %56

127:                                              ; preds = %56
  br label %128

128:                                              ; preds = %127, %116, %89, %16
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %133 = call i32 @aq_vec_free(%struct.aq_vec_s* %132)
  store %struct.aq_vec_s* null, %struct.aq_vec_s** %7, align 8
  br label %134

134:                                              ; preds = %131, %128
  %135 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  ret %struct.aq_vec_s* %135
}

declare dso_local %struct.aq_vec_s* @kzalloc(i32, i32) #1

declare dso_local i32 @cpumask_set_cpu(i64, i32*) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @aq_nic_get_ndev(%struct.aq_nic_s*) #1

declare dso_local i32 @AQ_NIC_TCVEC2RING(i32, i64, i32) #1

declare dso_local %struct.aq_ring_s* @aq_ring_tx_alloc(i32*, %struct.aq_nic_s*, i32, %struct.aq_nic_cfg_s*) #1

declare dso_local i32 @aq_nic_set_tx_ring(%struct.aq_nic_s*, i32, %struct.aq_ring_s*) #1

declare dso_local %struct.aq_ring_s* @aq_ring_rx_alloc(i32*, %struct.aq_nic_s*, i32, %struct.aq_nic_cfg_s*) #1

declare dso_local i32 @aq_vec_free(%struct.aq_vec_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
