; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r592_device = type { i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@R592_REG_MSC = common dso_local global i32 0, align 4
@R592_REG_MSC_IRQ_INSERT = common dso_local global i32 0, align 4
@R592_REG_MSC_IRQ_REMOVE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"IRQ: card %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"added\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"removed\00", align 1
@jiffies = common dso_local global i64 0, align 8
@R592_REG_MSC_FIFO_DMA_DONE = common dso_local global i32 0, align 4
@R592_REG_MSC_FIFO_DMA_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"IRQ: DMA error\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"IRQ: dma done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @r592_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r592_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.r592_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.r592_device*
  store %struct.r592_device* %14, %struct.r592_device** %5, align 8
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.r592_device*, %struct.r592_device** %5, align 8
  %17 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %16, i32 0, i32 0
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.r592_device*, %struct.r592_device** %5, align 8
  %21 = load i32, i32* @R592_REG_MSC, align 4
  %22 = call i32 @r592_read_reg(%struct.r592_device* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 16
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 65535
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.r592_device*, %struct.r592_device** %5, align 8
  %32 = load i32, i32* @R592_REG_MSC, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @r592_write_reg(%struct.r592_device* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @R592_REG_MSC_IRQ_INSERT, align 4
  %40 = load i32, i32* @R592_REG_MSC_IRQ_REMOVE, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %2
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @R592_REG_MSC_IRQ_INSERT, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 (i8*, ...) @message(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load %struct.r592_device*, %struct.r592_device** %5, align 8
  %55 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %54, i32 0, i32 2
  %56 = load i64, i64* @jiffies, align 8
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 500, i32 50
  %61 = call i64 @msecs_to_jiffies(i32 %60)
  %62 = add nsw i64 %56, %61
  %63 = call i32 @mod_timer(i32* %55, i64 %62)
  br label %64

64:                                               ; preds = %44, %2
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @R592_REG_MSC_FIFO_DMA_DONE, align 4
  %67 = load i32, i32* @R592_REG_MSC_FIFO_DMA_ERR, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %64
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @R592_REG_MSC_FIFO_DMA_ERR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = call i32 (i8*, ...) @message(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %11, align 4
  br label %83

81:                                               ; preds = %71
  %82 = call i32 @dbg_verbose(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %81, %77
  %84 = load %struct.r592_device*, %struct.r592_device** %5, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @r592_stop_dma(%struct.r592_device* %84, i32 %85)
  %87 = load %struct.r592_device*, %struct.r592_device** %5, align 8
  %88 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %87, i32 0, i32 1
  %89 = call i32 @complete(i32* %88)
  br label %90

90:                                               ; preds = %83, %64
  %91 = load %struct.r592_device*, %struct.r592_device** %5, align 8
  %92 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %91, i32 0, i32 0
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @r592_read_reg(%struct.r592_device*, i32) #1

declare dso_local i32 @r592_write_reg(%struct.r592_device*, i32, i32) #1

declare dso_local i32 @message(i8*, ...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dbg_verbose(i8*) #1

declare dso_local i32 @r592_stop_dma(%struct.r592_device*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
