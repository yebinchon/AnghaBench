; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32, i32, %struct.v4l2_ctrl** }

@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_ctrl_cluster(i32 %0, %struct.v4l2_ctrl** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ctrl**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.v4l2_ctrl** %1, %struct.v4l2_ctrl*** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %10, i64 0
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %11, align 8
  %13 = icmp eq %struct.v4l2_ctrl* %12, null
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ true, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %69

20:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %60, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %21
  %26 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, i64 %28
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %29, align 8
  %31 = icmp ne %struct.v4l2_ctrl* %30, null
  br i1 %31, label %32, label %59

32:                                               ; preds = %25
  %33 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %4, align 8
  %34 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, i64 %36
  %38 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %37, align 8
  %39 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %38, i32 0, i32 3
  store %struct.v4l2_ctrl** %33, %struct.v4l2_ctrl*** %39, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %41, i64 %43
  %45 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %44, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %45, i32 0, i32 0
  store i32 %40, i32* %46, align 8
  %47 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %47, i64 %49
  %51 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %50, align 8
  %52 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %32
  br label %59

59:                                               ; preds = %58, %25
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %21

63:                                               ; preds = %21
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %4, align 8
  %66 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %65, i64 0
  %67 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %66, align 8
  %68 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %67, i32 0, i32 2
  store i32 %64, i32* %68, align 8
  br label %69

69:                                               ; preds = %63, %19
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
