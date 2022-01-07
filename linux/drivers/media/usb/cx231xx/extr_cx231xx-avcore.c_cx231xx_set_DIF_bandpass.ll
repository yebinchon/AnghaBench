; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_set_DIF_bandpass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_set_DIF_bandpass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.cx231xx = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"if_freq=%d;spectral_invert=0x%x;mode=0x%x\0A\00", align 1
@TUNER_MODE_FM_RADIO = common dso_local global i64 0, align 8
@DIF_PLL_FREQ_WORD = common dso_local global i32 0, align 4
@DIF_MISC_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Enter IF=%zu\0A\00", align 1
@Dif_set_array = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_set_DIF_bandpass(%struct.cx231xx* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.cx231xx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %14 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17, i64 %18)
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @TUNER_MODE_FM_RADIO, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  store i64 2421824684, i64* %9, align 8
  %24 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %25 = load i32, i32* @DIF_PLL_FREQ_WORD, align 4
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @vid_blk_write_word(%struct.cx231xx* %24, i32 %25, i64 %26)
  br label %77

28:                                               ; preds = %4
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = shl i64 %30, 28
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @do_div(i64 %32, i32 50000000)
  %34 = load i64, i64* %11, align 8
  store i64 %34, i64* %9, align 8
  %35 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %36 = load i32, i32* @DIF_PLL_FREQ_WORD, align 4
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @vid_blk_write_word(%struct.cx231xx* %35, i32 %36, i64 %37)
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %28
  %42 = load i64, i64* %6, align 8
  %43 = sub nsw i64 %42, 400000
  store i64 %43, i64* %6, align 8
  %44 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %45 = load i32, i32* @DIF_MISC_CTRL, align 4
  %46 = call i32 @vid_blk_read_word(%struct.cx231xx* %44, i32 %45, i64* %10)
  %47 = load i64, i64* %10, align 8
  %48 = or i64 %47, 2097152
  store i64 %48, i64* %10, align 8
  %49 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %50 = load i32, i32* @DIF_MISC_CTRL, align 4
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @vid_blk_write_word(%struct.cx231xx* %49, i32 %50, i64 %51)
  br label %65

53:                                               ; preds = %28
  %54 = load i64, i64* %6, align 8
  %55 = add nsw i64 %54, 400000
  store i64 %55, i64* %6, align 8
  %56 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %57 = load i32, i32* @DIF_MISC_CTRL, align 4
  %58 = call i32 @vid_blk_read_word(%struct.cx231xx* %56, i32 %57, i64* %10)
  %59 = load i64, i64* %10, align 8
  %60 = and i64 %59, 4292870143
  store i64 %60, i64* %10, align 8
  %61 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %62 = load i32, i32* @DIF_MISC_CTRL, align 4
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @vid_blk_write_word(%struct.cx231xx* %61, i32 %62, i64 %63)
  br label %65

65:                                               ; preds = %53, %41
  %66 = load i64, i64* %6, align 8
  %67 = sdiv i64 %66, 100000
  %68 = mul nsw i64 %67, 100000
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp slt i64 %69, 3000000
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i64 3000000, i64* %6, align 8
  br label %72

72:                                               ; preds = %71, %65
  %73 = load i64, i64* %6, align 8
  %74 = icmp sgt i64 %73, 16000000
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i64 16000000, i64* %6, align 8
  br label %76

76:                                               ; preds = %75, %72
  br label %77

77:                                               ; preds = %76, %23
  %78 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %79 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Dif_set_array, align 8
  %82 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %81)
  %83 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  store i64 0, i64* %12, align 8
  br label %84

84:                                               ; preds = %111, %77
  %85 = load i64, i64* %12, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Dif_set_array, align 8
  %87 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %86)
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %89, label %114

89:                                               ; preds = %84
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Dif_set_array, align 8
  %91 = load i64, i64* %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %89
  %98 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Dif_set_array, align 8
  %100 = load i64, i64* %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Dif_set_array, align 8
  %105 = load i64, i64* %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @vid_blk_write_word(%struct.cx231xx* %98, i32 %103, i64 %108)
  br label %110

110:                                              ; preds = %97, %89
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %12, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %12, align 8
  br label %84

114:                                              ; preds = %84
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @vid_blk_write_word(%struct.cx231xx*, i32, i64) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @vid_blk_read_word(%struct.cx231xx*, i32, i64*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
