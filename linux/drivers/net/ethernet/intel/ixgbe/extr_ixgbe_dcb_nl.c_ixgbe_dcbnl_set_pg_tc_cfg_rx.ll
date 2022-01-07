; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_set_pg_tc_cfg_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_set_pg_tc_cfg_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@DCB_ATTR_VALUE_UNDEFINED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i64, i64, i64, i64)* @ixgbe_dcbnl_set_pg_tc_cfg_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_dcbnl_set_pg_tc_cfg_rx(%struct.net_device* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.ixgbe_adapter* %15, %struct.ixgbe_adapter** %13, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @DCB_ATTR_VALUE_UNDEFINED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %6
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %13, align 8
  %22 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i64 %20, i64* %31, align 8
  br label %32

32:                                               ; preds = %19, %6
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @DCB_ATTR_VALUE_UNDEFINED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %13, align 8
  %39 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i64 %37, i64* %48, align 8
  br label %49

49:                                               ; preds = %36, %32
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @DCB_ATTR_VALUE_UNDEFINED, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %13, align 8
  %56 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i64 %54, i64* %65, align 8
  br label %66

66:                                               ; preds = %53, %49
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @DCB_ATTR_VALUE_UNDEFINED, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %13, align 8
  %73 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i64 %71, i64* %82, align 8
  br label %83

83:                                               ; preds = %70, %66
  ret void
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
