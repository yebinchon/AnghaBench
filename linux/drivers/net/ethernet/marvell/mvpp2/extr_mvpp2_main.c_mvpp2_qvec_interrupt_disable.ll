; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_qvec_interrupt_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_qvec_interrupt_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_queue_vector = type { i32, %struct.mvpp2_port* }
%struct.mvpp2_port = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_queue_vector*)* @mvpp2_qvec_interrupt_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_qvec_interrupt_disable(%struct.mvpp2_queue_vector* %0) #0 {
  %2 = alloca %struct.mvpp2_queue_vector*, align 8
  %3 = alloca %struct.mvpp2_port*, align 8
  store %struct.mvpp2_queue_vector* %0, %struct.mvpp2_queue_vector** %2, align 8
  %4 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %2, align 8
  %5 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %4, i32 0, i32 1
  %6 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  store %struct.mvpp2_port* %6, %struct.mvpp2_port** %3, align 8
  %7 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %8 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %11 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @MVPP2_ISR_ENABLE_REG(i32 %12)
  %14 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %2, align 8
  %15 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @MVPP2_ISR_DISABLE_INTERRUPT(i32 %16)
  %18 = call i32 @mvpp2_write(i32 %9, i32 %13, i32 %17)
  ret void
}

declare dso_local i32 @mvpp2_write(i32, i32, i32) #1

declare dso_local i32 @MVPP2_ISR_ENABLE_REG(i32) #1

declare dso_local i32 @MVPP2_ISR_DISABLE_INTERRUPT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
