; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_mbx.c_ixgbe_read_mbx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_mbx.c_ixgbe_read_mbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_mbx_info }
%struct.ixgbe_mbx_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@IXGBE_ERR_MBX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_read_mbx(%struct.ixgbe_hw* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ixgbe_mbx_info*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  store %struct.ixgbe_mbx_info* %12, %struct.ixgbe_mbx_info** %10, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %10, align 8
  %15 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %10, align 8
  %20 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %18, %4
  %23 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %10, align 8
  %24 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @IXGBE_ERR_MBX, align 4
  store i32 %28, i32* %5, align 4
  br label %41

29:                                               ; preds = %22
  %30 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %10, align 8
  %31 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.ixgbe_hw*, i32*, i64, i64)**
  %35 = load i32 (%struct.ixgbe_hw*, i32*, i64, i64)*, i32 (%struct.ixgbe_hw*, i32*, i64, i64)** %34, align 8
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 %35(%struct.ixgbe_hw* %36, i32* %37, i64 %38, i64 %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %29, %27
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
