; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_dma_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_dma_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32, i32, %struct.mmc_request*, i32 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32 }
%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @omap_hsmmc_dma_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_dma_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_request*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.omap_hsmmc_host*
  store %struct.omap_hsmmc_host* %9, %struct.omap_hsmmc_host** %3, align 8
  %10 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %10, i32 0, i32 4
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %18, i32 0, i32 4
  %20 = call i32 @spin_unlock_irq(i32* %19)
  br label %71

21:                                               ; preds = %1
  %22 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %22, i32 0, i32 3
  %24 = load %struct.mmc_request*, %struct.mmc_request** %23, align 8
  %25 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %24, i32 0, i32 0
  %26 = load %struct.mmc_data*, %struct.mmc_data** %25, align 8
  store %struct.mmc_data* %26, %struct.mmc_data** %5, align 8
  %27 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %28 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %29 = call %struct.dma_chan* @omap_hsmmc_get_dma_chan(%struct.omap_hsmmc_host* %27, %struct.mmc_data* %28)
  store %struct.dma_chan* %29, %struct.dma_chan** %4, align 8
  %30 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %31 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %21
  %35 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %36 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %41 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %44 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %47 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %46)
  %48 = call i32 @dma_unmap_sg(i32 %39, i32 %42, i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %34, %21
  %50 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %51 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  %53 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %54 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 8
  %55 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %56 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %55, i32 0, i32 4
  %57 = call i32 @spin_unlock_irq(i32* %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %49
  %61 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %62 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %61, i32 0, i32 3
  %63 = load %struct.mmc_request*, %struct.mmc_request** %62, align 8
  store %struct.mmc_request* %63, %struct.mmc_request** %7, align 8
  %64 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %65 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %64, i32 0, i32 3
  store %struct.mmc_request* null, %struct.mmc_request** %65, align 8
  %66 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %67 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %70 = call i32 @mmc_request_done(i32 %68, %struct.mmc_request* %69)
  br label %71

71:                                               ; preds = %17, %60, %49
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.dma_chan* @omap_hsmmc_get_dma_chan(%struct.omap_hsmmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
