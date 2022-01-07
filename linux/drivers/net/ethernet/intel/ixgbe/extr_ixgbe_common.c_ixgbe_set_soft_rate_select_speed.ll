; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_set_soft_rate_select_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_set_soft_rate_select_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_SFF_SOFT_RS_SELECT_10G = common dso_local global i32 0, align 4
@IXGBE_SFF_SOFT_RS_SELECT_1G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid fixed module speed\0A\00", align 1
@IXGBE_SFF_SFF_8472_OSCB = common dso_local global i32 0, align 4
@IXGBE_I2C_EEPROM_DEV_ADDR2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to read Rx Rate Select RS0\0A\00", align 1
@IXGBE_SFF_SOFT_RS_SELECT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to write Rx Rate Select RS0\0A\00", align 1
@IXGBE_SFF_SFF_8472_ESCB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to read Rx Rate Select RS1\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to write Rx Rate Select RS1\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_soft_rate_select_speed(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %13 [
    i32 129, label %9
    i32 128, label %11
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @IXGBE_SFF_SOFT_RS_SELECT_10G, align 4
  store i32 %10, i32* %6, align 4
  br label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @IXGBE_SFF_SOFT_RS_SELECT_1G, align 4
  store i32 %12, i32* %6, align 4
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = call i32 @hw_dbg(%struct.ixgbe_hw* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %94

16:                                               ; preds = %11, %9
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %20, align 8
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %23 = bitcast %struct.ixgbe_hw* %22 to %struct.ixgbe_hw.1*
  %24 = load i32, i32* @IXGBE_SFF_SFF_8472_OSCB, align 4
  %25 = load i32, i32* @IXGBE_I2C_EEPROM_DEV_ADDR2, align 4
  %26 = call i64 %21(%struct.ixgbe_hw.1* %23, i32 %24, i32 %25, i32* %7)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %31 = call i32 @hw_dbg(%struct.ixgbe_hw* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %94

32:                                               ; preds = %16
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @IXGBE_SFF_SOFT_RS_SELECT_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32)** %42, align 8
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %45 = bitcast %struct.ixgbe_hw* %44 to %struct.ixgbe_hw.0*
  %46 = load i32, i32* @IXGBE_SFF_SFF_8472_OSCB, align 4
  %47 = load i32, i32* @IXGBE_I2C_EEPROM_DEV_ADDR2, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i64 %43(%struct.ixgbe_hw.0* %45, i32 %46, i32 %47, i32 %48)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %32
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %54 = call i32 @hw_dbg(%struct.ixgbe_hw* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %94

55:                                               ; preds = %32
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %59, align 8
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %62 = bitcast %struct.ixgbe_hw* %61 to %struct.ixgbe_hw.1*
  %63 = load i32, i32* @IXGBE_SFF_SFF_8472_ESCB, align 4
  %64 = load i32, i32* @IXGBE_I2C_EEPROM_DEV_ADDR2, align 4
  %65 = call i64 %60(%struct.ixgbe_hw.1* %62, i32 %63, i32 %64, i32* %7)
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %70 = call i32 @hw_dbg(%struct.ixgbe_hw* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %94

71:                                               ; preds = %55
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @IXGBE_SFF_SOFT_RS_SELECT_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %7, align 4
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %79 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32)** %81, align 8
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %84 = bitcast %struct.ixgbe_hw* %83 to %struct.ixgbe_hw.0*
  %85 = load i32, i32* @IXGBE_SFF_SFF_8472_ESCB, align 4
  %86 = load i32, i32* @IXGBE_I2C_EEPROM_DEV_ADDR2, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i64 %82(%struct.ixgbe_hw.0* %84, i32 %85, i32 %86, i32 %87)
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %5, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %71
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %93 = call i32 @hw_dbg(%struct.ixgbe_hw* %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %94

94:                                               ; preds = %13, %29, %52, %68, %91, %71
  ret void
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
