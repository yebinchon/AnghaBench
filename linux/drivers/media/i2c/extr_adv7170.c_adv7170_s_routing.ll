; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7170.c_adv7170_s_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7170.c_adv7170_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7170 = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"set input from %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"decoder\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ZR36060\00", align 1
@TR1CAPT = common dso_local global i32 0, align 4
@TR0MODE = common dso_local global i32 0, align 4
@TR0RST = common dso_local global i32 0, align 4
@TR1PLAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"illegal input: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"switched to %s\0A\00", align 1
@inputs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @adv7170_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7170_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.adv7170*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %12 = call %struct.adv7170* @to_adv7170(%struct.v4l2_subdev* %11)
  store %struct.adv7170* %12, %struct.adv7170** %10, align 8
  %13 = load i32, i32* @debug, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %13, %struct.v4l2_subdev* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %53 [
    i32 0, label %21
    i32 1, label %37
  ]

21:                                               ; preds = %4
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %23 = call i32 @adv7170_write(%struct.v4l2_subdev* %22, i32 1, i32 32)
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %25 = load i32, i32* @TR1CAPT, align 4
  %26 = call i32 @adv7170_write(%struct.v4l2_subdev* %24, i32 8, i32 %25)
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %28 = call i32 @adv7170_write(%struct.v4l2_subdev* %27, i32 2, i32 14)
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %30 = load i32, i32* @TR0MODE, align 4
  %31 = load i32, i32* @TR0RST, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @adv7170_write(%struct.v4l2_subdev* %29, i32 7, i32 %32)
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %35 = load i32, i32* @TR0MODE, align 4
  %36 = call i32 @adv7170_write(%struct.v4l2_subdev* %34, i32 7, i32 %35)
  br label %60

37:                                               ; preds = %4
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %39 = call i32 @adv7170_write(%struct.v4l2_subdev* %38, i32 1, i32 0)
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %41 = load i32, i32* @TR1PLAY, align 4
  %42 = call i32 @adv7170_write(%struct.v4l2_subdev* %40, i32 8, i32 %41)
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %44 = call i32 @adv7170_write(%struct.v4l2_subdev* %43, i32 2, i32 8)
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %46 = load i32, i32* @TR0MODE, align 4
  %47 = load i32, i32* @TR0RST, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @adv7170_write(%struct.v4l2_subdev* %45, i32 7, i32 %48)
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %51 = load i32, i32* @TR0MODE, align 4
  %52 = call i32 @adv7170_write(%struct.v4l2_subdev* %50, i32 7, i32 %51)
  br label %60

53:                                               ; preds = %4
  %54 = load i32, i32* @debug, align 4
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %54, %struct.v4l2_subdev* %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %72

60:                                               ; preds = %37, %21
  %61 = load i32, i32* @debug, align 4
  %62 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %63 = load i32*, i32** @inputs, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %61, %struct.v4l2_subdev* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.adv7170*, %struct.adv7170** %10, align 8
  %71 = getelementptr inbounds %struct.adv7170, %struct.adv7170* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %60, %53
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.adv7170* @to_adv7170(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @adv7170_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
