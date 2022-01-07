; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_set_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_set_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }

@FM_BAND_EUROPE_US = common dso_local global i64 0, align 8
@FM_BAND_JAPAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Invalid band\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Requested band is already configured\0A\00", align 1
@BAND_SET = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"Current freq is not within band limit boundary,switching to %d KHz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_rx_set_region(%struct.fmdev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @FM_BAND_EUROPE_US, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @FM_BAND_JAPAN, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = call i32 @fmerr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %89

20:                                               ; preds = %12, %2
  %21 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %22 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = call i32 @fmerr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %89

30:                                               ; preds = %20
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %6, align 8
  %32 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %33 = load i32, i32* @BAND_SET, align 4
  %34 = load i32, i32* @REG_WR, align 4
  %35 = call i32 @fmc_send_cmd(%struct.fmdev* %32, i32 %33, i32 %34, i64* %6, i32 8, i32* null, i32* null)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %89

40:                                               ; preds = %30
  %41 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @fmc_update_region_info(%struct.fmdev* %41, i64 %42)
  %44 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %45 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %49 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %47, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %40
  %55 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %56 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %7, align 8
  br label %78

60:                                               ; preds = %40
  %61 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %62 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %66 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %64, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %73 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %71, %60
  br label %78

78:                                               ; preds = %77, %54
  %79 = load i64, i64* %7, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @fmdbg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i64 %82)
  %84 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @fm_rx_set_freq(%struct.fmdev* %84, i64 %85)
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %38, %28, %16
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @fmerr(i8*) #1

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i64*, i32, i32*, i32*) #1

declare dso_local i32 @fmc_update_region_info(%struct.fmdev*, i64) #1

declare dso_local i32 @fmdbg(i8*, i64) #1

declare dso_local i32 @fm_rx_set_freq(%struct.fmdev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
