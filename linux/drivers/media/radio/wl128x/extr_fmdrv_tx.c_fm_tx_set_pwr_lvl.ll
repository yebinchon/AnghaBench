; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_tx.c_fm_tx_set_pwr_lvl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_tx.c_fm_tx_set_pwr_lvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i64, i32, %struct.fmtx_data }
%struct.fmtx_data = type { i8* }

@FM_MODE_TX = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"tx: pwr_level_to_set %ld\0A\00", align 1
@FM_CORE_READY = common dso_local global i32 0, align 4
@FM_PWR_LVL_HIGH = common dso_local global i8* null, align 8
@POWER_LEV_SET = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_tx_set_pwr_lvl(%struct.fmdev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fmtx_data*, align 8
  %8 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %10 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %9, i32 0, i32 2
  store %struct.fmtx_data* %10, %struct.fmtx_data** %7, align 8
  %11 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %12 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FM_MODE_TX, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = call i32 @fmdbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @FM_CORE_READY, align 4
  %24 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %25 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %24, i32 0, i32 1
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.fmtx_data*, %struct.fmtx_data** %7, align 8
  %31 = getelementptr inbounds %struct.fmtx_data, %struct.fmtx_data* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  store i32 0, i32* %3, align 4
  br label %51

32:                                               ; preds = %19
  %33 = load i8*, i8** @FM_PWR_LVL_HIGH, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %6, align 8
  %39 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %40 = load i32, i32* @POWER_LEV_SET, align 4
  %41 = load i32, i32* @REG_WR, align 4
  %42 = call i32 @fmc_send_cmd(%struct.fmdev* %39, i32 %40, i32 %41, i8** %6, i32 8, i32* null, i32* null)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %32
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.fmtx_data*, %struct.fmtx_data** %7, align 8
  %50 = getelementptr inbounds %struct.fmtx_data, %struct.fmtx_data* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %45, %28, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @fmdbg(i8*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i8**, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
