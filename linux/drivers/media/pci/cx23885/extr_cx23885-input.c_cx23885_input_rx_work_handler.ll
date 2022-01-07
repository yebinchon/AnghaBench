; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-input.c_cx23885_input_rx_work_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-input.c_cx23885_input_rx_work_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32, i32*, i32 }
%struct.v4l2_subdev_ir_parameters = type { i32, i8* }

@V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ = common dso_local global i32 0, align 4
@ir = common dso_local global i32 0, align 4
@rx_g_parameters = common dso_local global i32 0, align 4
@rx_s_parameters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx23885_input_rx_work_handler(%struct.cx23885_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.cx23885_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev_ir_parameters, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %9 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  br label %75

16:                                               ; preds = %12
  %17 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %18 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %21 [
    i32 136, label %20
    i32 134, label %20
    i32 135, label %20
    i32 130, label %20
    i32 129, label %20
    i32 138, label %20
    i32 133, label %20
    i32 132, label %20
    i32 131, label %20
    i32 141, label %20
    i32 140, label %20
    i32 143, label %20
    i32 128, label %20
    i32 144, label %20
    i32 142, label %20
    i32 139, label %20
    i32 137, label %20
  ]

20:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  br label %22

21:                                               ; preds = %16
  br label %75

22:                                               ; preds = %20
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN, align 4
  %25 = load i32, i32* @V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED, align 4
  %30 = load i32, i32* @V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %22
  %36 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %37 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @ir, align 4
  %40 = load i32, i32* @rx_g_parameters, align 4
  %41 = call i32 @v4l2_subdev_call(i32* %38, i32 %39, i32 %40, %struct.v4l2_subdev_ir_parameters* %5)
  %42 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %5, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %44 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %43, i32 0, i32 2
  %45 = call i8* @atomic_read(i32* %44)
  %46 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %5, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %48 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @ir, align 4
  %51 = load i32, i32* @rx_s_parameters, align 4
  %52 = call i32 @v4l2_subdev_call(i32* %49, i32 %50, i32 %51, %struct.v4l2_subdev_ir_parameters* %5)
  br label %53

53:                                               ; preds = %35, %22
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @cx23885_input_process_measurements(%struct.cx23885_dev* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %5, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %66 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %65, i32 0, i32 2
  %67 = call i8* @atomic_read(i32* %66)
  %68 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %5, i32 0, i32 1
  store i8* %67, i8** %68, align 8
  %69 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %70 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @ir, align 4
  %73 = load i32, i32* @rx_s_parameters, align 4
  %74 = call i32 @v4l2_subdev_call(i32* %71, i32 %72, i32 %73, %struct.v4l2_subdev_ir_parameters* %5)
  br label %75

75:                                               ; preds = %15, %21, %63, %60
  ret void
}

declare dso_local i32 @v4l2_subdev_call(i32*, i32, i32, %struct.v4l2_subdev_ir_parameters*) #1

declare dso_local i8* @atomic_read(i32*) #1

declare dso_local i32 @cx23885_input_process_measurements(%struct.cx23885_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
