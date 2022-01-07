; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_verify_fw_version_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_verify_fw_version_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@IXGBE_ERR_EEPROM_VERSION = common dso_local global i64 0, align 8
@ixgbe_media_type_fiber = common dso_local global i64 0, align 8
@IXGBE_FW_PTR = common dso_local global i32 0, align 4
@IXGBE_FW_PASSTHROUGH_PATCH_CONFIG_PTR = common dso_local global i32 0, align 4
@IXGBE_FW_PATCH_VERSION_4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"eeprom read at offset %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_verify_fw_version_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_verify_fw_version_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %9 = load i64, i64* @IXGBE_ERR_EEPROM_VERSION, align 8
  store i64 %9, i64* %4, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ixgbe_media_type_fiber, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %87

17:                                               ; preds = %1
  %18 = load i32, i32* @IXGBE_FW_PTR, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %22, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = bitcast %struct.ixgbe_hw* %24 to %struct.ixgbe_hw.0*
  %26 = load i32, i32* %7, align 4
  %27 = call i64 %23(%struct.ixgbe_hw.0* %25, i32 %26, i32* %5)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %82

30:                                               ; preds = %17
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 65535
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %30
  %37 = load i64, i64* @IXGBE_ERR_EEPROM_VERSION, align 8
  store i64 %37, i64* %2, align 8
  br label %87

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @IXGBE_FW_PASSTHROUGH_PATCH_CONFIG_PTR, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %45, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %48 = bitcast %struct.ixgbe_hw* %47 to %struct.ixgbe_hw.0*
  %49 = load i32, i32* %7, align 4
  %50 = call i64 %46(%struct.ixgbe_hw.0* %48, i32 %49, i32* %6)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %82

53:                                               ; preds = %38
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 65535
  br i1 %58, label %59, label %61

59:                                               ; preds = %56, %53
  %60 = load i64, i64* @IXGBE_ERR_EEPROM_VERSION, align 8
  store i64 %60, i64* %2, align 8
  br label %87

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @IXGBE_FW_PATCH_VERSION_4, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %7, align 4
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %68, align 8
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %71 = bitcast %struct.ixgbe_hw* %70 to %struct.ixgbe_hw.0*
  %72 = load i32, i32* %7, align 4
  %73 = call i64 %69(%struct.ixgbe_hw.0* %71, i32 %72, i32* %8)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %61
  br label %82

76:                                               ; preds = %61
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %77, 5
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i64 0, i64* %4, align 8
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i64, i64* %4, align 8
  store i64 %81, i64* %2, align 8
  br label %87

82:                                               ; preds = %75, %52, %29
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @hw_err(%struct.ixgbe_hw* %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i64, i64* @IXGBE_ERR_EEPROM_VERSION, align 8
  store i64 %86, i64* %2, align 8
  br label %87

87:                                               ; preds = %82, %80, %59, %36, %16
  %88 = load i64, i64* %2, align 8
  ret i64 %88
}

declare dso_local i32 @hw_err(%struct.ixgbe_hw*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
