; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_fifo_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_fifo_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_can_classdev = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.m_can_classdev*, i32, i32)* }
%struct.TYPE_3__ = type { i32 }

@MRAM_TXB = common dso_local global i64 0, align 8
@TXB_ELEMENT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.m_can_classdev*, i32, i32, i32)* @m_can_fifo_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m_can_fifo_write(%struct.m_can_classdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.m_can_classdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.m_can_classdev* %0, %struct.m_can_classdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %11 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load i64, i64* @MRAM_TXB, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @TXB_ELEMENT_SIZE, align 4
  %19 = mul nsw i32 %17, %18
  %20 = add nsw i32 %16, %19
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %24 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.m_can_classdev*, i32, i32)*, i32 (%struct.m_can_classdev*, i32, i32)** %26, align 8
  %28 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 %27(%struct.m_can_classdev* %28, i32 %29, i32 %30)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
