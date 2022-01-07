; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_tx_q_desc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_tx_q_desc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i32, %struct.TYPE_5__*, %struct.emac_ring_header }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.emac_ring_header = type { i64, i64, i64 }
%struct.emac_tx_queue = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_adapter*, %struct.emac_tx_queue*)* @emac_tx_q_desc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_tx_q_desc_alloc(%struct.emac_adapter* %0, %struct.emac_tx_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.emac_adapter*, align 8
  %5 = alloca %struct.emac_tx_queue*, align 8
  %6 = alloca %struct.emac_ring_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %4, align 8
  store %struct.emac_tx_queue* %1, %struct.emac_tx_queue** %5, align 8
  %9 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %9, i32 0, i32 2
  store %struct.emac_ring_header* %10, %struct.emac_ring_header** %6, align 8
  %11 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_to_node(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %19 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @kzalloc_node(i64 %24, i32 %25, i32 %26)
  %28 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %29 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 6
  store i32 %27, i32* %30, align 8
  %31 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %32 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %87

39:                                               ; preds = %2
  %40 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %41 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %45 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %46, 4
  %48 = mul nsw i32 %43, %47
  %49 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %50 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.emac_ring_header*, %struct.emac_ring_header** %6, align 8
  %53 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.emac_ring_header*, %struct.emac_ring_header** %6, align 8
  %56 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %60 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  store i64 %58, i64* %61, align 8
  %62 = load %struct.emac_ring_header*, %struct.emac_ring_header** %6, align 8
  %63 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.emac_ring_header*, %struct.emac_ring_header** %6, align 8
  %66 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %70 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  store i64 %68, i64* %71, align 8
  %72 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %73 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ALIGN(i32 %75, i32 8)
  %77 = load %struct.emac_ring_header*, %struct.emac_ring_header** %6, align 8
  %78 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %76
  store i64 %80, i64* %78, align 8
  %81 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %82 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  %84 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %85 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %39, %36
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @dev_to_node(i32) #1

declare dso_local i32 @kzalloc_node(i64, i32, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
