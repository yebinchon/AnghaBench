; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_handle_send_pkts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_handle_send_pkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32, i32, %struct.TYPE_4__*, %struct.tx_ring }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tx_ring = type { i32, %struct.tcb*, i32* }
%struct.tcb = type { i32, %struct.tcb* }

@ET_DMA10_WRAP = common dso_local global i32 0, align 4
@ET_DMA10_MASK = common dso_local global i32 0, align 4
@NUM_TCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et131x_adapter*)* @et131x_handle_send_pkts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et131x_handle_send_pkts(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tx_ring*, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %8 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %8, i32 0, i32 3
  store %struct.tx_ring* %9, %struct.tx_ring** %7, align 8
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @readl(i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @INDEX10(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %23 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %22, i32 0, i32 1
  %24 = load %struct.tcb*, %struct.tcb** %23, align 8
  store %struct.tcb* %24, %struct.tcb** %5, align 8
  br label %25

25:                                               ; preds = %63, %1
  %26 = load %struct.tcb*, %struct.tcb** %5, align 8
  %27 = icmp ne %struct.tcb* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.tcb*, %struct.tcb** %5, align 8
  %31 = getelementptr inbounds %struct.tcb, %struct.tcb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = xor i32 %29, %32
  %34 = load i32, i32* @ET_DMA10_WRAP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.tcb*, %struct.tcb** %5, align 8
  %40 = getelementptr inbounds %struct.tcb, %struct.tcb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @INDEX10(i32 %41)
  %43 = icmp slt i32 %38, %42
  br label %44

44:                                               ; preds = %37, %28, %25
  %45 = phi i1 [ false, %28 ], [ false, %25 ], [ %43, %37 ]
  br i1 %45, label %46, label %78

46:                                               ; preds = %44
  %47 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %48 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.tcb*, %struct.tcb** %5, align 8
  %52 = getelementptr inbounds %struct.tcb, %struct.tcb* %51, i32 0, i32 1
  %53 = load %struct.tcb*, %struct.tcb** %52, align 8
  %54 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %55 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %54, i32 0, i32 1
  store %struct.tcb* %53, %struct.tcb** %55, align 8
  %56 = load %struct.tcb*, %struct.tcb** %5, align 8
  %57 = getelementptr inbounds %struct.tcb, %struct.tcb* %56, i32 0, i32 1
  %58 = load %struct.tcb*, %struct.tcb** %57, align 8
  %59 = icmp eq %struct.tcb* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %62 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %61, i32 0, i32 2
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %60, %46
  %64 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %65 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %64, i32 0, i32 0
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %69 = load %struct.tcb*, %struct.tcb** %5, align 8
  %70 = call i32 @free_send_packet(%struct.et131x_adapter* %68, %struct.tcb* %69)
  %71 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %71, i32 0, i32 0
  %73 = load i64, i64* %3, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %76 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %75, i32 0, i32 1
  %77 = load %struct.tcb*, %struct.tcb** %76, align 8
  store %struct.tcb* %77, %struct.tcb** %5, align 8
  br label %25

78:                                               ; preds = %44
  br label %79

79:                                               ; preds = %118, %78
  %80 = load %struct.tcb*, %struct.tcb** %5, align 8
  %81 = icmp ne %struct.tcb* %80, null
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.tcb*, %struct.tcb** %5, align 8
  %85 = getelementptr inbounds %struct.tcb, %struct.tcb* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = xor i32 %83, %86
  %88 = load i32, i32* @ET_DMA10_WRAP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.tcb*, %struct.tcb** %5, align 8
  %94 = getelementptr inbounds %struct.tcb, %struct.tcb* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ET_DMA10_MASK, align 4
  %97 = and i32 %95, %96
  %98 = icmp sgt i32 %92, %97
  br label %99

99:                                               ; preds = %91, %82, %79
  %100 = phi i1 [ false, %82 ], [ false, %79 ], [ %98, %91 ]
  br i1 %100, label %101, label %133

101:                                              ; preds = %99
  %102 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %103 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.tcb*, %struct.tcb** %5, align 8
  %107 = getelementptr inbounds %struct.tcb, %struct.tcb* %106, i32 0, i32 1
  %108 = load %struct.tcb*, %struct.tcb** %107, align 8
  %109 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %110 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %109, i32 0, i32 1
  store %struct.tcb* %108, %struct.tcb** %110, align 8
  %111 = load %struct.tcb*, %struct.tcb** %5, align 8
  %112 = getelementptr inbounds %struct.tcb, %struct.tcb* %111, i32 0, i32 1
  %113 = load %struct.tcb*, %struct.tcb** %112, align 8
  %114 = icmp eq %struct.tcb* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %101
  %116 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %117 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %116, i32 0, i32 2
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %115, %101
  %119 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %120 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %119, i32 0, i32 0
  %121 = load i64, i64* %3, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %124 = load %struct.tcb*, %struct.tcb** %5, align 8
  %125 = call i32 @free_send_packet(%struct.et131x_adapter* %123, %struct.tcb* %124)
  %126 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %127 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %126, i32 0, i32 0
  %128 = load i64, i64* %3, align 8
  %129 = call i32 @spin_lock_irqsave(i32* %127, i64 %128)
  %130 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %131 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %130, i32 0, i32 1
  %132 = load %struct.tcb*, %struct.tcb** %131, align 8
  store %struct.tcb* %132, %struct.tcb** %5, align 8
  br label %79

133:                                              ; preds = %99
  %134 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %135 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @NUM_TCB, align 4
  %138 = sdiv i32 %137, 3
  %139 = icmp sle i32 %136, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %142 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @netif_wake_queue(i32 %143)
  br label %145

145:                                              ; preds = %140, %133
  %146 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %147 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %146, i32 0, i32 0
  %148 = load i64, i64* %3, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @INDEX10(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_send_packet(%struct.et131x_adapter*, %struct.tcb*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
