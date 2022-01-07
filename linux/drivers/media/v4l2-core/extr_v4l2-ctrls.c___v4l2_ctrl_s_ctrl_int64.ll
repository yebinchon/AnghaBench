; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c___v4l2_ctrl_s_ctrl_int64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c___v4l2_ctrl_s_ctrl_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i64, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@V4L2_CTRL_TYPE_INTEGER64 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__v4l2_ctrl_s_ctrl_int64(%struct.v4l2_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %6 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @lockdep_assert_held(i32 %9)
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_CTRL_TYPE_INTEGER64, align 8
  %20 = icmp ne i64 %18, %19
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ true, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %27 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32 %25, i32* %29, align 4
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %31 = call i32 @set_ctrl(i32* null, %struct.v4l2_ctrl* %30, i32 0)
  ret i32 %31
}

declare dso_local i32 @lockdep_assert_held(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @set_ctrl(i32*, %struct.v4l2_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
