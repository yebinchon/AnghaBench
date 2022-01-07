; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_init_hw_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_init_hw_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_init_hw_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %7, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = bitcast %struct.ixgbe_hw* %9 to %struct.ixgbe_hw.0*
  %11 = call i64 %8(%struct.ixgbe_hw.0* %10)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %18, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = bitcast %struct.ixgbe_hw* %20 to %struct.ixgbe_hw.1*
  %22 = call i64 %19(%struct.ixgbe_hw.1* %21)
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %27, align 8
  %29 = icmp ne i32 (%struct.ixgbe_hw.2*)* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %34, align 8
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %37 = bitcast %struct.ixgbe_hw* %36 to %struct.ixgbe_hw.2*
  %38 = call i32 %35(%struct.ixgbe_hw.2* %37)
  br label %39

39:                                               ; preds = %30, %23
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
