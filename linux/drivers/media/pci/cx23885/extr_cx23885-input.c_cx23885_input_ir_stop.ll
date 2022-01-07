; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-input.c_cx23885_input_ir_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-input.c_cx23885_input_ir_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32, i32, i32, i32*, i32 }
%struct.v4l2_subdev_ir_parameters = type { i32, i32, i32 }

@ir = common dso_local global i32 0, align 4
@rx_g_parameters = common dso_local global i32 0, align 4
@rx_s_parameters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx23885_dev*)* @cx23885_input_ir_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx23885_input_ir_stop(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  %3 = alloca %struct.v4l2_subdev_ir_parameters, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  %4 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %49

9:                                                ; preds = %1
  %10 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %11 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %10, i32 0, i32 4
  %12 = call i32 @atomic_set(i32* %11, i32 1)
  %13 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %14 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @ir, align 4
  %17 = load i32, i32* @rx_g_parameters, align 4
  %18 = call i32 @v4l2_subdev_call(i32* %15, i32 %16, i32 %17, %struct.v4l2_subdev_ir_parameters* %3)
  br label %19

19:                                               ; preds = %23, %9
  %20 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %3, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %3, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %3, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %28 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @ir, align 4
  %31 = load i32, i32* @rx_s_parameters, align 4
  %32 = call i32 @v4l2_subdev_call(i32* %29, i32 %30, i32 %31, %struct.v4l2_subdev_ir_parameters* %3)
  %33 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %34 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @ir, align 4
  %37 = load i32, i32* @rx_g_parameters, align 4
  %38 = call i32 @v4l2_subdev_call(i32* %35, i32 %36, i32 %37, %struct.v4l2_subdev_ir_parameters* %3)
  br label %19

39:                                               ; preds = %19
  %40 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %41 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %40, i32 0, i32 2
  %42 = call i32 @flush_work(i32* %41)
  %43 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %44 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %43, i32 0, i32 1
  %45 = call i32 @flush_work(i32* %44)
  %46 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %47 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %46, i32 0, i32 0
  %48 = call i32 @flush_work(i32* %47)
  br label %49

49:                                               ; preds = %39, %8
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32*, i32, i32, %struct.v4l2_subdev_ir_parameters*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
