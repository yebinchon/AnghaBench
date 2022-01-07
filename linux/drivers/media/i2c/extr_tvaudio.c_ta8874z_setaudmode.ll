; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_ta8874z_setaudmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_ta8874z_setaudmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ta8874z_setaudmode(): mode: 0x%02x\0A\00", align 1
@ta8874z_mono = common dso_local global i32 0, align 4
@ta8874z_stereo = common dso_local global i32 0, align 4
@ta8874z_main = common dso_local global i32 0, align 4
@ta8874z_sub = common dso_local global i32 0, align 4
@ta8874z_both = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"TA8874Z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CHIPSTATE*, i32)* @ta8874z_setaudmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ta8874z_setaudmode(%struct.CHIPSTATE* %0, i32 %1) #0 {
  %3 = alloca %struct.CHIPSTATE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %9 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %8, i32 0, i32 0
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %5, align 8
  store i32 1, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %10 = load i32, i32* @debug, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @v4l2_dbg(i32 1, i32 %10, %struct.v4l2_subdev* %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %20 [
    i32 129, label %15
    i32 128, label %16
    i32 132, label %17
    i32 130, label %18
    i32 131, label %19
  ]

15:                                               ; preds = %2
  store i32* @ta8874z_mono, i32** %7, align 8
  br label %21

16:                                               ; preds = %2
  store i32* @ta8874z_stereo, i32** %7, align 8
  br label %21

17:                                               ; preds = %2
  store i32* @ta8874z_main, i32** %7, align 8
  br label %21

18:                                               ; preds = %2
  store i32* @ta8874z_sub, i32** %7, align 8
  br label %21

19:                                               ; preds = %2
  store i32* @ta8874z_both, i32** %7, align 8
  br label %21

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %16, %15
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @chip_cmd(%struct.CHIPSTATE* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  br label %28

28:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @chip_cmd(%struct.CHIPSTATE*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
