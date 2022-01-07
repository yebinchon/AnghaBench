; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_write_ee_hostif_buffer_X550.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_write_ee_hostif_buffer_X550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_GSSR_EEP_SM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"EEPROM write buffer - semaphore failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Eeprom buffered write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i64, i64, i64*)* @ixgbe_write_ee_hostif_buffer_X550 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_write_ee_hostif_buffer_X550(%struct.ixgbe_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %15, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %18 = bitcast %struct.ixgbe_hw* %17 to %struct.ixgbe_hw.1*
  %19 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %20 = call i64 %16(%struct.ixgbe_hw.1* %18, i32 %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %25 = call i32 @hw_dbg(%struct.ixgbe_hw* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* %10, align 8
  store i64 %26, i64* %5, align 8
  br label %62

27:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %28

28:                                               ; preds = %48, %27
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %11, align 8
  %36 = add i64 %34, %35
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @ixgbe_write_ee_hostif_data_X550(%struct.ixgbe_hw* %33, i64 %36, i64 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %46 = call i32 @hw_dbg(%struct.ixgbe_hw* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %51

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %11, align 8
  br label %28

51:                                               ; preds = %44, %28
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %55, align 8
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %58 = bitcast %struct.ixgbe_hw* %57 to %struct.ixgbe_hw.0*
  %59 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %60 = call i32 %56(%struct.ixgbe_hw.0* %58, i32 %59)
  %61 = load i64, i64* %10, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %51, %23
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i64 @ixgbe_write_ee_hostif_data_X550(%struct.ixgbe_hw*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
