; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_catc.c_catc_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_catc.c_catc_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.TYPE_6__*, %struct.catc* }
%struct.TYPE_6__ = type { i32 }
%struct.catc = type { i32, %struct.TYPE_7__*, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ECONNRESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Tx Reset.\0A\00", align 1
@TX_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"tx_done, status %d, length %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @catc_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catc_tx_done(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.catc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 3
  %9 = load %struct.catc*, %struct.catc** %8, align 8
  store %struct.catc* %9, %struct.catc** %3, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ECONNRESET, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %1
  %18 = load %struct.urb*, %struct.urb** %2, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.catc*, %struct.catc** %3, align 8
  %26 = getelementptr inbounds %struct.catc, %struct.catc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = call i32 @netif_trans_update(%struct.TYPE_7__* %27)
  %29 = load %struct.catc*, %struct.catc** %3, align 8
  %30 = getelementptr inbounds %struct.catc, %struct.catc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @TX_RUNNING, align 4
  %37 = load %struct.catc*, %struct.catc** %3, align 8
  %38 = getelementptr inbounds %struct.catc, %struct.catc* %37, i32 0, i32 2
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  %40 = load %struct.catc*, %struct.catc** %3, align 8
  %41 = getelementptr inbounds %struct.catc, %struct.catc* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = call i32 @netif_wake_queue(%struct.TYPE_7__* %42)
  br label %94

44:                                               ; preds = %1
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.urb*, %struct.urb** %2, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.urb*, %struct.urb** %2, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  br label %94

57:                                               ; preds = %44
  %58 = load %struct.catc*, %struct.catc** %3, align 8
  %59 = getelementptr inbounds %struct.catc, %struct.catc* %58, i32 0, i32 0
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.catc*, %struct.catc** %3, align 8
  %63 = getelementptr inbounds %struct.catc, %struct.catc* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %57
  %67 = load %struct.catc*, %struct.catc** %3, align 8
  %68 = call i32 @catc_tx_run(%struct.catc* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load i32, i32* @TX_RUNNING, align 4
  %76 = load %struct.catc*, %struct.catc** %3, align 8
  %77 = getelementptr inbounds %struct.catc, %struct.catc* %76, i32 0, i32 2
  %78 = call i32 @clear_bit(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %74, %66
  br label %85

80:                                               ; preds = %57
  %81 = load i32, i32* @TX_RUNNING, align 4
  %82 = load %struct.catc*, %struct.catc** %3, align 8
  %83 = getelementptr inbounds %struct.catc, %struct.catc* %82, i32 0, i32 2
  %84 = call i32 @clear_bit(i32 %81, i32* %83)
  br label %85

85:                                               ; preds = %80, %79
  %86 = load %struct.catc*, %struct.catc** %3, align 8
  %87 = getelementptr inbounds %struct.catc, %struct.catc* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = call i32 @netif_wake_queue(%struct.TYPE_7__* %88)
  %90 = load %struct.catc*, %struct.catc** %3, align 8
  %91 = getelementptr inbounds %struct.catc, %struct.catc* %90, i32 0, i32 0
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  br label %94

94:                                               ; preds = %85, %47, %17
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @netif_trans_update(%struct.TYPE_7__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @catc_tx_run(%struct.catc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
