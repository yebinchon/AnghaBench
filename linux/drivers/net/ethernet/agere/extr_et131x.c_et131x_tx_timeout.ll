; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.et131x_adapter = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__*, i32, %struct.tx_ring }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tx_ring = type { %struct.tcb* }
%struct.tcb = type { i64, i32 }

@FMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4
@FMP_ADAPTER_NON_RECOVER_ERROR = common dso_local global i32 0, align 4
@FMP_ADAPTER_HARDWARE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"hardware error - reset\0A\00", align 1
@NIC_SEND_HANG_THRESHOLD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Send stuck - reset. tcb->WrIndex %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @et131x_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et131x_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca %struct.tx_ring*, align 8
  %5 = alloca %struct.tcb*, align 8
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.et131x_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.et131x_adapter* %8, %struct.et131x_adapter** %3, align 8
  %9 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %9, i32 0, i32 4
  store %struct.tx_ring* %10, %struct.tx_ring** %4, align 8
  %11 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %84

18:                                               ; preds = %1
  %19 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FMP_ADAPTER_NON_RECOVER_ERROR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %84

26:                                               ; preds = %18
  %27 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FMP_ADAPTER_HARDWARE_ERROR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %84

39:                                               ; preds = %26
  %40 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %40, i32 0, i32 3
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %45 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %44, i32 0, i32 0
  %46 = load %struct.tcb*, %struct.tcb** %45, align 8
  store %struct.tcb* %46, %struct.tcb** %5, align 8
  %47 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %47, i32 0, i32 3
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.tcb*, %struct.tcb** %5, align 8
  %52 = icmp ne %struct.tcb* %51, null
  br i1 %52, label %53, label %84

53:                                               ; preds = %39
  %54 = load %struct.tcb*, %struct.tcb** %5, align 8
  %55 = getelementptr inbounds %struct.tcb, %struct.tcb* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = load %struct.tcb*, %struct.tcb** %5, align 8
  %59 = getelementptr inbounds %struct.tcb, %struct.tcb* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NIC_SEND_HANG_THRESHOLD, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %53
  %64 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.tcb*, %struct.tcb** %5, align 8
  %69 = getelementptr inbounds %struct.tcb, %struct.tcb* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_warn(i32* %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = call i32 @et131x_disable_txrx(%struct.net_device* %79)
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = call i32 @et131x_enable_txrx(%struct.net_device* %81)
  br label %83

83:                                               ; preds = %63, %53
  br label %84

84:                                               ; preds = %17, %25, %33, %83, %39
  ret void
}

declare dso_local %struct.et131x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @et131x_disable_txrx(%struct.net_device*) #1

declare dso_local i32 @et131x_enable_txrx(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
