; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_catc.c_catc_ctrl_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_catc.c_catc_ctrl_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.TYPE_2__*, %struct.catc* }
%struct.TYPE_2__ = type { i32 }
%struct.catc = type { i32, i64, i32, i32, i64, %struct.ctrl_queue* }
%struct.ctrl_queue = type { i32 (%struct.catc*, %struct.ctrl_queue*)*, i64, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"ctrl_done, status %d, len %d.\0A\00", align 1
@CTRL_QUEUE = common dso_local global i32 0, align 4
@CTRL_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @catc_ctrl_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catc_ctrl_done(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.catc*, align 8
  %4 = alloca %struct.ctrl_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 3
  %9 = load %struct.catc*, %struct.catc** %8, align 8
  store %struct.catc* %9, %struct.catc** %3, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.urb*, %struct.urb** %2, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %15, %1
  %26 = load %struct.catc*, %struct.catc** %3, align 8
  %27 = getelementptr inbounds %struct.catc, %struct.catc* %26, i32 0, i32 2
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.catc*, %struct.catc** %3, align 8
  %31 = getelementptr inbounds %struct.catc, %struct.catc* %30, i32 0, i32 5
  %32 = load %struct.ctrl_queue*, %struct.ctrl_queue** %31, align 8
  %33 = load %struct.catc*, %struct.catc** %3, align 8
  %34 = getelementptr inbounds %struct.catc, %struct.catc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %32, i64 %36
  store %struct.ctrl_queue* %37, %struct.ctrl_queue** %4, align 8
  %38 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %39 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %25
  %43 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %44 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %49 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %54 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.catc*, %struct.catc** %3, align 8
  %57 = getelementptr inbounds %struct.catc, %struct.catc* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %60 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @memcpy(i64 %55, i64 %58, i64 %61)
  br label %69

63:                                               ; preds = %47, %42
  %64 = load %struct.catc*, %struct.catc** %3, align 8
  %65 = getelementptr inbounds %struct.catc, %struct.catc* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %68 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %63, %52
  br label %70

70:                                               ; preds = %69, %25
  %71 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %72 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %71, i32 0, i32 0
  %73 = load i32 (%struct.catc*, %struct.ctrl_queue*)*, i32 (%struct.catc*, %struct.ctrl_queue*)** %72, align 8
  %74 = icmp ne i32 (%struct.catc*, %struct.ctrl_queue*)* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %77 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %76, i32 0, i32 0
  %78 = load i32 (%struct.catc*, %struct.ctrl_queue*)*, i32 (%struct.catc*, %struct.ctrl_queue*)** %77, align 8
  %79 = load %struct.catc*, %struct.catc** %3, align 8
  %80 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %81 = call i32 %78(%struct.catc* %79, %struct.ctrl_queue* %80)
  br label %82

82:                                               ; preds = %75, %70
  %83 = load %struct.catc*, %struct.catc** %3, align 8
  %84 = getelementptr inbounds %struct.catc, %struct.catc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* @CTRL_QUEUE, align 4
  %88 = sub nsw i32 %87, 1
  %89 = and i32 %86, %88
  %90 = load %struct.catc*, %struct.catc** %3, align 8
  %91 = getelementptr inbounds %struct.catc, %struct.catc* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.catc*, %struct.catc** %3, align 8
  %93 = getelementptr inbounds %struct.catc, %struct.catc* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.catc*, %struct.catc** %3, align 8
  %96 = getelementptr inbounds %struct.catc, %struct.catc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = icmp ne i64 %94, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %82
  %101 = load %struct.catc*, %struct.catc** %3, align 8
  %102 = call i32 @catc_ctrl_run(%struct.catc* %101)
  br label %108

103:                                              ; preds = %82
  %104 = load i32, i32* @CTRL_RUNNING, align 4
  %105 = load %struct.catc*, %struct.catc** %3, align 8
  %106 = getelementptr inbounds %struct.catc, %struct.catc* %105, i32 0, i32 3
  %107 = call i32 @clear_bit(i32 %104, i32* %106)
  br label %108

108:                                              ; preds = %103, %100
  %109 = load %struct.catc*, %struct.catc** %3, align 8
  %110 = getelementptr inbounds %struct.catc, %struct.catc* %109, i32 0, i32 2
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @catc_ctrl_run(%struct.catc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
