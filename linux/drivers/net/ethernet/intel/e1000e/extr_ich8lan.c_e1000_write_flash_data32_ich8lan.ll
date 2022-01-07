; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_write_flash_data32_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_write_flash_data32_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%union.ich8_hws_flash_status = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%union.ich8_hws_flash_ctrl = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@e1000_pch_spt = common dso_local global i64 0, align 8
@ICH_FLASH_LINEAR_ADDR_MASK = common dso_local global i32 0, align 4
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@ICH_FLASH_HSFCTL = common dso_local global i32 0, align 4
@ICH_CYCLE_WRITE = common dso_local global i32 0, align 4
@ICH_FLASH_FADDR = common dso_local global i32 0, align 4
@ICH_FLASH_FDATA0 = common dso_local global i32 0, align 4
@ICH_FLASH_WRITE_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Timeout error - flash cycle did not complete.\0A\00", align 1
@ICH_FLASH_CYCLE_REPEAT_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32)* @e1000_write_flash_data32_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_write_flash_data32_ich8lan(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ich8_hws_flash_status, align 8
  %9 = alloca %union.ich8_hws_flash_ctrl, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e1000_pch_spt, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, i64* @E1000_ERR_NVM, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %4, align 8
  br label %120

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %30, %34
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %113, %27
  %37 = call i32 @udelay(i32 1)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %39 = call i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw* %38)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %118

43:                                               ; preds = %36
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @e1000_pch_spt, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %52 = call i32 @er32flash(i32 %51)
  %53 = ashr i32 %52, 16
  %54 = bitcast %union.ich8_hws_flash_ctrl* %9 to i32*
  store i32 %53, i32* %54, align 4
  br label %60

55:                                               ; preds = %43
  %56 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %57 = call i8* @er16flash(i32 %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = bitcast %union.ich8_hws_flash_ctrl* %9 to i32*
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = bitcast %union.ich8_hws_flash_ctrl* %9 to %struct.TYPE_6__*
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 3, i32* %62, align 4
  %63 = load i32, i32* @ICH_CYCLE_WRITE, align 4
  %64 = bitcast %union.ich8_hws_flash_ctrl* %9 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @e1000_pch_spt, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %60
  %73 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %74 = bitcast %union.ich8_hws_flash_ctrl* %9 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 16
  %77 = call i32 @ew32flash(i32 %73, i32 %76)
  br label %83

78:                                               ; preds = %60
  %79 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %80 = bitcast %union.ich8_hws_flash_ctrl* %9 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ew16flash(i32 %79, i32 %81)
  br label %83

83:                                               ; preds = %78, %72
  %84 = load i32, i32* @ICH_FLASH_FADDR, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @ew32flash(i32 %84, i32 %85)
  %87 = load i32, i32* @ICH_FLASH_FDATA0, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @ew32flash(i32 %87, i32 %88)
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %91 = load i32, i32* @ICH_FLASH_WRITE_COMMAND_TIMEOUT, align 4
  %92 = call i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw* %90, i32 %91)
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* %11, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %83
  br label %118

96:                                               ; preds = %83
  %97 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %98 = call i8* @er16flash(i32 %97)
  %99 = bitcast %union.ich8_hws_flash_status* %8 to i8**
  store i8* %98, i8** %99, align 8
  %100 = bitcast %union.ich8_hws_flash_status* %8 to %struct.TYPE_8__*
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %113

105:                                              ; preds = %96
  %106 = bitcast %union.ich8_hws_flash_status* %8 to %struct.TYPE_8__*
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = call i32 @e_dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %118

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %104
  %114 = load i64, i64* %12, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %12, align 8
  %116 = load i64, i64* @ICH_FLASH_CYCLE_REPEAT_COUNT, align 8
  %117 = icmp slt i64 %114, %116
  br i1 %117, label %36, label %118

118:                                              ; preds = %113, %110, %95, %42
  %119 = load i64, i64* %11, align 8
  store i64 %119, i64* %4, align 8
  br label %120

120:                                              ; preds = %118, %23
  %121 = load i64, i64* %4, align 8
  ret i64 %121
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @er32flash(i32) #1

declare dso_local i8* @er16flash(i32) #1

declare dso_local i32 @ew32flash(i32, i32) #1

declare dso_local i32 @ew16flash(i32, i32) #1

declare dso_local i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
