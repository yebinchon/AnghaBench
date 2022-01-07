; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_flash_cycle_init_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_flash_cycle_init_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%union.ich8_hws_flash_status = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@E1000_ERR_NVM = common dso_local global i64 0, align 8
@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Flash descriptor invalid.  SW Sequencing must be used.\0A\00", align 1
@e1000_pch_spt = common dso_local global i64 0, align 8
@ICH_FLASH_READ_COMMAND_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Flash controller busy, cannot get access\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_flash_cycle_init_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %union.ich8_hws_flash_status, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load i64, i64* @E1000_ERR_NVM, align 8
  %8 = sub nsw i64 0, %7
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %10 = call i8* @er16flash(i32 %9)
  %11 = ptrtoint i8* %10 to i32
  %12 = bitcast %union.ich8_hws_flash_status* %4 to i32*
  store i32 %11, i32* %12, align 4
  %13 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = call i32 @e_dbg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @E1000_ERR_NVM, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %2, align 8
  br label %118

21:                                               ; preds = %1
  %22 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @e1000_pch_spt, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %34 = bitcast %union.ich8_hws_flash_status* %4 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 65535
  %37 = call i32 @ew32flash(i32 %33, i32 %36)
  br label %43

38:                                               ; preds = %21
  %39 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %40 = bitcast %union.ich8_hws_flash_status* %4 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ew16flash(i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %38, %32
  %44 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_3__*
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %43
  %49 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_3__*
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32 1, i32* %50, align 4
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @e1000_pch_spt, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %59 = bitcast %union.ich8_hws_flash_status* %4 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 65535
  %62 = call i32 @ew32flash(i32 %58, i32 %61)
  br label %68

63:                                               ; preds = %48
  %64 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %65 = bitcast %union.ich8_hws_flash_status* %4 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ew16flash(i32 %64, i32 %66)
  br label %68

68:                                               ; preds = %63, %57
  store i64 0, i64* %5, align 8
  br label %116

69:                                               ; preds = %43
  store i64 0, i64* %6, align 8
  br label %70

70:                                               ; preds = %86, %69
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @ICH_FLASH_READ_COMMAND_TIMEOUT, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %76 = call i8* @er16flash(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = bitcast %union.ich8_hws_flash_status* %4 to i32*
  store i32 %77, i32* %78, align 4
  %79 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_3__*
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  store i64 0, i64* %5, align 8
  br label %89

84:                                               ; preds = %74
  %85 = call i32 @udelay(i32 1)
  br label %86

86:                                               ; preds = %84
  %87 = load i64, i64* %6, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %6, align 8
  br label %70

89:                                               ; preds = %83, %70
  %90 = load i64, i64* %5, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %113, label %92

92:                                               ; preds = %89
  %93 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_3__*
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  store i32 1, i32* %94, align 4
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %96 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @e1000_pch_spt, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %103 = bitcast %union.ich8_hws_flash_status* %4 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 65535
  %106 = call i32 @ew32flash(i32 %102, i32 %105)
  br label %112

107:                                              ; preds = %92
  %108 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %109 = bitcast %union.ich8_hws_flash_status* %4 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ew16flash(i32 %108, i32 %110)
  br label %112

112:                                              ; preds = %107, %101
  br label %115

113:                                              ; preds = %89
  %114 = call i32 @e_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %112
  br label %116

116:                                              ; preds = %115, %68
  %117 = load i64, i64* %5, align 8
  store i64 %117, i64* %2, align 8
  br label %118

118:                                              ; preds = %116, %17
  %119 = load i64, i64* %2, align 8
  ret i64 %119
}

declare dso_local i8* @er16flash(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32flash(i32, i32) #1

declare dso_local i32 @ew16flash(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
