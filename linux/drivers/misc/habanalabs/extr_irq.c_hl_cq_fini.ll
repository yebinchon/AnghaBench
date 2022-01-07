; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_irq.c_hl_cq_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_irq.c_hl_cq_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32, i8*, i32)* }
%struct.hl_cq = type { i32, i64 }

@HL_CQ_SIZE_IN_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hl_cq_fini(%struct.hl_device* %0, %struct.hl_cq* %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.hl_cq*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store %struct.hl_cq* %1, %struct.hl_cq** %4, align 8
  %5 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %6 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.hl_device*, i32, i8*, i32)*, i32 (%struct.hl_device*, i32, i8*, i32)** %8, align 8
  %10 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %11 = load i32, i32* @HL_CQ_SIZE_IN_BYTES, align 4
  %12 = load %struct.hl_cq*, %struct.hl_cq** %4, align 8
  %13 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = load %struct.hl_cq*, %struct.hl_cq** %4, align 8
  %17 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %9(%struct.hl_device* %10, i32 %11, i8* %15, i32 %18)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
