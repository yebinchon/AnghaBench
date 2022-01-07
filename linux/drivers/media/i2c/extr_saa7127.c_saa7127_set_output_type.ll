; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7127.c_saa7127_set_output_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7127.c_saa7127_set_output_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa7127_state = type { i32, i32, i32, i32, i32 }

@SAA7129 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Selecting %s output type\0A\00", align 1
@output_strs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @saa7127_set_output_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7127_set_output_type(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7127_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.saa7127_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.saa7127_state* %8, %struct.saa7127_state** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %70 [
    i32 131, label %10
    i32 132, label %15
    i32 130, label %30
    i32 128, label %45
    i32 129, label %50
    i32 133, label %55
  ]

10:                                               ; preds = %2
  %11 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %12 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %11, i32 0, i32 0
  store i32 15, i32* %12, align 4
  %13 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %14 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %13, i32 0, i32 1
  store i32 19, i32* %14, align 4
  br label %73

15:                                               ; preds = %2
  %16 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %17 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SAA7129, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %23 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %22, i32 0, i32 0
  store i32 32, i32* %23, align 4
  br label %27

24:                                               ; preds = %15
  %25 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %26 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %25, i32 0, i32 0
  store i32 8, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %29 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %28, i32 0, i32 1
  store i32 19, i32* %29, align 4
  br label %73

30:                                               ; preds = %2
  %31 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %32 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SAA7129, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %38 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %37, i32 0, i32 0
  store i32 24, i32* %38, align 4
  br label %42

39:                                               ; preds = %30
  %40 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %41 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %40, i32 0, i32 0
  store i32 255, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %44 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %43, i32 0, i32 1
  store i32 19, i32* %44, align 4
  br label %73

45:                                               ; preds = %2
  %46 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %47 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %46, i32 0, i32 0
  store i32 79, i32* %47, align 4
  %48 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %49 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %48, i32 0, i32 1
  store i32 11, i32* %49, align 4
  br label %73

50:                                               ; preds = %2
  %51 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %52 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %51, i32 0, i32 0
  store i32 15, i32* %52, align 4
  %53 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %54 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %53, i32 0, i32 1
  store i32 11, i32* %54, align 4
  br label %73

55:                                               ; preds = %2
  %56 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %57 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SAA7129, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %63 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %62, i32 0, i32 0
  store i32 56, i32* %63, align 4
  br label %67

64:                                               ; preds = %55
  %65 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %66 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %65, i32 0, i32 0
  store i32 191, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %69 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %68, i32 0, i32 1
  store i32 19, i32* %69, align 4
  br label %73

70:                                               ; preds = %2
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %99

73:                                               ; preds = %67, %50, %45, %42, %27, %10
  %74 = load i32, i32* @debug, align 4
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %76 = load i32*, i32** @output_strs, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @v4l2_dbg(i32 1, i32 %74, %struct.v4l2_subdev* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %83 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %84 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @saa7127_write(%struct.v4l2_subdev* %82, i32 45, i32 %85)
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %88 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %89 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %92 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %90, %93
  %95 = call i32 @saa7127_write(%struct.v4l2_subdev* %87, i32 58, i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %98 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %73, %70
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.saa7127_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @saa7127_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
