; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_tx_fifo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_tx_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i32 }
%struct.gve_tx_fifo = type { i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to vmap fifo, qpl_id = %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gve_priv*, %struct.gve_tx_fifo*)* @gve_tx_fifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_tx_fifo_init(%struct.gve_priv* %0, %struct.gve_tx_fifo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gve_priv*, align 8
  %5 = alloca %struct.gve_tx_fifo*, align 8
  store %struct.gve_priv* %0, %struct.gve_priv** %4, align 8
  store %struct.gve_tx_fifo* %1, %struct.gve_tx_fifo** %5, align 8
  %6 = load %struct.gve_tx_fifo*, %struct.gve_tx_fifo** %5, align 8
  %7 = getelementptr inbounds %struct.gve_tx_fifo, %struct.gve_tx_fifo* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.gve_tx_fifo*, %struct.gve_tx_fifo** %5, align 8
  %12 = getelementptr inbounds %struct.gve_tx_fifo, %struct.gve_tx_fifo* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VM_MAP, align 4
  %17 = load i32, i32* @PAGE_KERNEL, align 4
  %18 = call i32 @vmap(i32 %10, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.gve_tx_fifo*, %struct.gve_tx_fifo** %5, align 8
  %20 = getelementptr inbounds %struct.gve_tx_fifo, %struct.gve_tx_fifo* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.gve_tx_fifo*, %struct.gve_tx_fifo** %5, align 8
  %22 = getelementptr inbounds %struct.gve_tx_fifo, %struct.gve_tx_fifo* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %2
  %30 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %31 = load i32, i32* @drv, align 4
  %32 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %33 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.gve_tx_fifo*, %struct.gve_tx_fifo** %5, align 8
  %36 = getelementptr inbounds %struct.gve_tx_fifo, %struct.gve_tx_fifo* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @netif_err(%struct.gve_priv* %30, i32 %31, i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %61

43:                                               ; preds = %2
  %44 = load %struct.gve_tx_fifo*, %struct.gve_tx_fifo** %5, align 8
  %45 = getelementptr inbounds %struct.gve_tx_fifo, %struct.gve_tx_fifo* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load %struct.gve_tx_fifo*, %struct.gve_tx_fifo** %5, align 8
  %52 = getelementptr inbounds %struct.gve_tx_fifo, %struct.gve_tx_fifo* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.gve_tx_fifo*, %struct.gve_tx_fifo** %5, align 8
  %54 = getelementptr inbounds %struct.gve_tx_fifo, %struct.gve_tx_fifo* %53, i32 0, i32 2
  %55 = load %struct.gve_tx_fifo*, %struct.gve_tx_fifo** %5, align 8
  %56 = getelementptr inbounds %struct.gve_tx_fifo, %struct.gve_tx_fifo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @atomic_set(i32* %54, i32 %57)
  %59 = load %struct.gve_tx_fifo*, %struct.gve_tx_fifo** %5, align 8
  %60 = getelementptr inbounds %struct.gve_tx_fifo, %struct.gve_tx_fifo* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %43, %29
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @vmap(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_err(%struct.gve_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
