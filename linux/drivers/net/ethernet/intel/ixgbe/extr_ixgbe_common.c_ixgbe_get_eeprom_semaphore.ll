; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_get_eeprom_semaphore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_get_eeprom_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_SWSM_SMBI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Driver can't access the Eeprom - SMBI Semaphore not granted.\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Software semaphore SMBI between device drivers not granted.\0A\00", align 1
@IXGBE_ERR_EEPROM = common dso_local global i32 0, align 4
@IXGBE_SWSM_SWESMBI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"SWESMBI Software EEPROM semaphore not granted.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_get_eeprom_semaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_eeprom_semaphore(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i64 2000, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %14 = call i32 @IXGBE_SWSM(%struct.ixgbe_hw* %13)
  %15 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %12, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @IXGBE_SWSM_SMBI, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  br label %26

21:                                               ; preds = %11
  %22 = call i32 @usleep_range(i32 50, i32 100)
  br label %23

23:                                               ; preds = %21
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %5, align 8
  br label %7

26:                                               ; preds = %20, %7
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %32 = call i32 @hw_dbg(%struct.ixgbe_hw* %31, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = call i32 @ixgbe_release_eeprom_semaphore(%struct.ixgbe_hw* %33)
  %35 = call i32 @usleep_range(i32 50, i32 100)
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %38 = call i32 @IXGBE_SWSM(%struct.ixgbe_hw* %37)
  %39 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %36, i32 %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @IXGBE_SWSM_SMBI, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %30
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %46 = call i32 @hw_dbg(%struct.ixgbe_hw* %45, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %47, i32* %2, align 4
  br label %92

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48, %26
  store i64 0, i64* %5, align 8
  br label %50

50:                                               ; preds = %78, %49
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = call i32 @IXGBE_SWSM(%struct.ixgbe_hw* %56)
  %58 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %55, i32 %57)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* @IXGBE_SWSM_SWESMBI, align 8
  %60 = load i64, i64* %6, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %6, align 8
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %64 = call i32 @IXGBE_SWSM(%struct.ixgbe_hw* %63)
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %62, i32 %64, i64 %65)
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %69 = call i32 @IXGBE_SWSM(%struct.ixgbe_hw* %68)
  %70 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %67, i32 %69)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @IXGBE_SWSM_SWESMBI, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %54
  br label %81

76:                                               ; preds = %54
  %77 = call i32 @usleep_range(i32 50, i32 100)
  br label %78

78:                                               ; preds = %76
  %79 = load i64, i64* %5, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %5, align 8
  br label %50

81:                                               ; preds = %75, %50
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* %4, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %87 = call i32 @hw_dbg(%struct.ixgbe_hw* %86, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %89 = call i32 @ixgbe_release_eeprom_semaphore(%struct.ixgbe_hw* %88)
  %90 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %90, i32* %2, align 4
  br label %92

91:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %85, %44
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_SWSM(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @ixgbe_release_eeprom_semaphore(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
