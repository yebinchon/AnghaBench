; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_read_flash_data32_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_read_flash_data32_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%union.ich8_hws_flash_status = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%union.ich8_hws_flash_ctrl = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@E1000_ERR_NVM = common dso_local global i64 0, align 8
@ICH_FLASH_LINEAR_ADDR_MASK = common dso_local global i32 0, align 4
@e1000_pch_spt = common dso_local global i64 0, align 8
@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@ICH_CYCLE_READ = common dso_local global i32 0, align 4
@ICH_FLASH_FADDR = common dso_local global i32 0, align 4
@ICH_FLASH_READ_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@ICH_FLASH_FDATA0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Timeout error - flash cycle did not complete.\0A\00", align 1
@ICH_FLASH_CYCLE_REPEAT_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32*)* @e1000_read_flash_data32_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_read_flash_data32_ich8lan(%struct.e1000_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %union.ich8_hws_flash_status, align 8
  %9 = alloca %union.ich8_hws_flash_ctrl, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i64, i64* @E1000_ERR_NVM, align 8
  %14 = sub nsw i64 0, %13
  store i64 %14, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @e1000_pch_spt, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18, %3
  %26 = load i64, i64* @E1000_ERR_NVM, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %4, align 8
  br label %97

28:                                               ; preds = %18
  %29 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %31, %35
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %90, %28
  %38 = call i32 @udelay(i32 1)
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %40 = call i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw* %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %95

44:                                               ; preds = %37
  %45 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %46 = call i32 @er32flash(i32 %45)
  %47 = ashr i32 %46, 16
  %48 = bitcast %union.ich8_hws_flash_ctrl* %9 to i32*
  store i32 %47, i32* %48, align 4
  %49 = bitcast %union.ich8_hws_flash_ctrl* %9 to %struct.TYPE_7__*
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 3, i32* %50, align 4
  %51 = load i32, i32* @ICH_CYCLE_READ, align 4
  %52 = bitcast %union.ich8_hws_flash_ctrl* %9 to %struct.TYPE_7__*
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %55 = bitcast %union.ich8_hws_flash_ctrl* %9 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 16
  %58 = call i32 @ew32flash(i32 %54, i32 %57)
  %59 = load i32, i32* @ICH_FLASH_FADDR, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ew32flash(i32 %59, i32 %60)
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %63 = load i32, i32* @ICH_FLASH_READ_COMMAND_TIMEOUT, align 4
  %64 = call i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw* %62, i32 %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %44
  %68 = load i32, i32* @ICH_FLASH_FDATA0, align 4
  %69 = call i32 @er32flash(i32 %68)
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  br label %95

71:                                               ; preds = %44
  %72 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %73 = call i32 @er16flash(i32 %72)
  %74 = bitcast %union.ich8_hws_flash_status* %8 to i32*
  store i32 %73, i32* %74, align 8
  %75 = bitcast %union.ich8_hws_flash_status* %8 to %struct.TYPE_8__*
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %90

80:                                               ; preds = %71
  %81 = bitcast %union.ich8_hws_flash_status* %8 to %struct.TYPE_8__*
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = call i32 @e_dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %95

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89, %79
  %91 = load i64, i64* %12, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* @ICH_FLASH_CYCLE_REPEAT_COUNT, align 8
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %37, label %95

95:                                               ; preds = %90, %85, %67, %43
  %96 = load i64, i64* %11, align 8
  store i64 %96, i64* %4, align 8
  br label %97

97:                                               ; preds = %95, %25
  %98 = load i64, i64* %4, align 8
  ret i64 %98
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @er32flash(i32) #1

declare dso_local i32 @ew32flash(i32, i32) #1

declare dso_local i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @er16flash(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
