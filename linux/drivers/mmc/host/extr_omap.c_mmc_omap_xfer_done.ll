; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_xfer_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_xfer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i32, i32, %struct.mmc_data*, i32, %struct.mmc_host*, i32*, i64, i32*, i64 }
%struct.mmc_host = type { i32 }
%struct.mmc_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, %struct.mmc_data*)* @mmc_omap_xfer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_xfer_done(%struct.mmc_omap_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %6 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %6, i32 0, i32 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %12 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %13 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mmc_omap_release_dma(%struct.mmc_omap_host* %11, %struct.mmc_data* %12, i32 %15)
  br label %17

17:                                               ; preds = %10, %2
  %18 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %18, i32 0, i32 7
  store i32* null, i32** %19, align 8
  %20 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %17
  %27 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %28 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %27, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %30 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %29, i32 0, i32 4
  %31 = load %struct.mmc_host*, %struct.mmc_host** %30, align 8
  store %struct.mmc_host* %31, %struct.mmc_host** %5, align 8
  %32 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %33 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mmc_omap_release_slot(i32 %34, i32 1)
  %36 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %37 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mmc_request_done(%struct.mmc_host* %36, i32 %39)
  br label %51

41:                                               ; preds = %17
  %42 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %43 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %44 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %43, i32 0, i32 2
  store %struct.mmc_data* %42, %struct.mmc_data** %44, align 8
  %45 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %46 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %49 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %48, i32 0, i32 0
  %50 = call i32 @queue_work(i32 %47, i32* %49)
  br label %51

51:                                               ; preds = %41, %26
  ret void
}

declare dso_local i32 @mmc_omap_release_dma(%struct.mmc_omap_host*, %struct.mmc_data*, i32) #1

declare dso_local i32 @mmc_omap_release_slot(i32, i32) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
