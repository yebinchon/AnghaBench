; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i32, i32, i32, i32, i32, i32, i64 }

@WBSD_ISR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@WBSD_INT_CARD = common dso_local global i32 0, align 4
@WBSD_INT_FIFO_THRE = common dso_local global i32 0, align 4
@WBSD_INT_CRC = common dso_local global i32 0, align 4
@WBSD_INT_TIMEOUT = common dso_local global i32 0, align 4
@WBSD_INT_TC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wbsd_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbsd_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wbsd_host*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.wbsd_host*
  store %struct.wbsd_host* %9, %struct.wbsd_host** %6, align 8
  %10 = load %struct.wbsd_host*, %struct.wbsd_host** %6, align 8
  %11 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @WBSD_ISR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @inb(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 255
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %75

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.wbsd_host*, %struct.wbsd_host** %6, align 8
  %26 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @WBSD_INT_CARD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.wbsd_host*, %struct.wbsd_host** %6, align 8
  %35 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %34, i32 0, i32 5
  %36 = call i32 @tasklet_schedule(i32* %35)
  br label %37

37:                                               ; preds = %33, %23
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @WBSD_INT_FIFO_THRE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.wbsd_host*, %struct.wbsd_host** %6, align 8
  %44 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %43, i32 0, i32 4
  %45 = call i32 @tasklet_schedule(i32* %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @WBSD_INT_CRC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.wbsd_host*, %struct.wbsd_host** %6, align 8
  %53 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %52, i32 0, i32 3
  %54 = call i32 @tasklet_hi_schedule(i32* %53)
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @WBSD_INT_TIMEOUT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.wbsd_host*, %struct.wbsd_host** %6, align 8
  %62 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %61, i32 0, i32 2
  %63 = call i32 @tasklet_hi_schedule(i32* %62)
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @WBSD_INT_TC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.wbsd_host*, %struct.wbsd_host** %6, align 8
  %71 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %70, i32 0, i32 1
  %72 = call i32 @tasklet_schedule(i32* %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %21
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
