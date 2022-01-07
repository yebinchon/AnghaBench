; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_adminq.c_gve_adminq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_adminq.c_gve_adminq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gve_priv = type { i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gve_adminq_alloc(%struct.device* %0, %struct.gve_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.gve_priv*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.gve_priv* %1, %struct.gve_priv** %5, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %9 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32 @dma_alloc_coherent(%struct.device* %6, i32 %7, i32* %9, i32 %10)
  %12 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %13 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %15 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %47

25:                                               ; preds = %2
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %27, 4
  %29 = sub i64 %28, 1
  %30 = trunc i64 %29 to i32
  %31 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %32 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %34 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %36 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = sdiv i32 %37, %38
  %40 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %41 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @iowrite32be(i32 %39, i32* %43)
  %45 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %46 = call i32 @gve_set_admin_queue_ok(%struct.gve_priv* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %25, %22
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @gve_set_admin_queue_ok(%struct.gve_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
