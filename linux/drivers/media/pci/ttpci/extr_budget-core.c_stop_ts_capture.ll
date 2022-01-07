; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-core.c_stop_ts_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-core.c_stop_ts_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"budget: %p\0A\00", align 1
@MC1 = common dso_local global i32 0, align 4
@MASK_20 = common dso_local global i32 0, align 4
@MASK_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.budget*)* @stop_ts_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop_ts_capture(%struct.budget* %0) #0 {
  %2 = alloca %struct.budget*, align 8
  store %struct.budget* %0, %struct.budget** %2, align 8
  %3 = load %struct.budget*, %struct.budget** %2, align 8
  %4 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.budget* %3)
  %5 = load %struct.budget*, %struct.budget** %2, align 8
  %6 = getelementptr inbounds %struct.budget, %struct.budget* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MC1, align 4
  %9 = load i32, i32* @MASK_20, align 4
  %10 = call i32 @saa7146_write(i32 %7, i32 %8, i32 %9)
  %11 = load %struct.budget*, %struct.budget** %2, align 8
  %12 = getelementptr inbounds %struct.budget, %struct.budget* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MASK_10, align 4
  %15 = call i32 @SAA7146_IER_DISABLE(i32 %13, i32 %14)
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*, %struct.budget*) #1

declare dso_local i32 @saa7146_write(i32, i32, i32) #1

declare dso_local i32 @SAA7146_IER_DISABLE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
