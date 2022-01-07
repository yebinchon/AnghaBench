; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000e_write_protect_nvm_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000e_write_protect_nvm_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%union.ich8_flash_protected_range = type { i8*, [8 x i8] }
%union.ich8_hws_flash_status = type { i8* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ICH_FLASH_GFPREG = common dso_local global i32 0, align 4
@ICH_FLASH_PR0 = common dso_local global i32 0, align 4
@FLASH_GFPREG_BASE_MASK = common dso_local global i32 0, align 4
@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000e_write_protect_nvm_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_nvm_info*, align 8
  %4 = alloca %union.ich8_flash_protected_range, align 8
  %5 = alloca %union.ich8_hws_flash_status, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_nvm_info* %8, %struct.e1000_nvm_info** %3, align 8
  %9 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %11, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = bitcast %struct.e1000_hw* %13 to %struct.e1000_hw.1*
  %15 = call i32 %12(%struct.e1000_hw.1* %14)
  %16 = load i32, i32* @ICH_FLASH_GFPREG, align 4
  %17 = call i8* @er32flash(i32 %16)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @ICH_FLASH_PR0, align 4
  %20 = call i8* @er32flash(i32 %19)
  %21 = bitcast %union.ich8_flash_protected_range* %4 to i8**
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @FLASH_GFPREG_BASE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = bitcast %union.ich8_flash_protected_range* %4 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 16
  %29 = load i32, i32* @FLASH_GFPREG_BASE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = bitcast %union.ich8_flash_protected_range* %4 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = bitcast %union.ich8_flash_protected_range* %4 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* @ICH_FLASH_PR0, align 4
  %36 = bitcast %union.ich8_flash_protected_range* %4 to i8**
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @ew32flash(i32 %35, i8* %37)
  %39 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %40 = call i8* @er16flash(i32 %39)
  %41 = bitcast %union.ich8_hws_flash_status* %5 to i8**
  store i8* %40, i8** %41, align 8
  %42 = bitcast %union.ich8_hws_flash_status* %5 to %struct.TYPE_5__*
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %45 = bitcast %union.ich8_hws_flash_status* %5 to i8**
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @ew32flash(i32 %44, i8* %46)
  %48 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %50, align 8
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = bitcast %struct.e1000_hw* %52 to %struct.e1000_hw.0*
  %54 = call i32 %51(%struct.e1000_hw.0* %53)
  ret void
}

declare dso_local i8* @er32flash(i32) #1

declare dso_local i32 @ew32flash(i32, i8*) #1

declare dso_local i8* @er16flash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
