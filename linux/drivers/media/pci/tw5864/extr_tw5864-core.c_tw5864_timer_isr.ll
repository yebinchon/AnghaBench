; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-core.c_tw5864_timer_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-core.c_tw5864_timer_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw5864_dev = type { i32, i32, i32, %struct.tw5864_input* }
%struct.tw5864_input = type { i32, i32, i32, i32, i32 }

@TW5864_PCI_INTR_STATUS = common dso_local global i32 0, align 4
@TW5864_TIMER_INTR = common dso_local global i32 0, align 4
@TW5864_INPUTS = common dso_local global i32 0, align 4
@TW5864_SENIF_ORG_FRM_PTR1 = common dso_local global i32 0, align 4
@TW5864_ENC_BUF_PTR_REC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tw5864_dev*)* @tw5864_timer_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw5864_timer_isr(%struct.tw5864_dev* %0) #0 {
  %2 = alloca %struct.tw5864_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tw5864_input*, align 8
  %8 = alloca i32, align 4
  store %struct.tw5864_dev* %0, %struct.tw5864_dev** %2, align 8
  %9 = load i32, i32* @TW5864_PCI_INTR_STATUS, align 4
  %10 = load i32, i32* @TW5864_TIMER_INTR, align 4
  %11 = call i32 @tw_writel(i32 %9, i32 %10)
  %12 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %13 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %12, i32 0, i32 2
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %17 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %20 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %19, i32 0, i32 2
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %122

26:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %119, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @TW5864_INPUTS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %122

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %34 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = load i32, i32* @TW5864_INPUTS, align 4
  %38 = srem i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %40 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %39, i32 0, i32 3
  %41 = load %struct.tw5864_input*, %struct.tw5864_input** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %41, i64 %43
  store %struct.tw5864_input* %44, %struct.tw5864_input** %7, align 8
  %45 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %46 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %45, i32 0, i32 2
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %50 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %31
  br label %114

54:                                               ; preds = %31
  %55 = load i32, i32* @TW5864_SENIF_ORG_FRM_PTR1, align 4
  %56 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %57 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 2, %58
  %60 = call i32 @tw_mask_shift_readl(i32 %55, i32 3, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %62 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %94

66:                                               ; preds = %54
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %69 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %71 = call i32 @tw5864_input_deadline_update(%struct.tw5864_input* %70)
  %72 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %73 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %72, i32 0, i32 2
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %77 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %76, i32 0, i32 2
  %78 = load i64, i64* %3, align 8
  %79 = call i32 @spin_lock_irqsave(i32* %77, i64 %78)
  %80 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %81 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* @TW5864_INPUTS, align 4
  %85 = srem i32 %83, %84
  %86 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %87 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %89 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %88, i32 0, i32 2
  %90 = load i64, i64* %3, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %93 = call i32 @tw5864_request_encoded_frame(%struct.tw5864_input* %92)
  br label %122

94:                                               ; preds = %54
  %95 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %96 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @time_is_after_jiffies(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %94
  %101 = load i32, i32* @TW5864_ENC_BUF_PTR_REC1, align 4
  %102 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %103 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 2, %104
  %106 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %107 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 3
  %110 = call i32 @tw_mask_shift_writel(i32 %101, i32 3, i32 %105, i32 %109)
  %111 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %112 = call i32 @tw5864_input_deadline_update(%struct.tw5864_input* %111)
  br label %113

113:                                              ; preds = %100, %94
  br label %114

114:                                              ; preds = %113, %53
  %115 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %116 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %115, i32 0, i32 2
  %117 = load i64, i64* %3, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  br label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %27

122:                                              ; preds = %25, %66, %27
  ret void
}

declare dso_local i32 @tw_writel(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tw_mask_shift_readl(i32, i32, i32) #1

declare dso_local i32 @tw5864_input_deadline_update(%struct.tw5864_input*) #1

declare dso_local i32 @tw5864_request_encoded_frame(%struct.tw5864_input*) #1

declare dso_local i64 @time_is_after_jiffies(i32) #1

declare dso_local i32 @tw_mask_shift_writel(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
