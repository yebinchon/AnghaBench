; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_init_ram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_init_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_can_classdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MRAM_SIDF = common dso_local global i64 0, align 8
@MRAM_TXB = common dso_local global i64 0, align 8
@TXB_ELEMENT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_can_init_ram(%struct.m_can_classdev* %0) #0 {
  %2 = alloca %struct.m_can_classdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.m_can_classdev* %0, %struct.m_can_classdev** %2, align 8
  %6 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %7 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i64, i64* @MRAM_SIDF, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %14 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* @MRAM_TXB, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %21 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* @MRAM_TXB, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TXB_ELEMENT_SIZE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = add nsw i32 %19, %28
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %39, %1
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @m_can_fifo_write_no_off(%struct.m_can_classdev* %36, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* %4, align 4
  br label %31

42:                                               ; preds = %31
  ret void
}

declare dso_local i32 @m_can_fifo_write_no_off(%struct.m_can_classdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
