; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_fault.c_cxl_ack_ae.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_fault.c_cxl_ack_ae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cxl_context*, i32, i32)* }
%struct.cxl_context = type { i32, i32, i32, i32, i32, i32, i32 }

@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@CXL_PSL_TFC_An_AE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl_context*)* @cxl_ack_ae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxl_ack_ae(%struct.cxl_context* %0) #0 {
  %2 = alloca %struct.cxl_context*, align 8
  %3 = alloca i64, align 8
  store %struct.cxl_context* %0, %struct.cxl_context** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32 (%struct.cxl_context*, i32, i32)*, i32 (%struct.cxl_context*, i32, i32)** %5, align 8
  %7 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %8 = load i32, i32* @CXL_PSL_TFC_An_AE, align 4
  %9 = call i32 %6(%struct.cxl_context* %7, i32 %8, i32 0)
  %10 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %11 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %10, i32 0, i32 2
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %15 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %17 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %20 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %22 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %25 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %27 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %26, i32 0, i32 2
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %31 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %30, i32 0, i32 1
  %32 = call i32 @wake_up_all(i32* %31)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
