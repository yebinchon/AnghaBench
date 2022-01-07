; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_add_new_custom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_add_new_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.si476x_radio = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_ctrl = type { i32 }

@si476x_ctrls = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Could not initialize '%s' control %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si476x_radio*, i32)* @si476x_radio_add_new_custom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_radio_add_new_custom(%struct.si476x_radio* %0, i32 %1) #0 {
  %3 = alloca %struct.si476x_radio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.si476x_radio* %0, %struct.si476x_radio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %8 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @si476x_ctrls, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i64 %11
  %13 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_custom(%struct.TYPE_6__* %8, %struct.TYPE_7__* %12, i32* null)
  store %struct.v4l2_ctrl* %13, %struct.v4l2_ctrl** %6, align 8
  %14 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %15 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %19 = icmp eq %struct.v4l2_ctrl* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %25 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @si476x_ctrls, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %23, %20, %2
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_custom(%struct.TYPE_6__*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
