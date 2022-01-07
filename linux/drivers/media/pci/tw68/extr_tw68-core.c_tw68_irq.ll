; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-core.c_tw68_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-core.c_tw68_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw68_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TW68_INTSTAT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"%s: **** INTERRUPT NOT HANDLED - clearing mask (orig 0x%08x, cur 0x%08x)\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: pci_irqmask 0x%08x; board_virqmask 0x%08x ****\0A\00", align 1
@TW68_INTMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tw68_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw68_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tw68_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.tw68_dev*
  store %struct.tw68_dev* %11, %struct.tw68_dev** %6, align 8
  %12 = load i32, i32* @TW68_INTSTAT, align 4
  %13 = call i32 @tw_readl(i32 %12)
  %14 = load %struct.tw68_dev*, %struct.tw68_dev** %6, align 8
  %15 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %13, %16
  store i32 %17, i32* %8, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 0, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %84

22:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %49, %22
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 10
  br i1 %25, label %26, label %52

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.tw68_dev*, %struct.tw68_dev** %6, align 8
  %29 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.tw68_dev*, %struct.tw68_dev** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @tw68_irq_video_done(%struct.tw68_dev* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i32, i32* @TW68_INTSTAT, align 4
  %39 = call i32 @tw_readl(i32 %38)
  %40 = load %struct.tw68_dev*, %struct.tw68_dev** %6, align 8
  %41 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %39, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 0, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %47, i32* %3, align 4
  br label %84

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %23

52:                                               ; preds = %23
  %53 = load %struct.tw68_dev*, %struct.tw68_dev** %6, align 8
  %54 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.tw68_dev*, %struct.tw68_dev** %6, align 8
  %58 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @TW68_INTSTAT, align 4
  %62 = call i32 @tw_readl(i32 %61)
  %63 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i32 %62)
  %64 = load %struct.tw68_dev*, %struct.tw68_dev** %6, align 8
  %65 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.tw68_dev*, %struct.tw68_dev** %6, align 8
  %69 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.tw68_dev*, %struct.tw68_dev** %6, align 8
  %72 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.tw68_dev*, %struct.tw68_dev** %6, align 8
  %75 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_dbg(i32* %67, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %73, i32 %76)
  %78 = load i32, i32* @TW68_INTMASK, align 4
  %79 = load %struct.tw68_dev*, %struct.tw68_dev** %6, align 8
  %80 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @tw_clearl(i32 %78, i32 %81)
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %52, %46, %20
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @tw_readl(i32) #1

declare dso_local i32 @tw68_irq_video_done(%struct.tw68_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @tw_clearl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
