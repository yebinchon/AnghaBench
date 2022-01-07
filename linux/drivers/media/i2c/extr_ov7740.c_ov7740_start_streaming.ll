; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov7740 = type { %struct.TYPE_4__, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov7740*)* @ov7740_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7740_start_streaming(%struct.ov7740* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov7740*, align 8
  %4 = alloca i32, align 4
  store %struct.ov7740* %0, %struct.ov7740** %3, align 8
  %5 = load %struct.ov7740*, %struct.ov7740** %3, align 8
  %6 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %5, i32 0, i32 3
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.ov7740*, %struct.ov7740** %3, align 8
  %11 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ov7740*, %struct.ov7740** %3, align 8
  %14 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ov7740*, %struct.ov7740** %3, align 8
  %19 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %18, i32 0, i32 3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regmap_multi_reg_write(i32 %12, i32 %17, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %9
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %60

28:                                               ; preds = %9
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.ov7740*, %struct.ov7740** %3, align 8
  %31 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load %struct.ov7740*, %struct.ov7740** %3, align 8
  %36 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ov7740*, %struct.ov7740** %3, align 8
  %39 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ov7740*, %struct.ov7740** %3, align 8
  %44 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @regmap_multi_reg_write(i32 %37, i32 %42, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %60

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %29
  %55 = load %struct.ov7740*, %struct.ov7740** %3, align 8
  %56 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @__v4l2_ctrl_handler_setup(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %54, %51, %26
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @regmap_multi_reg_write(i32, i32, i32) #1

declare dso_local i32 @__v4l2_ctrl_handler_setup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
