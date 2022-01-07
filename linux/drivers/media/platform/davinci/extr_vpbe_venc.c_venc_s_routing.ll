; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_s_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.venc_state = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"venc_s_routing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @venc_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.venc_state*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.venc_state* @to_state(%struct.v4l2_subdev* %11)
  store %struct.venc_state* %12, %struct.venc_state** %9, align 8
  %13 = load i32, i32* @debug, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call i32 @v4l2_dbg(i32 %13, i32 1, %struct.v4l2_subdev* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @venc_set_dac(%struct.v4l2_subdev* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.venc_state*, %struct.venc_state** %9, align 8
  %24 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %4
  %26 = load i32, i32* %10, align 4
  ret i32 %26
}

declare dso_local %struct.venc_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @venc_set_dac(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
