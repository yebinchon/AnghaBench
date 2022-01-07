; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_shared_interrupt_mask_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_shared_interrupt_mask_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32, %struct.TYPE_2__*, %struct.mvpp2_queue_vector* }
%struct.TYPE_2__ = type { i64 }
%struct.mvpp2_queue_vector = type { i64, i32 }

@MVPP22 = common dso_local global i64 0, align 8
@MVPP2_QUEUE_VECTOR_SHARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, i32)* @mvpp2_shared_interrupt_mask_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_shared_interrupt_mask_unmask(%struct.mvpp2_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvpp2_queue_vector*, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %9 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MVPP22, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %59

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i64 0, i64* %5, align 8
  br label %23

20:                                               ; preds = %16
  %21 = load i64, i64* @MVPP22, align 8
  %22 = call i64 @MVPP2_CAUSE_RXQ_OCCUP_DESC_ALL_MASK(i64 %21)
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %20, %19
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %56, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %27 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %24
  %31 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %32 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %31, i32 0, i32 3
  %33 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %33, i64 %35
  store %struct.mvpp2_queue_vector* %36, %struct.mvpp2_queue_vector** %7, align 8
  %37 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %7, align 8
  %38 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MVPP2_QUEUE_VECTOR_SHARED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %56

43:                                               ; preds = %30
  %44 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %45 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %7, align 8
  %48 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %51 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @MVPP2_ISR_RX_TX_MASK_REG(i32 %52)
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @mvpp2_thread_write(%struct.TYPE_2__* %46, i32 %49, i32 %53, i64 %54)
  br label %56

56:                                               ; preds = %43, %42
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %24

59:                                               ; preds = %15, %24
  ret void
}

declare dso_local i64 @MVPP2_CAUSE_RXQ_OCCUP_DESC_ALL_MASK(i64) #1

declare dso_local i32 @mvpp2_thread_write(%struct.TYPE_2__*, i32, i32, i64) #1

declare dso_local i32 @MVPP2_ISR_RX_TX_MASK_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
