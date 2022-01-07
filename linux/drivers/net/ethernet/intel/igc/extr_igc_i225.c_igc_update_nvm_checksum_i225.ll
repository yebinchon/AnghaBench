; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_i225.c_igc_update_nvm_checksum_i225.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_i225.c_igc_update_nvm_checksum_i225.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.igc_hw.0*)*, i64 (%struct.igc_hw.1*)* }
%struct.igc_hw.0 = type opaque
%struct.igc_hw.1 = type opaque

@.str = private unnamed_addr constant [20 x i8] c"EEPROM read failed\0A\00", align 1
@NVM_CHECKSUM_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"NVM Read Error while updating checksum.\0A\00", align 1
@NVM_SUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"NVM Write Error while updating checksum.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.igc_hw*)* @igc_update_nvm_checksum_i225 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igc_update_nvm_checksum_i225(%struct.igc_hw* %0) #0 {
  %2 = alloca %struct.igc_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.igc_hw* %0, %struct.igc_hw** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %8 = call i64 @igc_read_nvm_eerd(%struct.igc_hw* %7, i64 0, i32 1, i64* %6)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @hw_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %83

13:                                               ; preds = %1
  %14 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %15 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64 (%struct.igc_hw.1*)*, i64 (%struct.igc_hw.1*)** %17, align 8
  %19 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %20 = bitcast %struct.igc_hw* %19 to %struct.igc_hw.1*
  %21 = call i64 %18(%struct.igc_hw.1* %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %83

25:                                               ; preds = %13
  store i64 0, i64* %5, align 8
  br label %26

26:                                               ; preds = %50, %25
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %26
  %31 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @igc_read_nvm_eerd(%struct.igc_hw* %31, i64 %32, i32 1, i64* %6)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %38 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (%struct.igc_hw.0*)*, i32 (%struct.igc_hw.0*)** %40, align 8
  %42 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %43 = bitcast %struct.igc_hw* %42 to %struct.igc_hw.0*
  %44 = call i32 %41(%struct.igc_hw.0* %43)
  %45 = call i32 @hw_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %83

46:                                               ; preds = %30
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %5, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %5, align 8
  br label %26

53:                                               ; preds = %26
  %54 = load i64, i64* @NVM_SUM, align 8
  %55 = load i64, i64* %3, align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %3, align 8
  %57 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %58 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %59 = call i64 @igc_write_nvm_srwr(%struct.igc_hw* %57, i64 %58, i32 1, i64* %3)
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %53
  %63 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %64 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32 (%struct.igc_hw.0*)*, i32 (%struct.igc_hw.0*)** %66, align 8
  %68 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %69 = bitcast %struct.igc_hw* %68 to %struct.igc_hw.0*
  %70 = call i32 %67(%struct.igc_hw.0* %69)
  %71 = call i32 @hw_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %83

72:                                               ; preds = %53
  %73 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %74 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32 (%struct.igc_hw.0*)*, i32 (%struct.igc_hw.0*)** %76, align 8
  %78 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %79 = bitcast %struct.igc_hw* %78 to %struct.igc_hw.0*
  %80 = call i32 %77(%struct.igc_hw.0* %79)
  %81 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %82 = call i64 @igc_update_flash_i225(%struct.igc_hw* %81)
  store i64 %82, i64* %4, align 8
  br label %83

83:                                               ; preds = %72, %62, %36, %24, %11
  %84 = load i64, i64* %4, align 8
  ret i64 %84
}

declare dso_local i64 @igc_read_nvm_eerd(%struct.igc_hw*, i64, i32, i64*) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i64 @igc_write_nvm_srwr(%struct.igc_hw*, i64, i32, i64*) #1

declare dso_local i64 @igc_update_flash_i225(%struct.igc_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
