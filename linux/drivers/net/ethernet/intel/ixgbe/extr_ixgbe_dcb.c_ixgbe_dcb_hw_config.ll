; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_dcb_config = type { i32 }

@MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@DCB_TX_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_hw_config(%struct.ixgbe_hw* %0, %struct.ixgbe_dcb_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca %struct.ixgbe_dcb_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store %struct.ixgbe_dcb_config* %1, %struct.ixgbe_dcb_config** %5, align 8
  %14 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %21 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %24 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %27 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %30 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %31 = call i32 @ixgbe_dcb_unpack_pfc(%struct.ixgbe_dcb_config* %30, i32* %6)
  %32 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %33 = load i32, i32* @DCB_TX_CONFIG, align 4
  %34 = call i32 @ixgbe_dcb_unpack_refill(%struct.ixgbe_dcb_config* %32, i32 %33, i32* %26)
  %35 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %36 = call i32 @ixgbe_dcb_unpack_max(%struct.ixgbe_dcb_config* %35, i32* %29)
  %37 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %38 = load i32, i32* @DCB_TX_CONFIG, align 4
  %39 = call i32 @ixgbe_dcb_unpack_bwgid(%struct.ixgbe_dcb_config* %37, i32 %38, i32* %20)
  %40 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %41 = load i32, i32* @DCB_TX_CONFIG, align 4
  %42 = call i32 @ixgbe_dcb_unpack_prio(%struct.ixgbe_dcb_config* %40, i32 %41, i32* %17)
  %43 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %44 = load i32, i32* @DCB_TX_CONFIG, align 4
  %45 = call i32 @ixgbe_dcb_unpack_map(%struct.ixgbe_dcb_config* %43, i32 %44, i32* %23)
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %47 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %58 [
    i32 133, label %50
    i32 132, label %54
    i32 131, label %54
    i32 130, label %54
    i32 129, label %54
    i32 128, label %54
  ]

50:                                               ; preds = %2
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ixgbe_dcb_hw_config_82598(%struct.ixgbe_hw* %51, i32 %52, i32* %26, i32* %29, i32* %20, i32* %17)
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %60

54:                                               ; preds = %2, %2, %2, %2, %2
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @ixgbe_dcb_hw_config_82599(%struct.ixgbe_hw* %55, i32 %56, i32* %26, i32* %29, i32* %20, i32* %17, i32* %23)
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %60

58:                                               ; preds = %2
  br label %59

59:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %60

60:                                               ; preds = %59, %54, %50
  %61 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ixgbe_dcb_unpack_pfc(%struct.ixgbe_dcb_config*, i32*) #2

declare dso_local i32 @ixgbe_dcb_unpack_refill(%struct.ixgbe_dcb_config*, i32, i32*) #2

declare dso_local i32 @ixgbe_dcb_unpack_max(%struct.ixgbe_dcb_config*, i32*) #2

declare dso_local i32 @ixgbe_dcb_unpack_bwgid(%struct.ixgbe_dcb_config*, i32, i32*) #2

declare dso_local i32 @ixgbe_dcb_unpack_prio(%struct.ixgbe_dcb_config*, i32, i32*) #2

declare dso_local i32 @ixgbe_dcb_unpack_map(%struct.ixgbe_dcb_config*, i32, i32*) #2

declare dso_local i32 @ixgbe_dcb_hw_config_82598(%struct.ixgbe_hw*, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @ixgbe_dcb_hw_config_82599(%struct.ixgbe_hw*, i32, i32*, i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
