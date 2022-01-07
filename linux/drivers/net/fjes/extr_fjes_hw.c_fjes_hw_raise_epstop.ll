; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_raise_epstop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_raise_epstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_hw = type { i32, i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@REG_ICTL_MASK_TXRX_STOP_REQ = common dso_local global i32 0, align 4
@FJES_RX_STOP_REQ_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fjes_hw_raise_epstop(%struct.fjes_hw* %0) #0 {
  %2 = alloca %struct.fjes_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.fjes_hw* %0, %struct.fjes_hw** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %72, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %9 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %75

12:                                               ; preds = %6
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %15 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %72

19:                                               ; preds = %12
  %20 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @fjes_hw_get_partner_ep_status(%struct.fjes_hw* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  switch i32 %23, label %39 [
    i32 128, label %24
  ]

24:                                               ; preds = %19
  %25 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @REG_ICTL_MASK_TXRX_STOP_REQ, align 4
  %28 = call i32 @fjes_hw_raise_interrupt(%struct.fjes_hw* %25, i32 %26, i32 %27)
  %29 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %30 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %29, i32 0, i32 3
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  br label %40

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %43 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i32 @set_bit(i32 %41, i32* %44)
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %48 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %47, i32 0, i32 4
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  %50 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %51 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %50, i32 0, i32 2
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load i32, i32* @FJES_RX_STOP_REQ_REQUEST, align 4
  %55 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %56 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %55, i32 0, i32 3
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %54
  store i32 %67, i32* %65, align 4
  %68 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %69 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %68, i32 0, i32 2
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %40, %18
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %6

75:                                               ; preds = %6
  ret void
}

declare dso_local i32 @fjes_hw_get_partner_ep_status(%struct.fjes_hw*, i32) #1

declare dso_local i32 @fjes_hw_raise_interrupt(%struct.fjes_hw*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
