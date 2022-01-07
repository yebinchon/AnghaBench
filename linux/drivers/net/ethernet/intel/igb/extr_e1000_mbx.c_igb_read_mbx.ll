; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_mbx.c_igb_read_mbx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_mbx.c_igb_read_mbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i32*, i64, i64, i32)* }
%struct.e1000_hw.0 = type opaque

@E1000_ERR_MBX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_read_mbx(%struct.e1000_hw* %0, i32* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.e1000_mbx_info*, align 8
  %12 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  store %struct.e1000_mbx_info* %14, %struct.e1000_mbx_info** %11, align 8
  %15 = load i32, i32* @E1000_ERR_MBX, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %11, align 8
  %19 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %11, align 8
  %24 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %22, %5
  %27 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %11, align 8
  %28 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.e1000_hw.0*, i32*, i64, i64, i32)*, i32 (%struct.e1000_hw.0*, i32*, i64, i64, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.e1000_hw.0*, i32*, i64, i64, i32)* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %11, align 8
  %34 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.e1000_hw.0*, i32*, i64, i64, i32)*, i32 (%struct.e1000_hw.0*, i32*, i64, i64, i32)** %35, align 8
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %38 = bitcast %struct.e1000_hw* %37 to %struct.e1000_hw.0*
  %39 = load i32*, i32** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 %36(%struct.e1000_hw.0* %38, i32* %39, i64 %40, i64 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %32, %26
  %45 = load i32, i32* %12, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
