; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_change_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_change_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_radio = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SI476X_FUNC_FM_RECEIVER = common dso_local global i32 0, align 4
@SI476X_FUNC_AM_RECEIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si476x_radio*, i32)* @si476x_radio_change_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_radio_change_func(%struct.si476x_radio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.si476x_radio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.si476x_radio* %0, %struct.si476x_radio** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %10 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %8, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

17:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %18 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %19 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @si476x_core_stop(%struct.TYPE_5__* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  %26 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %27 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @si476x_core_stop(%struct.TYPE_5__* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %66

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %17
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %39 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  %43 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %44 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @si476x_core_start(%struct.TYPE_5__* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %66

52:                                               ; preds = %36
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SI476X_FUNC_FM_RECEIVER, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @SI476X_FUNC_AM_RECEIVER, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %66

62:                                               ; preds = %56, %52
  %63 = load %struct.si476x_radio*, %struct.si476x_radio** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @si476x_radio_do_post_powerup_init(%struct.si476x_radio* %63, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %60, %50, %33, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @si476x_core_stop(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @si476x_core_start(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @si476x_radio_do_post_powerup_init(%struct.si476x_radio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
