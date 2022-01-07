; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_txrx_stop_req_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_txrx_stop_req_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_adapter = type { i32, i32, i32, %struct.fjes_hw }
%struct.fjes_hw = type { i32, i32, i32, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@FJES_RX_STOP_REQ_DONE = common dso_local global i32 0, align 4
@FJES_RX_STOP_REQ_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fjes_adapter*, i32)* @fjes_txrx_stop_req_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fjes_txrx_stop_req_irq(%struct.fjes_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.fjes_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fjes_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.fjes_adapter* %0, %struct.fjes_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %8, i32 0, i32 3
  store %struct.fjes_hw* %9, %struct.fjes_hw** %5, align 8
  %10 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @fjes_hw_get_partner_ep_status(%struct.fjes_hw* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @trace_fjes_txrx_stop_req_irq_pre(%struct.fjes_hw* %13, i32 %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %19 [
    i32 129, label %18
    i32 131, label %18
    i32 128, label %20
    i32 130, label %70
  ]

18:                                               ; preds = %2, %2
  br label %19

19:                                               ; preds = %2, %18
  br label %104

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %23 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %69

26:                                               ; preds = %20
  %27 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %28 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %27, i32 0, i32 5
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load i32, i32* @FJES_RX_STOP_REQ_DONE, align 4
  %32 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %33 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %32, i32 0, i32 3
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %31
  store i32 %44, i32* %42, align 4
  %45 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %46 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %45, i32 0, i32 5
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %51 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %50, i32 0, i32 4
  %52 = call i32 @clear_bit(i32 %49, i32* %51)
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %54, i32 0, i32 2
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  %57 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %57, i32 0, i32 1
  %59 = call i32 @work_pending(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %26
  %62 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %65, i32 0, i32 1
  %67 = call i32 @queue_work(i32 %64, i32* %66)
  br label %68

68:                                               ; preds = %61, %26
  br label %69

69:                                               ; preds = %68, %20
  br label %104

70:                                               ; preds = %2
  %71 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %72 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %71, i32 0, i32 3
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @FJES_RX_STOP_REQ_REQUEST, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %70
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %89 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %88, i32 0, i32 2
  %90 = call i32 @set_bit(i32 %87, i32* %89)
  %91 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %92 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %91, i32 0, i32 1
  %93 = call i32 @work_pending(i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %86
  %96 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %100 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %99, i32 0, i32 1
  %101 = call i32 @queue_work(i32 %98, i32* %100)
  br label %102

102:                                              ; preds = %95, %86
  br label %103

103:                                              ; preds = %102, %70
  br label %104

104:                                              ; preds = %103, %69, %19
  %105 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @trace_fjes_txrx_stop_req_irq_post(%struct.fjes_hw* %105, i32 %106)
  ret void
}

declare dso_local i32 @fjes_hw_get_partner_ep_status(%struct.fjes_hw*, i32) #1

declare dso_local i32 @trace_fjes_txrx_stop_req_irq_pre(%struct.fjes_hw*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @work_pending(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @trace_fjes_txrx_stop_req_irq_post(%struct.fjes_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
