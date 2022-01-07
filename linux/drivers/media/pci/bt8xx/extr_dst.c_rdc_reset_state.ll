; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_rdc_reset_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_rdc_reset_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Resetting state machine\0A\00", align 1
@RDC_8820_INT = common dso_local global i32 0, align 4
@NO_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"dst_gpio_outb ERROR !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdc_reset_state(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %4 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %6 = load i32, i32* @RDC_8820_INT, align 4
  %7 = load i32, i32* @RDC_8820_INT, align 4
  %8 = load i32, i32* @NO_DELAY, align 4
  %9 = call i64 @dst_gpio_outb(%struct.dst_state* %5, i32 %6, i32 %7, i32 0, i32 %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = call i32 @msleep(i32 10)
  %15 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %16 = load i32, i32* @RDC_8820_INT, align 4
  %17 = load i32, i32* @RDC_8820_INT, align 4
  %18 = load i32, i32* @RDC_8820_INT, align 4
  %19 = load i32, i32* @NO_DELAY, align 4
  %20 = call i64 @dst_gpio_outb(%struct.dst_state* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @msleep(i32 10)
  store i32 -1, i32* %2, align 4
  br label %26

25:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %22, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i64 @dst_gpio_outb(%struct.dst_state*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
