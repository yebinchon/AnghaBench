; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.et131x_adapter = type { i32, %struct.tx_ring }
%struct.tx_ring = type { i64, %struct.tcb*, %struct.tcb* }
%struct.tcb = type { %struct.tcb*, %struct.sk_buff* }

@ETH_HLEN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NUM_TCB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.et131x_adapter*)* @send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_packet(%struct.sk_buff* %0, %struct.et131x_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.et131x_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tx_ring*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.et131x_adapter* %1, %struct.et131x_adapter** %5, align 8
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 1
  store %struct.tx_ring* %11, %struct.tx_ring** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ETH_HLEN, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %101

20:                                               ; preds = %2
  %21 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %21, i32 0, i32 0
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.tx_ring*, %struct.tx_ring** %9, align 8
  %26 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %25, i32 0, i32 2
  %27 = load %struct.tcb*, %struct.tcb** %26, align 8
  store %struct.tcb* %27, %struct.tcb** %7, align 8
  %28 = load %struct.tcb*, %struct.tcb** %7, align 8
  %29 = icmp eq %struct.tcb* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %31, i32 0, i32 0
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %101

37:                                               ; preds = %20
  %38 = load %struct.tcb*, %struct.tcb** %7, align 8
  %39 = getelementptr inbounds %struct.tcb, %struct.tcb* %38, i32 0, i32 0
  %40 = load %struct.tcb*, %struct.tcb** %39, align 8
  %41 = load %struct.tx_ring*, %struct.tx_ring** %9, align 8
  %42 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %41, i32 0, i32 2
  store %struct.tcb* %40, %struct.tcb** %42, align 8
  %43 = load %struct.tx_ring*, %struct.tx_ring** %9, align 8
  %44 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %43, i32 0, i32 2
  %45 = load %struct.tcb*, %struct.tcb** %44, align 8
  %46 = icmp eq %struct.tcb* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.tx_ring*, %struct.tx_ring** %9, align 8
  %49 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %48, i32 0, i32 1
  store %struct.tcb* null, %struct.tcb** %49, align 8
  br label %50

50:                                               ; preds = %47, %37
  %51 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %51, i32 0, i32 0
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load %struct.tcb*, %struct.tcb** %7, align 8
  %57 = getelementptr inbounds %struct.tcb, %struct.tcb* %56, i32 0, i32 1
  store %struct.sk_buff* %55, %struct.sk_buff** %57, align 8
  %58 = load %struct.tcb*, %struct.tcb** %7, align 8
  %59 = getelementptr inbounds %struct.tcb, %struct.tcb* %58, i32 0, i32 0
  store %struct.tcb* null, %struct.tcb** %59, align 8
  %60 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %61 = load %struct.tcb*, %struct.tcb** %7, align 8
  %62 = call i32 @nic_send_packet(%struct.et131x_adapter* %60, %struct.tcb* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %50
  %66 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %67 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %66, i32 0, i32 0
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.tx_ring*, %struct.tx_ring** %9, align 8
  %71 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %70, i32 0, i32 1
  %72 = load %struct.tcb*, %struct.tcb** %71, align 8
  %73 = icmp ne %struct.tcb* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load %struct.tcb*, %struct.tcb** %7, align 8
  %76 = load %struct.tx_ring*, %struct.tx_ring** %9, align 8
  %77 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %76, i32 0, i32 1
  %78 = load %struct.tcb*, %struct.tcb** %77, align 8
  %79 = getelementptr inbounds %struct.tcb, %struct.tcb* %78, i32 0, i32 0
  store %struct.tcb* %75, %struct.tcb** %79, align 8
  br label %84

80:                                               ; preds = %65
  %81 = load %struct.tcb*, %struct.tcb** %7, align 8
  %82 = load %struct.tx_ring*, %struct.tx_ring** %9, align 8
  %83 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %82, i32 0, i32 2
  store %struct.tcb* %81, %struct.tcb** %83, align 8
  br label %84

84:                                               ; preds = %80, %74
  %85 = load %struct.tcb*, %struct.tcb** %7, align 8
  %86 = load %struct.tx_ring*, %struct.tx_ring** %9, align 8
  %87 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %86, i32 0, i32 1
  store %struct.tcb* %85, %struct.tcb** %87, align 8
  %88 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %89 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %88, i32 0, i32 0
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %101

93:                                               ; preds = %50
  %94 = load %struct.tx_ring*, %struct.tx_ring** %9, align 8
  %95 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @NUM_TCB, align 8
  %98 = icmp sgt i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @WARN_ON(i32 %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %93, %84, %30, %17
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nic_send_packet(%struct.et131x_adapter*, %struct.tcb*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
