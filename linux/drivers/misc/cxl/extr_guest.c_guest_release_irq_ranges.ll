; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_guest_release_irq_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_guest_release_irq_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_irq_ranges = type { i32*, i32* }
%struct.cxl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CXL_IRQ_RANGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl_irq_ranges*, %struct.cxl*)* @guest_release_irq_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guest_release_irq_ranges(%struct.cxl_irq_ranges* %0, %struct.cxl* %1) #0 {
  %3 = alloca %struct.cxl_irq_ranges*, align 8
  %4 = alloca %struct.cxl*, align 8
  %5 = alloca i32, align 4
  store %struct.cxl_irq_ranges* %0, %struct.cxl_irq_ranges** %3, align 8
  store %struct.cxl* %1, %struct.cxl** %4, align 8
  %6 = load %struct.cxl*, %struct.cxl** %4, align 8
  %7 = getelementptr inbounds %struct.cxl, %struct.cxl* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %32, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @CXL_IRQ_RANGES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load %struct.cxl*, %struct.cxl** %4, align 8
  %17 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %3, align 8
  %18 = getelementptr inbounds %struct.cxl_irq_ranges, %struct.cxl_irq_ranges* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %3, align 8
  %25 = getelementptr inbounds %struct.cxl_irq_ranges, %struct.cxl_irq_ranges* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @irq_free_range(%struct.cxl* %16, i32 %23, i32 %30)
  br label %32

32:                                               ; preds = %15
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load %struct.cxl*, %struct.cxl** %4, align 8
  %37 = getelementptr inbounds %struct.cxl, %struct.cxl* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @irq_free_range(%struct.cxl*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
