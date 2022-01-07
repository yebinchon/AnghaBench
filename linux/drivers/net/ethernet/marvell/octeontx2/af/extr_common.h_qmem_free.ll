; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_common.h_qmem_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_common.h_qmem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qmem = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.qmem*)* @qmem_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qmem_free(%struct.device* %0, %struct.qmem* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.qmem*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.qmem* %1, %struct.qmem** %4, align 8
  %5 = load %struct.qmem*, %struct.qmem** %4, align 8
  %6 = icmp ne %struct.qmem* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %37

8:                                                ; preds = %2
  %9 = load %struct.qmem*, %struct.qmem** %4, align 8
  %10 = getelementptr inbounds %struct.qmem, %struct.qmem* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = load %struct.qmem*, %struct.qmem** %4, align 8
  %16 = getelementptr inbounds %struct.qmem, %struct.qmem* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.qmem*, %struct.qmem** %4, align 8
  %19 = getelementptr inbounds %struct.qmem, %struct.qmem* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.qmem*, %struct.qmem** %4, align 8
  %22 = getelementptr inbounds %struct.qmem, %struct.qmem* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = load %struct.qmem*, %struct.qmem** %4, align 8
  %26 = getelementptr inbounds %struct.qmem, %struct.qmem* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.qmem*, %struct.qmem** %4, align 8
  %29 = getelementptr inbounds %struct.qmem, %struct.qmem* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = call i32 @dma_free_coherent(%struct.device* %14, i32 %17, i64 %24, i64 %31)
  br label %33

33:                                               ; preds = %13, %8
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = load %struct.qmem*, %struct.qmem** %4, align 8
  %36 = call i32 @devm_kfree(%struct.device* %34, %struct.qmem* %35)
  br label %37

37:                                               ; preds = %33, %7
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i64, i64) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.qmem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
