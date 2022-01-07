; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_find_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_find_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_ref = type { %struct.v4l2_ctrl_ref*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_ctrl_handler = type { i32, %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** }

@V4L2_CTRL_ID_MASK = common dso_local global i32 0, align 4
@V4L2_CID_PRIVATE_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_ctrl_ref* (%struct.v4l2_ctrl_handler*, i32)* @find_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_ctrl_ref* @find_ref(%struct.v4l2_ctrl_handler* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_ctrl_ref*, align 8
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ctrl_ref*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @V4L2_CTRL_ID_MASK, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @V4L2_CID_PRIVATE_BASE, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.v4l2_ctrl_ref* @find_private_ref(%struct.v4l2_ctrl_handler* %15, i32 %16)
  store %struct.v4l2_ctrl_ref* %17, %struct.v4l2_ctrl_ref** %3, align 8
  br label %84

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = srem i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %24, i32 0, i32 1
  %26 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %25, align 8
  %27 = icmp ne %struct.v4l2_ctrl_ref* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %18
  %29 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %30 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %29, i32 0, i32 1
  %31 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %30, align 8
  %32 = getelementptr inbounds %struct.v4l2_ctrl_ref, %struct.v4l2_ctrl_ref* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %40 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %39, i32 0, i32 1
  %41 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %40, align 8
  store %struct.v4l2_ctrl_ref* %41, %struct.v4l2_ctrl_ref** %3, align 8
  br label %84

42:                                               ; preds = %28, %18
  %43 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %44 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %43, i32 0, i32 2
  %45 = load %struct.v4l2_ctrl_ref**, %struct.v4l2_ctrl_ref*** %44, align 8
  %46 = icmp ne %struct.v4l2_ctrl_ref** %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %49 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %48, i32 0, i32 2
  %50 = load %struct.v4l2_ctrl_ref**, %struct.v4l2_ctrl_ref*** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %50, i64 %52
  %54 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %53, align 8
  br label %56

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %47
  %57 = phi %struct.v4l2_ctrl_ref* [ %54, %47 ], [ null, %55 ]
  store %struct.v4l2_ctrl_ref* %57, %struct.v4l2_ctrl_ref** %6, align 8
  br label %58

58:                                               ; preds = %71, %56
  %59 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %6, align 8
  %60 = icmp ne %struct.v4l2_ctrl_ref* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_ctrl_ref, %struct.v4l2_ctrl_ref* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %66, %67
  br label %69

69:                                               ; preds = %61, %58
  %70 = phi i1 [ false, %58 ], [ %68, %61 ]
  br i1 %70, label %71, label %75

71:                                               ; preds = %69
  %72 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %6, align 8
  %73 = getelementptr inbounds %struct.v4l2_ctrl_ref, %struct.v4l2_ctrl_ref* %72, i32 0, i32 0
  %74 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %73, align 8
  store %struct.v4l2_ctrl_ref* %74, %struct.v4l2_ctrl_ref** %6, align 8
  br label %58

75:                                               ; preds = %69
  %76 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %6, align 8
  %77 = icmp ne %struct.v4l2_ctrl_ref* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %6, align 8
  %80 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %81 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %80, i32 0, i32 1
  store %struct.v4l2_ctrl_ref* %79, %struct.v4l2_ctrl_ref** %81, align 8
  br label %82

82:                                               ; preds = %78, %75
  %83 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %6, align 8
  store %struct.v4l2_ctrl_ref* %83, %struct.v4l2_ctrl_ref** %3, align 8
  br label %84

84:                                               ; preds = %82, %38, %14
  %85 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %3, align 8
  ret %struct.v4l2_ctrl_ref* %85
}

declare dso_local %struct.v4l2_ctrl_ref* @find_private_ref(%struct.v4l2_ctrl_handler*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
