; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_adjust_rx_ring_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_adjust_rx_ring_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i64, i32, i64, %struct.vmxnet3_rx_queue*, %struct.TYPE_4__* }
%struct.vmxnet3_rx_queue = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@VMXNET3_MAX_SKB_BUF_SIZE = common dso_local global i64 0, align 8
@VMXNET3_MAX_ETH_HDR_SIZE = common dso_local global i64 0, align 8
@VMXNET3_MIN_T0_BUF_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@VMXNET3_RING_SIZE_ALIGN = common dso_local global i64 0, align 8
@u32 = common dso_local global i32 0, align 4
@VMXNET3_RX_RING_MAX_SIZE = common dso_local global i64 0, align 8
@VMXNET3_RX_RING2_MAX_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_adapter*)* @vmxnet3_adjust_rx_ring_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_adjust_rx_ring_size(%struct.vmxnet3_adapter* %0) #0 {
  %2 = alloca %struct.vmxnet3_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vmxnet3_rx_queue*, align 8
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %2, align 8
  %9 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VMXNET3_MAX_SKB_BUF_SIZE, align 8
  %15 = load i64, i64* @VMXNET3_MAX_ETH_HDR_SIZE, align 8
  %16 = sub nsw i64 %14, %15
  %17 = icmp sle i64 %13, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %1
  %19 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %19, i32 0, i32 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VMXNET3_MAX_ETH_HDR_SIZE, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VMXNET3_MIN_T0_BUF_SIZE, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %18
  %34 = load i64, i64* @VMXNET3_MIN_T0_BUF_SIZE, align 8
  %35 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %18
  %38 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %38, i32 0, i32 1
  store i32 1, i32* %39, align 8
  br label %63

40:                                               ; preds = %1
  %41 = load i64, i64* @VMXNET3_MAX_SKB_BUF_SIZE, align 8
  %42 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %44, i32 0, i32 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VMXNET3_MAX_SKB_BUF_SIZE, align 8
  %50 = sub nsw i64 %48, %49
  %51 = load i64, i64* @VMXNET3_MAX_ETH_HDR_SIZE, align 8
  %52 = add nsw i64 %50, %51
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @PAGE_SIZE, align 8
  %55 = add i64 %53, %54
  %56 = sub i64 %55, 1
  %57 = load i64, i64* @PAGE_SIZE, align 8
  %58 = udiv i64 %56, %57
  %59 = add i64 1, %58
  %60 = trunc i64 %59 to i32
  %61 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %40, %37
  %64 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %65 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @VMXNET3_RING_SIZE_ALIGN, align 8
  %69 = mul i64 %67, %68
  store i64 %69, i64* %3, align 8
  %70 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %70, i32 0, i32 3
  %72 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %71, align 8
  %73 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %72, i64 0
  %74 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %5, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %79, %80
  %82 = sub i64 %81, 1
  %83 = load i64, i64* %3, align 8
  %84 = udiv i64 %82, %83
  %85 = load i64, i64* %3, align 8
  %86 = mul i64 %84, %85
  store i64 %86, i64* %5, align 8
  %87 = load i32, i32* @u32, align 4
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @VMXNET3_RX_RING_MAX_SIZE, align 8
  %90 = load i64, i64* %3, align 8
  %91 = udiv i64 %89, %90
  %92 = load i64, i64* %3, align 8
  %93 = mul i64 %91, %92
  %94 = call i64 @min_t(i32 %87, i64 %88, i64 %93)
  store i64 %94, i64* %5, align 8
  %95 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %96 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %95, i32 0, i32 3
  %97 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %96, align 8
  %98 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %97, i64 0
  %99 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %6, align 8
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %104, %105
  %107 = sub i64 %106, 1
  %108 = load i64, i64* %3, align 8
  %109 = udiv i64 %107, %108
  %110 = load i64, i64* %3, align 8
  %111 = mul i64 %109, %110
  store i64 %111, i64* %6, align 8
  %112 = load i32, i32* @u32, align 4
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* @VMXNET3_RX_RING2_MAX_SIZE, align 8
  %115 = load i64, i64* %3, align 8
  %116 = udiv i64 %114, %115
  %117 = load i64, i64* %3, align 8
  %118 = mul i64 %116, %117
  %119 = call i64 @min_t(i32 %112, i64 %113, i64 %118)
  store i64 %119, i64* %6, align 8
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %120, %121
  store i64 %122, i64* %7, align 8
  store i64 0, i64* %4, align 8
  br label %123

123:                                              ; preds = %151, %63
  %124 = load i64, i64* %4, align 8
  %125 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %126 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %124, %127
  br i1 %128, label %129, label %154

129:                                              ; preds = %123
  %130 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %131 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %130, i32 0, i32 3
  %132 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %131, align 8
  %133 = load i64, i64* %4, align 8
  %134 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %132, i64 %133
  store %struct.vmxnet3_rx_queue* %134, %struct.vmxnet3_rx_queue** %8, align 8
  %135 = load i64, i64* %5, align 8
  %136 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %8, align 8
  %137 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %136, i32 0, i32 1
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i64 %135, i64* %140, align 8
  %141 = load i64, i64* %6, align 8
  %142 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %8, align 8
  %143 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %142, i32 0, i32 1
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i64 1
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i64 %141, i64* %146, align 8
  %147 = load i64, i64* %7, align 8
  %148 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %8, align 8
  %149 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i64 %147, i64* %150, align 8
  br label %151

151:                                              ; preds = %129
  %152 = load i64, i64* %4, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %4, align 8
  br label %123

154:                                              ; preds = %123
  ret void
}

declare dso_local i64 @min_t(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
