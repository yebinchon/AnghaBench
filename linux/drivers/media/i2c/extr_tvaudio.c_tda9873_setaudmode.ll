; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tda9873_setaudmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tda9873_setaudmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { %struct.TYPE_2__, %struct.v4l2_subdev }
%struct.TYPE_2__ = type { i32* }
%struct.v4l2_subdev = type { i32 }

@TDA9873_SW = common dso_local global i32 0, align 4
@TDA9873_TR_MASK = common dso_local global i32 0, align 4
@TDA9873_INP_MASK = common dso_local global i32 0, align 4
@TDA9873_INTERNAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"tda9873_setaudmode(): external input\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"tda9873_setaudmode(): chip->shadow.bytes[%d] = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"tda9873_setaudmode(): sw_data  = %d\0A\00", align 1
@TDA9873_TR_MONO = common dso_local global i32 0, align 4
@TDA9873_TR_STEREO = common dso_local global i32 0, align 4
@TDA9873_TR_DUALA = common dso_local global i32 0, align 4
@TDA9873_TR_DUALB = common dso_local global i32 0, align 4
@TDA9873_TR_DUALAB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"tda9873_setaudmode(): req. mode %d; chip_write: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CHIPSTATE*, i32)* @tda9873_setaudmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda9873_setaudmode(%struct.CHIPSTATE* %0, i32 %1) #0 {
  %3 = alloca %struct.CHIPSTATE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %8 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %7, i32 0, i32 1
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %5, align 8
  %9 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %10 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* @TDA9873_SW, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TDA9873_TR_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @TDA9873_INP_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @TDA9873_INTERNAL, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @debug, align 4
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %29 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %27, %struct.v4l2_subdev* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %81

30:                                               ; preds = %2
  %31 = load i32, i32* @debug, align 4
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %33 = load i32, i32* @TDA9873_SW, align 4
  %34 = add nsw i32 %33, 1
  %35 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %36 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @TDA9873_SW, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %31, %struct.v4l2_subdev* %32, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %43)
  %45 = load i32, i32* @debug, align 4
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %45, %struct.v4l2_subdev* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %4, align 4
  switch i32 %49, label %70 [
    i32 129, label %50
    i32 128, label %54
    i32 132, label %58
    i32 130, label %62
    i32 131, label %66
  ]

50:                                               ; preds = %30
  %51 = load i32, i32* @TDA9873_TR_MONO, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %71

54:                                               ; preds = %30
  %55 = load i32, i32* @TDA9873_TR_STEREO, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %71

58:                                               ; preds = %30
  %59 = load i32, i32* @TDA9873_TR_DUALA, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %71

62:                                               ; preds = %30
  %63 = load i32, i32* @TDA9873_TR_DUALB, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %71

66:                                               ; preds = %30
  %67 = load i32, i32* @TDA9873_TR_DUALAB, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %71

70:                                               ; preds = %30
  br label %81

71:                                               ; preds = %66, %62, %58, %54, %50
  %72 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %73 = load i32, i32* @TDA9873_SW, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @chip_write(%struct.CHIPSTATE* %72, i32 %73, i32 %74)
  %76 = load i32, i32* @debug, align 4
  %77 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %76, %struct.v4l2_subdev* %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %71, %70, %26
  ret void
}

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @chip_write(%struct.CHIPSTATE*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
