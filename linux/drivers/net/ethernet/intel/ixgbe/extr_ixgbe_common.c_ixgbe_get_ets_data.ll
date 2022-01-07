; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_get_ets_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_get_ets_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_ETS_CFG = common dso_local global i32 0, align 4
@IXGBE_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@IXGBE_ETS_TYPE_MASK = common dso_local global i32 0, align 4
@IXGBE_ETS_TYPE_EMC_SHIFTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32*, i32*)* @ixgbe_get_ets_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_get_ets_data(%struct.ixgbe_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %12, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = bitcast %struct.ixgbe_hw* %14 to %struct.ixgbe_hw.0*
  %16 = load i32, i32* @IXGBE_ETS_CFG, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 %13(%struct.ixgbe_hw.0* %15, i32 %16, i32* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %4, align 8
  br label %59

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 65535
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23
  %32 = load i64, i64* @IXGBE_NOT_IMPLEMENTED, align 8
  store i64 %32, i64* %4, align 8
  br label %59

33:                                               ; preds = %27
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %37, align 8
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %40 = bitcast %struct.ixgbe_hw* %39 to %struct.ixgbe_hw.0*
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 %38(%struct.ixgbe_hw.0* %40, i32 %42, i32* %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %4, align 8
  br label %59

49:                                               ; preds = %33
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IXGBE_ETS_TYPE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @IXGBE_ETS_TYPE_EMC_SHIFTED, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i64, i64* @IXGBE_NOT_IMPLEMENTED, align 8
  store i64 %57, i64* %4, align 8
  br label %59

58:                                               ; preds = %49
  store i64 0, i64* %4, align 8
  br label %59

59:                                               ; preds = %58, %56, %47, %31, %21
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
