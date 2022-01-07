; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_tx.c_fm_tx_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_tx.c_fm_tx_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i32, %struct.fmtx_data }
%struct.fmtx_data = type { i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@FM_CORE_TX_XMITING = common dso_local global i32 0, align 4
@FM_FR_EVENT = common dso_local global i32 0, align 4
@FM_BL_EVENT = common dso_local global i32 0, align 4
@INT_MASK_SET = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"tx: freq_to_set %ld\0A\00", align 1
@CHANL_SET = common dso_local global i32 0, align 4
@FM_STEREO_MODE = common dso_local global i32 0, align 4
@FM_RDS_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_tx_set_freq(%struct.fmdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fmtx_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %11 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %10, i32 0, i32 1
  store %struct.fmtx_data* %11, %struct.fmtx_data** %6, align 8
  %12 = load i32, i32* @FM_CORE_TX_XMITING, align 4
  %13 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %14 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %19 = call i32 @enable_xmit(%struct.fmdev* %18, i32 0)
  %20 = load i32, i32* @FM_CORE_TX_XMITING, align 4
  %21 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %22 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %21, i32 0, i32 0
  %23 = call i32 @clear_bit(i32 %20, i32* %22)
  br label %24

24:                                               ; preds = %17, %2
  %25 = load i32, i32* @FM_FR_EVENT, align 4
  %26 = load i32, i32* @FM_BL_EVENT, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %29 = load i32, i32* @INT_MASK_SET, align 4
  %30 = load i32, i32* @REG_WR, align 4
  %31 = call i32 @fmc_send_cmd(%struct.fmdev* %28, i32 %29, i32 %30, i32* %7, i32 4, i32* null, i32* null)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %80

36:                                               ; preds = %24
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.fmtx_data*, %struct.fmtx_data** %6, align 8
  %40 = getelementptr inbounds %struct.fmtx_data, %struct.fmtx_data* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.fmtx_data*, %struct.fmtx_data** %6, align 8
  %42 = getelementptr inbounds %struct.fmtx_data, %struct.fmtx_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @fmdbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* %5, align 4
  %46 = sdiv i32 %45, 10
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %7, align 4
  %48 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %49 = load i32, i32* @CHANL_SET, align 4
  %50 = load i32, i32* @REG_WR, align 4
  %51 = call i32 @fmc_send_cmd(%struct.fmdev* %48, i32 %49, i32 %50, i32* %7, i32 4, i32* null, i32* null)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %36
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %80

56:                                               ; preds = %36
  %57 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %58 = load %struct.fmtx_data*, %struct.fmtx_data** %6, align 8
  %59 = getelementptr inbounds %struct.fmtx_data, %struct.fmtx_data* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @fm_tx_set_pwr_lvl(%struct.fmdev* %57, i32 %60)
  %62 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %63 = load %struct.fmtx_data*, %struct.fmtx_data** %6, align 8
  %64 = getelementptr inbounds %struct.fmtx_data, %struct.fmtx_data* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @fm_tx_set_preemph_filter(%struct.fmdev* %62, i32 %65)
  %67 = load %struct.fmtx_data*, %struct.fmtx_data** %6, align 8
  %68 = getelementptr inbounds %struct.fmtx_data, %struct.fmtx_data* %67, i32 0, i32 1
  store i32 1, i32* %68, align 8
  %69 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %70 = call i32 @set_audio_io(%struct.fmdev* %69)
  %71 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %72 = call i32 @enable_xmit(%struct.fmdev* %71, i32 1)
  %73 = load i32, i32* @FM_STEREO_MODE, align 4
  %74 = load %struct.fmtx_data*, %struct.fmtx_data** %6, align 8
  %75 = getelementptr inbounds %struct.fmtx_data, %struct.fmtx_data* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @FM_RDS_DISABLE, align 4
  %77 = load %struct.fmtx_data*, %struct.fmtx_data** %6, align 8
  %78 = getelementptr inbounds %struct.fmtx_data, %struct.fmtx_data* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %56, %54, %34
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @enable_xmit(%struct.fmdev*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @fmdbg(i8*, i64) #1

declare dso_local i32 @fm_tx_set_pwr_lvl(%struct.fmdev*, i32) #1

declare dso_local i32 @fm_tx_set_preemph_filter(%struct.fmdev*, i32) #1

declare dso_local i32 @set_audio_io(%struct.fmdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
