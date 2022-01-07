; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-input.c_cx23885_input_process_measurements.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-input.c_cx23885_input_process_measurements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32, %struct.cx23885_kernel_ir* }
%struct.cx23885_kernel_ir = type { i32 }
%struct.ir_raw_event = type { i32 }

@ir = common dso_local global i32 0, align 4
@rx_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx23885_dev*, i32)* @cx23885_input_process_measurements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx23885_input_process_measurements(%struct.cx23885_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.cx23885_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx23885_kernel_ir*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [64 x %struct.ir_raw_event], align 16
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %12 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %11, i32 0, i32 1
  %13 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %12, align 8
  store %struct.cx23885_kernel_ir* %13, %struct.cx23885_kernel_ir** %5, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %43, %2
  store i32 0, i32* %6, align 4
  %15 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %16 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ir, align 4
  %19 = load i32, i32* @rx_read, align 4
  %20 = getelementptr inbounds [64 x %struct.ir_raw_event], [64 x %struct.ir_raw_event]* %10, i64 0, i64 0
  %21 = bitcast %struct.ir_raw_event* %20 to i32*
  %22 = call i32 @v4l2_subdev_call(i32 %17, i32 %18, i32 %19, i32* %21, i32 256, i32* %6)
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %39, %14
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %5, align 8
  %33 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [64 x %struct.ir_raw_event], [64 x %struct.ir_raw_event]* %10, i64 0, i64 %36
  %38 = call i32 @ir_raw_event_store(i32 %34, %struct.ir_raw_event* %37)
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %27

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %14, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %5, align 8
  %51 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ir_raw_event_reset(i32 %52)
  br label %63

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %5, align 8
  %59 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ir_raw_event_handle(i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  br label %63

63:                                               ; preds = %62, %49
  ret void
}

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ir_raw_event_store(i32, %struct.ir_raw_event*) #1

declare dso_local i32 @ir_raw_event_reset(i32) #1

declare dso_local i32 @ir_raw_event_handle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
