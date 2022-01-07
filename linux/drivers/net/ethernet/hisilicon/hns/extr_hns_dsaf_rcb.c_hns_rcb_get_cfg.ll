; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_get_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_get_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcb_common_cb = type { i64, i32, i32, %struct.TYPE_3__*, %struct.ring_pair_cb* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ring_pair_cb = type { i64, i32*, %struct.TYPE_4__, i32, i32, %struct.rcb_common_cb* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.platform_device = type { i32 }

@HNS_RCB_IRQ_IDX_TX = common dso_local global i64 0, align 8
@HNS_RCB_IRQ_IDX_RX = common dso_local global i64 0, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_rcb_get_cfg(%struct.rcb_common_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcb_common_cb*, align 8
  %4 = alloca %struct.ring_pair_cb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  store %struct.rcb_common_cb* %0, %struct.rcb_common_cb** %3, align 8
  %10 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %11 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %14 = call i32 @hns_rcb_get_base_irq_idx(%struct.rcb_common_cb* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %16 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.platform_device* @to_platform_device(i32 %19)
  store %struct.platform_device* %20, %struct.platform_device** %8, align 8
  %21 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %22 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @AE_IS_VER1(i32 %25)
  store i32 %26, i32* %9, align 4
  store i64 0, i64* %5, align 8
  br label %27

27:                                               ; preds = %154, %1
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %157

31:                                               ; preds = %27
  %32 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %33 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %32, i32 0, i32 4
  %34 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %34, i64 %35
  store %struct.ring_pair_cb* %36, %struct.ring_pair_cb** %4, align 8
  %37 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %38 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %4, align 8
  %39 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %38, i32 0, i32 5
  store %struct.rcb_common_cb* %37, %struct.rcb_common_cb** %39, align 8
  %40 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %41 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %4, align 8
  %46 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %4, align 8
  %49 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %51 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %5, align 8
  %54 = call i8* @RCB_COMM_BASE_TO_RING_BASE(i32 %52, i64 %53)
  %55 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %4, align 8
  %56 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @hns_rcb_get_port_in_comm(%struct.rcb_common_cb* %58, i64 %59)
  %61 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %4, align 8
  %62 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %31
  %66 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %5, align 8
  %70 = mul i64 %69, 2
  %71 = add i64 %68, %70
  %72 = trunc i64 %71 to i32
  %73 = call i8* @platform_get_irq(%struct.platform_device* %66, i32 %72)
  br label %84

74:                                               ; preds = %31
  %75 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %5, align 8
  %79 = mul i64 %78, 3
  %80 = add i64 %77, %79
  %81 = add i64 %80, 1
  %82 = trunc i64 %81 to i32
  %83 = call i8* @platform_get_irq(%struct.platform_device* %75, i32 %82)
  br label %84

84:                                               ; preds = %74, %65
  %85 = phi i8* [ %73, %65 ], [ %83, %74 ]
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %4, align 8
  %88 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @HNS_RCB_IRQ_IDX_TX, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %86, i32* %91, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %84
  %95 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %5, align 8
  %99 = mul i64 %98, 2
  %100 = add i64 %97, %99
  %101 = add i64 %100, 1
  %102 = trunc i64 %101 to i32
  %103 = call i8* @platform_get_irq(%struct.platform_device* %95, i32 %102)
  br label %113

104:                                              ; preds = %84
  %105 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %5, align 8
  %109 = mul i64 %108, 3
  %110 = add i64 %107, %109
  %111 = trunc i64 %110 to i32
  %112 = call i8* @platform_get_irq(%struct.platform_device* %105, i32 %111)
  br label %113

113:                                              ; preds = %104, %94
  %114 = phi i8* [ %103, %94 ], [ %112, %104 ]
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %4, align 8
  %117 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @HNS_RCB_IRQ_IDX_RX, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 %115, i32* %120, align 4
  %121 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %4, align 8
  %122 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @HNS_RCB_IRQ_IDX_TX, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @EPROBE_DEFER, align 4
  %128 = sub nsw i32 0, %127
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %140, label %130

130:                                              ; preds = %113
  %131 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %4, align 8
  %132 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @HNS_RCB_IRQ_IDX_RX, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @EPROBE_DEFER, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %130, %113
  %141 = load i32, i32* @EPROBE_DEFER, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %158

143:                                              ; preds = %130
  %144 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %145 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i64, i64* %5, align 8
  %148 = call i8* @RCB_COMM_BASE_TO_RING_BASE(i32 %146, i64 %147)
  %149 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %4, align 8
  %150 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i8* %148, i8** %151, align 8
  %152 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %4, align 8
  %153 = call i32 @hns_rcb_ring_pair_get_cfg(%struct.ring_pair_cb* %152)
  br label %154

154:                                              ; preds = %143
  %155 = load i64, i64* %5, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %5, align 8
  br label %27

157:                                              ; preds = %27
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %140
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @hns_rcb_get_base_irq_idx(%struct.rcb_common_cb*) #1

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @AE_IS_VER1(i32) #1

declare dso_local i8* @RCB_COMM_BASE_TO_RING_BASE(i32, i64) #1

declare dso_local i32 @hns_rcb_get_port_in_comm(%struct.rcb_common_cb*, i64) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @hns_rcb_ring_pair_get_cfg(%struct.ring_pair_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
