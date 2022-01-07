; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_fill_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_fill_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_event = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i64, i32, i32 }
%struct.v4l2_ctrl = type { i64, i32, i32, i32, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i64* }

@V4L2_EVENT_CTRL = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MENU = common dso_local global i64 0, align 8
@V4L2_CTRL_TYPE_INTEGER_MENU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_event*, %struct.v4l2_ctrl*, i32)* @fill_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_event(%struct.v4l2_event* %0, %struct.v4l2_ctrl* %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_event*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_event* %0, %struct.v4l2_event** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.v4l2_event*, %struct.v4l2_event** %4, align 8
  %8 = call i32 @memset(%struct.v4l2_event* %7, i32 0, i32 48)
  %9 = load i32, i32* @V4L2_EVENT_CTRL, align 4
  %10 = load %struct.v4l2_event*, %struct.v4l2_event** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.v4l2_event*, %struct.v4l2_event** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.v4l2_event*, %struct.v4l2_event** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 7
  store i32 %17, i32* %21, align 4
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.v4l2_event*, %struct.v4l2_event** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i64 %24, i64* %28, align 8
  %29 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %30 = call i32 @user_flags(%struct.v4l2_ctrl* %29)
  %31 = load %struct.v4l2_event*, %struct.v4l2_event** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 6
  store i32 %30, i32* %34, align 8
  %35 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %3
  %40 = load %struct.v4l2_event*, %struct.v4l2_event** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  br label %54

44:                                               ; preds = %3
  %45 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.v4l2_event*, %struct.v4l2_event** %4, align 8
  %51 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 5
  store i64 %49, i64* %53, align 8
  br label %54

54:                                               ; preds = %44, %39
  %55 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %56 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_event*, %struct.v4l2_event** %4, align 8
  %59 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 4
  store i32 %57, i32* %61, align 4
  %62 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.v4l2_event*, %struct.v4l2_event** %4, align 8
  %66 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  store i32 %64, i32* %68, align 8
  %69 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @V4L2_CTRL_TYPE_MENU, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %54
  %75 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %76 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @V4L2_CTRL_TYPE_INTEGER_MENU, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %74, %54
  %81 = load %struct.v4l2_event*, %struct.v4l2_event** %4, align 8
  %82 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 8
  br label %93

85:                                               ; preds = %74
  %86 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %87 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.v4l2_event*, %struct.v4l2_event** %4, align 8
  %90 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i32 %88, i32* %92, align 8
  br label %93

93:                                               ; preds = %85, %80
  %94 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %95 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.v4l2_event*, %struct.v4l2_event** %4, align 8
  %98 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  store i32 %96, i32* %100, align 4
  ret void
}

declare dso_local i32 @memset(%struct.v4l2_event*, i32, i32) #1

declare dso_local i32 @user_flags(%struct.v4l2_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
