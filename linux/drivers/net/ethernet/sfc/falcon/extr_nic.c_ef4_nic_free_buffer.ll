; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_nic.c_ef4_nic_free_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_nic.c_ef4_nic_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ef4_buffer = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ef4_nic_free_buffer(%struct.ef4_nic* %0, %struct.ef4_buffer* %1) #0 {
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca %struct.ef4_buffer*, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  store %struct.ef4_buffer* %1, %struct.ef4_buffer** %4, align 8
  %5 = load %struct.ef4_buffer*, %struct.ef4_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.ef4_buffer, %struct.ef4_buffer* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %11 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ef4_buffer*, %struct.ef4_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.ef4_buffer, %struct.ef4_buffer* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ef4_buffer*, %struct.ef4_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.ef4_buffer, %struct.ef4_buffer* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.ef4_buffer*, %struct.ef4_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.ef4_buffer, %struct.ef4_buffer* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dma_free_coherent(i32* %13, i32 %16, i32* %19, i32 %22)
  %24 = load %struct.ef4_buffer*, %struct.ef4_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.ef4_buffer, %struct.ef4_buffer* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
