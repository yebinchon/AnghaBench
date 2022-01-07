; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_g_volatile_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_g_volatile_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32, i32 }
%struct.si476x_radio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 }

@ENOTTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @si476x_radio_g_volatile_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_radio_g_volatile_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.si476x_radio*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  %5 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %6 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.si476x_radio* @v4l2_ctrl_handler_to_radio(i32 %7)
  store %struct.si476x_radio* %8, %struct.si476x_radio** %4, align 8
  %9 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %10 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @si476x_core_lock(i32 %11)
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %57 [
    i32 128, label %16
  ]

16:                                               ; preds = %1
  %17 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %18 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @si476x_core_has_diversity(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %16
  %23 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %24 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %22
  %30 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %31 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %36 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %34(i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %60

42:                                               ; preds = %29
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @SI476X_PHDIV_STATUS_LINK_LOCKED(i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %60

51:                                               ; preds = %22
  %52 = load i32, i32* @ENOTTY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %16
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %60

57:                                               ; preds = %1
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %54, %51, %42, %41
  %61 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %62 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @si476x_core_unlock(i32 %63)
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.si476x_radio* @v4l2_ctrl_handler_to_radio(i32) #1

declare dso_local i32 @si476x_core_lock(i32) #1

declare dso_local i32 @si476x_core_has_diversity(i32) #1

declare dso_local i32 @SI476X_PHDIV_STATUS_LINK_LOCKED(i32) #1

declare dso_local i32 @si476x_core_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
