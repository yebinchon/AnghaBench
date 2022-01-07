; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_sg_to_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_sg_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*)* @mmc_omap_sg_to_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_sg_to_buf(%struct.mmc_omap_host* %0) #0 {
  %2 = alloca %struct.mmc_omap_host*, align 8
  %3 = alloca %struct.scatterlist*, align 8
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %2, align 8
  %4 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %4, i32 0, i32 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %9 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %2, align 8
  %10 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %8, i64 %12
  store %struct.scatterlist* %13, %struct.scatterlist** %3, align 8
  %14 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %15 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %2, align 8
  %18 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %20 = call i32 @sg_virt(%struct.scatterlist* %19)
  %21 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %2, align 8
  %22 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %2, align 8
  %24 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %2, align 8
  %27 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %2, align 8
  %32 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %2, align 8
  %35 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %30, %1
  ret void
}

declare dso_local i32 @sg_virt(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
