; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-ir.c_cx25840_ir_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-ir.c_cx25840_ir_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev_ir_parameters = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { %struct.cx25840_ir_state*, %struct.TYPE_2__* }
%struct.cx25840_ir_state = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CX25840_IR_RX_KFIFO_SIZE = common dso_local global i32 0, align 4
@CX25840_IR_IRQEN_REG = common dso_local global i32 0, align 4
@IRQEN_MSK = common dso_local global i32 0, align 4
@default_rx_params = common dso_local global %struct.v4l2_subdev_ir_parameters zeroinitializer, align 4
@ir = common dso_local global i32 0, align 4
@rx_s_parameters = common dso_local global i32 0, align 4
@default_tx_params = common dso_local global %struct.v4l2_subdev_ir_parameters zeroinitializer, align 4
@tx_s_parameters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25840_ir_probe(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.cx25840_state*, align 8
  %5 = alloca %struct.cx25840_ir_state*, align 8
  %6 = alloca %struct.v4l2_subdev_ir_parameters, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.cx25840_state* %8, %struct.cx25840_state** %4, align 8
  %9 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %10 = call i64 @is_cx23885(%struct.cx25840_state* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %14 = call i64 @is_cx23887(%struct.cx25840_state* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %88

17:                                               ; preds = %12, %1
  %18 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %19 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.cx25840_ir_state* @devm_kzalloc(i32* %21, i32 24, i32 %22)
  store %struct.cx25840_ir_state* %23, %struct.cx25840_ir_state** %5, align 8
  %24 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %25 = icmp eq %struct.cx25840_ir_state* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %88

29:                                               ; preds = %17
  %30 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %31 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %30, i32 0, i32 4
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %34 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %33, i32 0, i32 3
  %35 = load i32, i32* @CX25840_IR_RX_KFIFO_SIZE, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i64 @kfifo_alloc(i32* %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %88

42:                                               ; preds = %29
  %43 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %44 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %47 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %46, i32 0, i32 2
  store %struct.TYPE_2__* %45, %struct.TYPE_2__** %47, align 8
  %48 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %49 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %50 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %49, i32 0, i32 0
  store %struct.cx25840_ir_state* %48, %struct.cx25840_ir_state** %50, align 8
  %51 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %52 = call i64 @is_cx23885(%struct.cx25840_state* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %42
  %55 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %56 = call i64 @is_cx23887(%struct.cx25840_state* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54, %42
  %59 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %60 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* @CX25840_IR_IRQEN_REG, align 4
  %63 = load i32, i32* @IRQEN_MSK, align 4
  %64 = call i32 @cx25840_write4(%struct.TYPE_2__* %61, i32 %62, i32 %63)
  br label %71

65:                                               ; preds = %54
  %66 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %67 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* @CX25840_IR_IRQEN_REG, align 4
  %70 = call i32 @cx25840_write4(%struct.TYPE_2__* %68, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %65, %58
  %72 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %73 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %72, i32 0, i32 1
  %74 = call i32 @mutex_init(i32* %73)
  %75 = bitcast %struct.v4l2_subdev_ir_parameters* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 bitcast (%struct.v4l2_subdev_ir_parameters* @default_rx_params to i8*), i64 4, i1 false)
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %77 = load i32, i32* @ir, align 4
  %78 = load i32, i32* @rx_s_parameters, align 4
  %79 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %76, i32 %77, i32 %78, %struct.v4l2_subdev_ir_parameters* %6)
  %80 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %81 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %80, i32 0, i32 0
  %82 = call i32 @mutex_init(i32* %81)
  %83 = bitcast %struct.v4l2_subdev_ir_parameters* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 bitcast (%struct.v4l2_subdev_ir_parameters* @default_tx_params to i8*), i64 4, i1 false)
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %85 = load i32, i32* @ir, align 4
  %86 = load i32, i32* @tx_s_parameters, align 4
  %87 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %84, i32 %85, i32 %86, %struct.v4l2_subdev_ir_parameters* %6)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %71, %39, %26, %16
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_cx23885(%struct.cx25840_state*) #1

declare dso_local i64 @is_cx23887(%struct.cx25840_state*) #1

declare dso_local %struct.cx25840_ir_state* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @cx25840_write4(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_subdev_ir_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
