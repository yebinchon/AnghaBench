; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_stop_req_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_stop_req_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_adapter = type { i32, i32, i32, %struct.fjes_hw }
%struct.fjes_hw = type { i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@FJES_RX_STOP_REQ_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fjes_adapter*, i32)* @fjes_stop_req_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fjes_stop_req_irq(%struct.fjes_adapter* %0, i32 %1) #0 {
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
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %12 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = call i32 @set_bit(i32 %10, i32* %13)
  %15 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @fjes_hw_get_partner_ep_status(%struct.fjes_hw* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @trace_fjes_stop_req_irq_pre(%struct.fjes_hw* %18, i32 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %51 [
    i32 128, label %23
    i32 129, label %50
    i32 131, label %50
    i32 130, label %68
  ]

23:                                               ; preds = %2
  %24 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %25 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %24, i32 0, i32 3
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i32, i32* @FJES_RX_STOP_REQ_DONE, align 4
  %29 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %30 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %29, i32 0, i32 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %28
  store i32 %41, i32* %39, align 4
  %42 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %43 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %42, i32 0, i32 3
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %48 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %47, i32 0, i32 2
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %2, %2, %23
  br label %51

51:                                               ; preds = %2, %50
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %53, i32 0, i32 2
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  %56 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %56, i32 0, i32 1
  %58 = call i32 @work_pending(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %51
  %61 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %64, i32 0, i32 1
  %66 = call i32 @queue_work(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %60, %51
  br label %85

68:                                               ; preds = %2
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %71 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %70, i32 0, i32 1
  %72 = call i32 @set_bit(i32 %69, i32* %71)
  %73 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %74 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %73, i32 0, i32 0
  %75 = call i32 @work_pending(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %68
  %78 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %82 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %81, i32 0, i32 0
  %83 = call i32 @queue_work(i32 %80, i32* %82)
  br label %84

84:                                               ; preds = %77, %68
  br label %85

85:                                               ; preds = %84, %67
  %86 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @trace_fjes_stop_req_irq_post(%struct.fjes_hw* %86, i32 %87)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @fjes_hw_get_partner_ep_status(%struct.fjes_hw*, i32) #1

declare dso_local i32 @trace_fjes_stop_req_irq_pre(%struct.fjes_hw*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @work_pending(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @trace_fjes_stop_req_irq_post(%struct.fjes_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
