; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-core.c_tw5864_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-core.c_tw5864_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw5864_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TW5864_INTR_STATUS_L = common dso_local global i32 0, align 4
@TW5864_INTR_STATUS_H = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@TW5864_INTR_CLR_L = common dso_local global i32 0, align 4
@TW5864_INTR_CLR_H = common dso_local global i32 0, align 4
@TW5864_INTR_VLC_DONE = common dso_local global i32 0, align 4
@TW5864_INTR_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unknown interrupt, status 0x%08X\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tw5864_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw5864_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tw5864_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.tw5864_dev*
  store %struct.tw5864_dev* %9, %struct.tw5864_dev** %6, align 8
  %10 = load i32, i32* @TW5864_INTR_STATUS_L, align 4
  %11 = call i32 @tw_readl(i32 %10)
  %12 = load i32, i32* @TW5864_INTR_STATUS_H, align 4
  %13 = call i32 @tw_readl(i32 %12)
  %14 = shl i32 %13, 16
  %15 = or i32 %11, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %2
  %21 = load i32, i32* @TW5864_INTR_CLR_L, align 4
  %22 = call i32 @tw_writel(i32 %21, i32 65535)
  %23 = load i32, i32* @TW5864_INTR_CLR_H, align 4
  %24 = call i32 @tw_writel(i32 %23, i32 65535)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @TW5864_INTR_VLC_DONE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %31 = call i32 @tw5864_h264_isr(%struct.tw5864_dev* %30)
  br label %32

32:                                               ; preds = %29, %20
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @TW5864_INTR_TIMER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %39 = call i32 @tw5864_timer_isr(%struct.tw5864_dev* %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @TW5864_INTR_TIMER, align 4
  %43 = load i32, i32* @TW5864_INTR_VLC_DONE, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %49 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @dev_dbg(i32* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %47, %40
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @tw_readl(i32) #1

declare dso_local i32 @tw_writel(i32, i32) #1

declare dso_local i32 @tw5864_h264_isr(%struct.tw5864_dev*) #1

declare dso_local i32 @tw5864_timer_isr(%struct.tw5864_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
