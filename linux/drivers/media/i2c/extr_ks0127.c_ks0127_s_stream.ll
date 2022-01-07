; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ks0127.c_ks0127_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ks0127.c_ks0127_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"s_stream(%d)\0A\00", align 1
@KS_OFMTA = common dso_local global i32 0, align 4
@KS_CDEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ks0127_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks0127_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @debug, align 4
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @v4l2_dbg(i32 1, i32 %5, %struct.v4l2_subdev* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %13 = load i32, i32* @KS_OFMTA, align 4
  %14 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %12, i32 %13, i32 207, i32 48)
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %16 = load i32, i32* @KS_CDEM, align 4
  %17 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %15, i32 %16, i32 127, i32 0)
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %20 = load i32, i32* @KS_OFMTA, align 4
  %21 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %19, i32 %20, i32 207, i32 0)
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %23 = load i32, i32* @KS_CDEM, align 4
  %24 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %22, i32 %23, i32 127, i32 128)
  br label %25

25:                                               ; preds = %18, %11
  ret i32 0
}

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @ks0127_and_or(%struct.v4l2_subdev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
