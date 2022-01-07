; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_i210.c_igb_update_nvm_checksum_i210.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_i210.c_igb_update_nvm_checksum_i210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [20 x i8] c"EEPROM read failed\0A\00", align 1
@NVM_CHECKSUM_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"NVM Read Error while updating checksum.\0A\00", align 1
@NVM_SUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"NVM Write Error while updating checksum.\0A\00", align 1
@E1000_ERR_SWFW_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @igb_update_nvm_checksum_i210 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_update_nvm_checksum_i210(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = call i32 @igb_read_nvm_eerd(%struct.e1000_hw* %7, i64 0, i32 1, i64* %6)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @hw_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %85

13:                                               ; preds = %1
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %17, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = bitcast %struct.e1000_hw* %19 to %struct.e1000_hw.1*
  %21 = call i32 %18(%struct.e1000_hw.1* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %81, label %23

23:                                               ; preds = %13
  store i64 0, i64* %5, align 8
  br label %24

24:                                               ; preds = %48, %23
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @igb_read_nvm_eerd(%struct.e1000_hw* %29, i64 %30, i32 1, i64* %6)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %38, align 8
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %41 = bitcast %struct.e1000_hw* %40 to %struct.e1000_hw.0*
  %42 = call i32 %39(%struct.e1000_hw.0* %41)
  %43 = call i32 @hw_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %85

44:                                               ; preds = %28
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %4, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %5, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %5, align 8
  br label %24

51:                                               ; preds = %24
  %52 = load i64, i64* @NVM_SUM, align 8
  %53 = load i64, i64* %4, align 8
  %54 = sub nsw i64 %52, %53
  store i64 %54, i64* %4, align 8
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %56 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %57 = call i32 @igb_write_nvm_srwr(%struct.e1000_hw* %55, i64 %56, i32 1, i64* %4)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %62 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %64, align 8
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %67 = bitcast %struct.e1000_hw* %66 to %struct.e1000_hw.0*
  %68 = call i32 %65(%struct.e1000_hw.0* %67)
  %69 = call i32 @hw_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %85

70:                                               ; preds = %51
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %72 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %74, align 8
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %77 = bitcast %struct.e1000_hw* %76 to %struct.e1000_hw.0*
  %78 = call i32 %75(%struct.e1000_hw.0* %77)
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %80 = call i32 @igb_update_flash_i210(%struct.e1000_hw* %79)
  store i32 %80, i32* %3, align 4
  br label %84

81:                                               ; preds = %13
  %82 = load i32, i32* @E1000_ERR_SWFW_SYNC, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %70
  br label %85

85:                                               ; preds = %84, %60, %34, %11
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @igb_read_nvm_eerd(%struct.e1000_hw*, i64, i32, i64*) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @igb_write_nvm_srwr(%struct.e1000_hw*, i64, i32, i64*) #1

declare dso_local i32 @igb_update_flash_i210(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
