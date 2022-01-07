; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure_dcb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure_dcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, i32, %struct.TYPE_3__**, i32, %struct.ixgbe_hw }
%struct.TYPE_3__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@__IXGBEVF_QUEUE_RESET_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*)* @ixgbevf_configure_dcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_configure_dcb(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %10, i32 0, i32 5
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %18, i32 0, i32 4
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %22 = call i32 @ixgbevf_get_queues(%struct.ixgbe_hw* %21, i32* %6, i32* %5)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %23, i32 0, i32 4
  %25 = call i32 @spin_unlock_bh(i32* %24)
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %2, align 4
  br label %63

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  store i32 1, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %37, i64 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %34, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %33, %30
  %43 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48, %42
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %56 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @__IXGBEVF_QUEUE_RESET_REQUESTED, align 4
  %59 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %59, i32 0, i32 2
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  br label %62

62:                                               ; preds = %54, %48
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %28
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ixgbevf_get_queues(%struct.ixgbe_hw*, i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
