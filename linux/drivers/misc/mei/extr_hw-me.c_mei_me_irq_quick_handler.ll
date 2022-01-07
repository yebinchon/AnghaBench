; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_irq_quick_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_irq_quick_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"interrupt source 0x%08X\0A\00", align 1
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_me_irq_quick_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mei_device*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.mei_device*
  store %struct.mei_device* %9, %struct.mei_device** %6, align 8
  %10 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %11 = call i32 @mei_hcsr_read(%struct.mei_device* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @me_intr_src(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %19 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @me_intr_src(i32 %21)
  %23 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @me_intr_disable(%struct.mei_device* %24, i32 %25)
  %27 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %17, %15
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @mei_hcsr_read(%struct.mei_device*) #1

declare dso_local i32 @me_intr_src(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @me_intr_disable(%struct.mei_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
