; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dcmi = type { i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@IT_OVR = common dso_local global i32 0, align 4
@OVERRUN_ERROR_THRESHOLD = common dso_local global i64 0, align 8
@IT_ERR = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@IT_FRAME = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dcmi_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcmi_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stm32_dcmi*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.stm32_dcmi*
  store %struct.stm32_dcmi* %8, %struct.stm32_dcmi** %6, align 8
  %9 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %10 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %9, i32 0, i32 2
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %13 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IT_OVR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %20 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %24 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OVERRUN_ERROR_THRESHOLD, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %30 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %28, %18
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %36 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IT_ERR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %43 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %34
  %47 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %48 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %46
  %55 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %56 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IT_FRAME, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %63 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %62, i32 0, i32 2
  %64 = call i32 @spin_unlock_irq(i32* %63)
  %65 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %66 = call i32 @dcmi_process_jpeg(%struct.stm32_dcmi* %65)
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %3, align 4
  br label %73

68:                                               ; preds = %54, %46
  %69 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %70 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %69, i32 0, i32 2
  %71 = call i32 @spin_unlock_irq(i32* %70)
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %61
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dcmi_process_jpeg(%struct.stm32_dcmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
