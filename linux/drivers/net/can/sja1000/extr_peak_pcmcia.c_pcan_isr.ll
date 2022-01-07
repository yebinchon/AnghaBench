; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pcmcia.c_pcan_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pcmcia.c_pcan_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcan_pccard = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@PCC_ISR_MAX_LOOP = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @pcan_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pcan_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pcan_pccard*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.pcan_pccard*
  store %struct.pcan_pccard* %12, %struct.pcan_pccard** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %57, %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @PCC_ISR_MAX_LOOP, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %13
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %49, %17
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.pcan_pccard*, %struct.pcan_pccard** %6, align 8
  %21 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %18
  %25 = load %struct.pcan_pccard*, %struct.pcan_pccard** %6, align 8
  %26 = call i32 @pcan_pccard_present(%struct.pcan_pccard* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @IRQ_NONE, align 8
  store i64 %29, i64* %3, align 8
  br label %69

30:                                               ; preds = %24
  %31 = load %struct.pcan_pccard*, %struct.pcan_pccard** %6, align 8
  %32 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.net_device*, %struct.net_device** %37, align 8
  store %struct.net_device* %38, %struct.net_device** %10, align 8
  %39 = load %struct.net_device*, %struct.net_device** %10, align 8
  %40 = icmp ne %struct.net_device* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.net_device*, %struct.net_device** %10, align 8
  %44 = call i64 @sja1000_interrupt(i32 %42, %struct.net_device* %43)
  %45 = load i64, i64* @IRQ_HANDLED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %41, %30
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %18

52:                                               ; preds = %18
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %60

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %13

60:                                               ; preds = %55, %13
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i64, i64* @IRQ_HANDLED, align 8
  br label %67

65:                                               ; preds = %60
  %66 = load i64, i64* @IRQ_NONE, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i64 [ %64, %63 ], [ %66, %65 ]
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %67, %28
  %70 = load i64, i64* %3, align 8
  ret i64 %70
}

declare dso_local i32 @pcan_pccard_present(%struct.pcan_pccard*) #1

declare dso_local i64 @sja1000_interrupt(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
