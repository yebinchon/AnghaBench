; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_interrupts_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_interrupts_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@MVPP2_CAUSE_MISC_SUM_MASK = common dso_local global i32 0, align 4
@MVPP2_CAUSE_TXQ_OCCUP_DESC_ALL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mvpp2_interrupts_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_interrupts_unmask(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mvpp2_port*
  store %struct.mvpp2_port* %6, %struct.mvpp2_port** %3, align 8
  %7 = call i64 (...) @smp_processor_id()
  %8 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %9 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %7, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %47

15:                                               ; preds = %1
  %16 = load i32, i32* @MVPP2_CAUSE_MISC_SUM_MASK, align 4
  %17 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %18 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @MVPP2_CAUSE_RXQ_OCCUP_DESC_ALL_MASK(i32 %21)
  %23 = or i32 %16, %22
  store i32 %23, i32* %4, align 4
  %24 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %25 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = load i32, i32* @MVPP2_CAUSE_TXQ_OCCUP_DESC_ALL_MASK, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %15
  %33 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %34 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %37 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = call i64 (...) @smp_processor_id()
  %40 = call i32 @mvpp2_cpu_to_thread(%struct.TYPE_3__* %38, i64 %39)
  %41 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %42 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @MVPP2_ISR_RX_TX_MASK_REG(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @mvpp2_thread_write(%struct.TYPE_3__* %35, i32 %40, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %32, %14
  ret void
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @MVPP2_CAUSE_RXQ_OCCUP_DESC_ALL_MASK(i32) #1

declare dso_local i32 @mvpp2_thread_write(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @mvpp2_cpu_to_thread(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @MVPP2_ISR_RX_TX_MASK_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
