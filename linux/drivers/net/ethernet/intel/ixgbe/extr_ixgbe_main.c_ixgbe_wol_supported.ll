; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_wol_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_wol_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i64, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@IXGBE_DEVICE_CAPS_WOL_MASK = common dso_local global i64 0, align 8
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@ixgbe_mac_X540 = common dso_local global i64 0, align 8
@IXGBE_DEVICE_CAPS_WOL_PORT0_1 = common dso_local global i64 0, align 8
@IXGBE_DEVICE_CAPS_WOL_PORT0 = common dso_local global i64 0, align 8
@IXGBE_SUBDEV_ID_82599_KX4_KR_MEZZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_wol_supported(%struct.ixgbe_adapter* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ixgbe_hw*, align 8
  %9 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 1
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %8, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IXGBE_DEVICE_CAPS_WOL_MASK, align 8
  %16 = and i64 %14, %15
  store i64 %16, i64* %9, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %74

24:                                               ; preds = %3
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ixgbe_mac_X540, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @IXGBE_DEVICE_CAPS_WOL_PORT0_1, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @IXGBE_DEVICE_CAPS_WOL_PORT0, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %31
  store i32 1, i32* %4, align 4
  br label %74

46:                                               ; preds = %39, %35
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i64, i64* %6, align 8
  switch i64 %48, label %72 [
    i64 140, label %49
    i64 143, label %61
    i64 142, label %65
    i64 141, label %71
  ]

49:                                               ; preds = %47
  %50 = load i64, i64* %7, align 8
  switch i64 %50, label %60 [
    i64 138, label %51
    i64 136, label %51
    i64 129, label %51
    i64 132, label %51
    i64 128, label %59
    i64 134, label %59
    i64 135, label %59
    i64 137, label %59
    i64 133, label %59
    i64 131, label %59
    i64 130, label %59
  ]

51:                                               ; preds = %49, %49, %49, %49
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %60

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %49, %49, %49, %49, %49, %49, %49, %58
  store i32 1, i32* %4, align 4
  br label %74

60:                                               ; preds = %49, %57
  br label %73

61:                                               ; preds = %47
  %62 = load i64, i64* %7, align 8
  switch i64 %62, label %64 [
    i64 139, label %63
  ]

63:                                               ; preds = %61
  store i32 1, i32* %4, align 4
  br label %74

64:                                               ; preds = %61
  br label %73

65:                                               ; preds = %47
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @IXGBE_SUBDEV_ID_82599_KX4_KR_MEZZ, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %74

70:                                               ; preds = %65
  br label %73

71:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  br label %74

72:                                               ; preds = %47
  br label %73

73:                                               ; preds = %72, %70, %64, %60
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %71, %69, %63, %59, %45, %23
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
