; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_ctrl_notify(%struct.v4l2_ctrl* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.v4l2_ctrl*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %8 = icmp eq %struct.v4l2_ctrl* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %50

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  br label %50

16:                                               ; preds = %10
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = icmp ne i32* %28, %29
  br label %31

31:                                               ; preds = %23, %16
  %32 = phi i1 [ false, %16 ], [ %30, %23 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %50

37:                                               ; preds = %31
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %40 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32* %38, i32** %42, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %45 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %43, i8** %47, align 8
  %48 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %49 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %37, %36, %13, %9
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
