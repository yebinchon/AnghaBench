; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_do_write_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_do_write_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, %struct.e1000_eeprom_info }
%struct.e1000_eeprom_info = type { i64, i64 }

@e1000_ce4100 = common dso_local global i64 0, align 8
@GBE_CONFIG_BASE_VIRT = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"\22words\22 parameter out of bounds\0A\00", align 1
@E1000_ERR_EEPROM = common dso_local global i64 0, align 8
@e1000_eeprom_microwire = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64, i64, i64*)* @e1000_do_write_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_do_write_eeprom(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.e1000_eeprom_info*, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  store %struct.e1000_eeprom_info* %13, %struct.e1000_eeprom_info** %10, align 8
  store i64 0, i64* %11, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e1000_ce4100, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i32, i32* @GBE_CONFIG_BASE_VIRT, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = call i32 @GBE_CONFIG_FLASH_WRITE(i32 %20, i64 %21, i64 %22, i64* %23)
  %25 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %25, i64* %5, align 8
  br label %78

26:                                               ; preds = %4
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %29 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %43, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %35 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub nsw i64 %36, %37
  %39 = icmp sgt i64 %33, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %32, %26
  %44 = call i32 @e_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %45 = load i64, i64* @E1000_ERR_EEPROM, align 8
  %46 = sub nsw i64 0, %45
  store i64 %46, i64* %5, align 8
  br label %78

47:                                               ; preds = %40
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %49 = call i64 @e1000_acquire_eeprom(%struct.e1000_hw* %48)
  %50 = load i64, i64* @E1000_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* @E1000_ERR_EEPROM, align 8
  %54 = sub nsw i64 0, %53
  store i64 %54, i64* %5, align 8
  br label %78

55:                                               ; preds = %47
  %56 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %57 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @e1000_eeprom_microwire, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = call i64 @e1000_write_eeprom_microwire(%struct.e1000_hw* %62, i64 %63, i64 %64, i64* %65)
  store i64 %66, i64* %11, align 8
  br label %74

67:                                               ; preds = %55
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64*, i64** %9, align 8
  %72 = call i64 @e1000_write_eeprom_spi(%struct.e1000_hw* %68, i64 %69, i64 %70, i64* %71)
  store i64 %72, i64* %11, align 8
  %73 = call i32 @msleep(i32 10)
  br label %74

74:                                               ; preds = %67, %61
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %76 = call i32 @e1000_release_eeprom(%struct.e1000_hw* %75)
  %77 = load i64, i64* %11, align 8
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %74, %52, %43, %19
  %79 = load i64, i64* %5, align 8
  ret i64 %79
}

declare dso_local i32 @GBE_CONFIG_FLASH_WRITE(i32, i64, i64, i64*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_acquire_eeprom(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_write_eeprom_microwire(%struct.e1000_hw*, i64, i64, i64*) #1

declare dso_local i64 @e1000_write_eeprom_spi(%struct.e1000_hw*, i64, i64, i64*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @e1000_release_eeprom(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
