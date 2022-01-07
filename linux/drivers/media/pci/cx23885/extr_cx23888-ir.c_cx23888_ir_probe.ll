; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23888-ir.c_cx23888_ir_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23888-ir.c_cx23888_ir_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev_ir_parameters = type { i32 }
%struct.cx23885_dev = type { i8*, i32 }
%struct.cx23888_ir_state = type { i32, i32, i32, %struct.v4l2_subdev, %struct.cx23885_dev*, i32 }
%struct.v4l2_subdev = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CX23888_IR_RX_KFIFO_SIZE = common dso_local global i32 0, align 4
@cx23888_ir_controller_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/888-ir\00", align 1
@CX23885_HW_888_IR = common dso_local global i32 0, align 4
@CX23888_IR_IRQEN_REG = common dso_local global i32 0, align 4
@default_rx_params = common dso_local global %struct.v4l2_subdev_ir_parameters zeroinitializer, align 4
@ir = common dso_local global i32 0, align 4
@rx_s_parameters = common dso_local global i32 0, align 4
@default_tx_params = common dso_local global %struct.v4l2_subdev_ir_parameters zeroinitializer, align 4
@tx_s_parameters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23888_ir_probe(%struct.cx23885_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx23885_dev*, align 8
  %4 = alloca %struct.cx23888_ir_state*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_ir_parameters, align 4
  %7 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.cx23888_ir_state* @kzalloc(i32 40, i32 %8)
  store %struct.cx23888_ir_state* %9, %struct.cx23888_ir_state** %4, align 8
  %10 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %11 = icmp eq %struct.cx23888_ir_state* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %81

15:                                               ; preds = %1
  %16 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %17 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %16, i32 0, i32 5
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %20 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %19, i32 0, i32 0
  %21 = load i32, i32* @CX23888_IR_RX_KFIFO_SIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i64 @kfifo_alloc(i32* %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %81

28:                                               ; preds = %15
  %29 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %30 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %31 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %30, i32 0, i32 4
  store %struct.cx23885_dev* %29, %struct.cx23885_dev** %31, align 8
  %32 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %33 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %32, i32 0, i32 3
  store %struct.v4l2_subdev* %33, %struct.v4l2_subdev** %5, align 8
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %35 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %34, i32* @cx23888_ir_controller_ops)
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %37 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %38 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %36, %struct.cx23888_ir_state* %37)
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %43 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @snprintf(i32 %41, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @CX23885_HW_888_IR, align 4
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %50 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %49, i32 0, i32 1
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %52 = call i32 @v4l2_device_register_subdev(i32* %50, %struct.v4l2_subdev* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %28
  %56 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %57 = load i32, i32* @CX23888_IR_IRQEN_REG, align 4
  %58 = call i32 @cx23888_ir_write4(%struct.cx23885_dev* %56, i32 %57, i32 0)
  %59 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %60 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %59, i32 0, i32 2
  %61 = call i32 @mutex_init(i32* %60)
  %62 = bitcast %struct.v4l2_subdev_ir_parameters* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 bitcast (%struct.v4l2_subdev_ir_parameters* @default_rx_params to i8*), i64 4, i1 false)
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %64 = load i32, i32* @ir, align 4
  %65 = load i32, i32* @rx_s_parameters, align 4
  %66 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %63, i32 %64, i32 %65, %struct.v4l2_subdev_ir_parameters* %6)
  %67 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %68 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %67, i32 0, i32 1
  %69 = call i32 @mutex_init(i32* %68)
  %70 = bitcast %struct.v4l2_subdev_ir_parameters* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 bitcast (%struct.v4l2_subdev_ir_parameters* @default_tx_params to i8*), i64 4, i1 false)
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %72 = load i32, i32* @ir, align 4
  %73 = load i32, i32* @tx_s_parameters, align 4
  %74 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %71, i32 %72, i32 %73, %struct.v4l2_subdev_ir_parameters* %6)
  br label %79

75:                                               ; preds = %28
  %76 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %77 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %76, i32 0, i32 0
  %78 = call i32 @kfifo_free(i32* %77)
  br label %79

79:                                               ; preds = %75, %55
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %25, %12
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.cx23888_ir_state* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.cx23888_ir_state*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @v4l2_device_register_subdev(i32*, %struct.v4l2_subdev*) #1

declare dso_local i32 @cx23888_ir_write4(%struct.cx23885_dev*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_subdev_ir_parameters*) #1

declare dso_local i32 @kfifo_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
