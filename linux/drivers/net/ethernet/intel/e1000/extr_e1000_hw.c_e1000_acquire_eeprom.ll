; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_acquire_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_acquire_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, %struct.e1000_eeprom_info }
%struct.e1000_eeprom_info = type { i64 }

@EECD = common dso_local global i32 0, align 4
@e1000_82544 = common dso_local global i64 0, align 8
@E1000_EECD_REQ = common dso_local global i64 0, align 8
@E1000_EECD_GNT = common dso_local global i64 0, align 8
@E1000_EEPROM_GRANT_ATTEMPTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Could not acquire EEPROM grant\0A\00", align 1
@E1000_ERR_EEPROM = common dso_local global i32 0, align 4
@e1000_eeprom_microwire = common dso_local global i64 0, align 8
@E1000_EECD_DI = common dso_local global i64 0, align 8
@E1000_EECD_SK = common dso_local global i64 0, align 8
@E1000_EECD_CS = common dso_local global i64 0, align 8
@e1000_eeprom_spi = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_acquire_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_acquire_eeprom(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_eeprom_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  store %struct.e1000_eeprom_info* %8, %struct.e1000_eeprom_info** %4, align 8
  store i64 0, i64* %6, align 8
  %9 = load i32, i32* @EECD, align 4
  %10 = call i64 @er32(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_82544, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %1
  %17 = load i64, i64* @E1000_EECD_REQ, align 8
  %18 = load i64, i64* %5, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %5, align 8
  %20 = load i32, i32* @EECD, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @ew32(i32 %20, i64 %21)
  %23 = load i32, i32* @EECD, align 4
  %24 = call i64 @er32(i32 %23)
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %36, %16
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @E1000_EECD_GNT, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @E1000_EEPROM_GRANT_ATTEMPTS, align 8
  %33 = icmp slt i64 %31, %32
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i1 [ false, %25 ], [ %33, %30 ]
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %6, align 8
  %39 = call i32 @udelay(i32 5)
  %40 = load i32, i32* @EECD, align 4
  %41 = call i64 @er32(i32 %40)
  store i64 %41, i64* %5, align 8
  br label %25

42:                                               ; preds = %34
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @E1000_EECD_GNT, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %42
  %48 = load i64, i64* @E1000_EECD_REQ, align 8
  %49 = xor i64 %48, -1
  %50 = load i64, i64* %5, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %5, align 8
  %52 = load i32, i32* @EECD, align 4
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @ew32(i32 %52, i64 %53)
  %55 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @E1000_ERR_EEPROM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %102

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58, %1
  %60 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %61 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @e1000_eeprom_microwire, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %59
  %66 = load i64, i64* @E1000_EECD_DI, align 8
  %67 = load i64, i64* @E1000_EECD_SK, align 8
  %68 = or i64 %66, %67
  %69 = xor i64 %68, -1
  %70 = load i64, i64* %5, align 8
  %71 = and i64 %70, %69
  store i64 %71, i64* %5, align 8
  %72 = load i32, i32* @EECD, align 4
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @ew32(i32 %72, i64 %73)
  %75 = load i64, i64* @E1000_EECD_CS, align 8
  %76 = load i64, i64* %5, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %5, align 8
  %78 = load i32, i32* @EECD, align 4
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @ew32(i32 %78, i64 %79)
  br label %100

81:                                               ; preds = %59
  %82 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %83 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @e1000_eeprom_spi, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = load i64, i64* @E1000_EECD_CS, align 8
  %89 = load i64, i64* @E1000_EECD_SK, align 8
  %90 = or i64 %88, %89
  %91 = xor i64 %90, -1
  %92 = load i64, i64* %5, align 8
  %93 = and i64 %92, %91
  store i64 %93, i64* %5, align 8
  %94 = load i32, i32* @EECD, align 4
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @ew32(i32 %94, i64 %95)
  %97 = call i32 (...) @E1000_WRITE_FLUSH()
  %98 = call i32 @udelay(i32 1)
  br label %99

99:                                               ; preds = %87, %81
  br label %100

100:                                              ; preds = %99, %65
  %101 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %47
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @er32(i32) #1

declare dso_local i32 @ew32(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
