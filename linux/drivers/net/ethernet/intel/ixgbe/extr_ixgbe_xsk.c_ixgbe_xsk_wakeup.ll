; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_xsk_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_xsk_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i64, %struct.ixgbe_ring**, i32, i32 }
%struct.ixgbe_ring = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@__IXGBE_DOWN = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_xsk_wakeup(%struct.net_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ixgbe_adapter*, align 8
  %9 = alloca %struct.ixgbe_ring*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.ixgbe_adapter* %12, %struct.ixgbe_adapter** %8, align 8
  %13 = load i32, i32* @__IXGBE_DOWN, align 4
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 3
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENETDOWN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %76

21:                                               ; preds = %3
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @READ_ONCE(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %76

30:                                               ; preds = %21
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %33 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ENXIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %76

39:                                               ; preds = %30
  %40 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %41 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %40, i32 0, i32 1
  %42 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %42, i64 %43
  %45 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %44, align 8
  %46 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* @ENXIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %76

52:                                               ; preds = %39
  %53 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %54 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %53, i32 0, i32 1
  %55 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %55, i64 %56
  %58 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %57, align 8
  store %struct.ixgbe_ring* %58, %struct.ixgbe_ring** %9, align 8
  %59 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %9, align 8
  %60 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = call i32 @napi_if_scheduled_mark_missed(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %52
  %66 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %9, align 8
  %67 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @BIT_ULL(i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @ixgbe_irq_rearm_queues(%struct.ixgbe_adapter* %72, i32 %73)
  br label %75

75:                                               ; preds = %65, %52
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %49, %36, %27, %18
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @napi_if_scheduled_mark_missed(i32*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @ixgbe_irq_rearm_queues(%struct.ixgbe_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
