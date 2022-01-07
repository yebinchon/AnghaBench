; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_flash_cycle_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_flash_cycle_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%union.ich8_hws_flash_ctrl = type { i32 }
%union.ich8_hws_flash_status = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@e1000_pch_spt = common dso_local global i64 0, align 8
@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@ICH_FLASH_HSFCTL = common dso_local global i32 0, align 4
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64)* @e1000_flash_cycle_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_flash_cycle_ich8lan(%struct.e1000_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.ich8_hws_flash_ctrl, align 4
  %7 = alloca %union.ich8_hws_flash_status, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @e1000_pch_spt, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %17 = call i32 @er32flash(i32 %16)
  %18 = ashr i32 %17, 16
  %19 = bitcast %union.ich8_hws_flash_ctrl* %6 to i32*
  store i32 %18, i32* %19, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %22 = call i8* @er16flash(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = bitcast %union.ich8_hws_flash_ctrl* %6 to i32*
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = bitcast %union.ich8_hws_flash_ctrl* %6 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @e1000_pch_spt, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %36 = bitcast %union.ich8_hws_flash_ctrl* %6 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = call i32 @ew32flash(i32 %35, i32 %38)
  br label %45

40:                                               ; preds = %25
  %41 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %42 = bitcast %union.ich8_hws_flash_ctrl* %6 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ew16flash(i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %34
  br label %46

46:                                               ; preds = %57, %45
  %47 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %48 = call i8* @er16flash(i32 %47)
  %49 = bitcast %union.ich8_hws_flash_status* %7 to i8**
  store i8* %48, i8** %49, align 8
  %50 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_5__*
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %62

55:                                               ; preds = %46
  %56 = call i32 @udelay(i32 1)
  br label %57

57:                                               ; preds = %55
  %58 = load i64, i64* %8, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %46, label %62

62:                                               ; preds = %57, %54
  %63 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_5__*
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_5__*
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %76

73:                                               ; preds = %67, %62
  %74 = load i32, i32* @E1000_ERR_NVM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %72
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @er32flash(i32) #1

declare dso_local i8* @er16flash(i32) #1

declare dso_local i32 @ew32flash(i32, i32) #1

declare dso_local i32 @ew16flash(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
