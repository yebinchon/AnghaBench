; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-irq.c_wm831x_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-irq.c_wm831x_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.wm831x = type { i32*, i32*, i32* }

@WM831X_IRQ_GPIO_1 = common dso_local global i32 0, align 4
@WM831X_IRQ_GPIO_11 = common dso_local global i32 0, align 4
@WM831X_NUM_IRQS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM831X_GPN_INT_MODE = common dso_local global i32 0, align 4
@WM831X_GPN_POL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @wm831x_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm831x*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = call %struct.wm831x* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.wm831x* %9, %struct.wm831x** %6, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @WM831X_IRQ_GPIO_1, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @WM831X_IRQ_GPIO_11, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @WM831X_NUM_IRQS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %105

28:                                               ; preds = %23, %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %105

31:                                               ; preds = %16
  %32 = load i32, i32* @WM831X_IRQ_GPIO_1, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %36 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 0, i32* %40, align 4
  %41 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %42 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %5, align 4
  switch i32 %47, label %101 [
    i32 132, label %48
    i32 130, label %57
    i32 131, label %66
    i32 129, label %73
    i32 128, label %88
  ]

48:                                               ; preds = %31
  %49 = load i32, i32* @WM831X_GPN_INT_MODE, align 4
  %50 = or i32 65536, %49
  %51 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %52 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  br label %104

57:                                               ; preds = %31
  %58 = load i32, i32* @WM831X_GPN_POL, align 4
  %59 = or i32 65536, %58
  %60 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %61 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  br label %104

66:                                               ; preds = %31
  %67 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %68 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 65536, i32* %72, align 4
  br label %104

73:                                               ; preds = %31
  %74 = load i32, i32* @WM831X_GPN_POL, align 4
  %75 = or i32 65536, %74
  %76 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %77 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  %82 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %83 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 1, i32* %87, align 4
  br label %104

88:                                               ; preds = %31
  %89 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %90 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 65536, i32* %94, align 4
  %95 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %96 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 1, i32* %100, align 4
  br label %104

101:                                              ; preds = %31
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %105

104:                                              ; preds = %88, %73, %66, %57, %48
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %101, %28, %27
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.wm831x* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
