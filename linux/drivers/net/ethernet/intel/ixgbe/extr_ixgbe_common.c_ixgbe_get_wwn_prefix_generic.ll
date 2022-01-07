; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_get_wwn_prefix_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_get_wwn_prefix_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_ALT_SAN_MAC_ADDR_BLK_PTR = common dso_local global i32 0, align 4
@IXGBE_ALT_SAN_MAC_ADDR_CAPS_OFFSET = common dso_local global i32 0, align 4
@IXGBE_ALT_SAN_MAC_ADDR_CAPS_ALTWWN = common dso_local global i32 0, align 4
@IXGBE_ALT_SAN_MAC_ADDR_WWNN_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"eeprom read at offset %d failed\0A\00", align 1
@IXGBE_ALT_SAN_MAC_ADDR_WWPN_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_wwn_prefix_generic(%struct.ixgbe_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  store i32 65535, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 65535, i32* %12, align 4
  %13 = load i32, i32* @IXGBE_ALT_SAN_MAC_ADDR_BLK_PTR, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %17, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %20 = bitcast %struct.ixgbe_hw* %19 to %struct.ixgbe_hw.0*
  %21 = load i32, i32* %8, align 4
  %22 = call i64 %18(%struct.ixgbe_hw.0* %20, i32 %21, i32* %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %89

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 65535
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25
  store i32 0, i32* %4, align 4
  br label %93

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @IXGBE_ALT_SAN_MAC_ADDR_CAPS_OFFSET, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %39, align 8
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %42 = bitcast %struct.ixgbe_hw* %41 to %struct.ixgbe_hw.0*
  %43 = load i32, i32* %8, align 4
  %44 = call i64 %40(%struct.ixgbe_hw.0* %42, i32 %43, i32* %9)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %89

47:                                               ; preds = %32
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @IXGBE_ALT_SAN_MAC_ADDR_CAPS_ALTWWN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %93

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @IXGBE_ALT_SAN_MAC_ADDR_WWNN_OFFSET, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %8, align 4
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %58 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %60, align 8
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %63 = bitcast %struct.ixgbe_hw* %62 to %struct.ixgbe_hw.0*
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = call i64 %61(%struct.ixgbe_hw.0* %63, i32 %64, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @hw_err(%struct.ixgbe_hw* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %53
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @IXGBE_ALT_SAN_MAC_ADDR_WWPN_OFFSET, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %8, align 4
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %79, align 8
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %82 = bitcast %struct.ixgbe_hw* %81 to %struct.ixgbe_hw.0*
  %83 = load i32, i32* %8, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = call i64 %80(%struct.ixgbe_hw.0* %82, i32 %83, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %72
  br label %89

88:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %93

89:                                               ; preds = %87, %46, %24
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @hw_err(%struct.ixgbe_hw* %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %91)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %89, %88, %52, %31
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @hw_err(%struct.ixgbe_hw*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
