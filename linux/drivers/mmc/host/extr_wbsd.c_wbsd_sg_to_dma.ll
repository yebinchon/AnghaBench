; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_sg_to_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_sg_to_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i32 }
%struct.mmc_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbsd_host*, %struct.mmc_data*)* @wbsd_sg_to_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_sg_to_dma(%struct.wbsd_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.wbsd_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.wbsd_host* %0, %struct.wbsd_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %24, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %7
  %14 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %7

27:                                               ; preds = %7
  %28 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %32 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %35 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @sg_copy_to_buffer(%struct.TYPE_2__* %30, i32 %33, i32 %36, i64 %37)
  ret void
}

declare dso_local i32 @sg_copy_to_buffer(%struct.TYPE_2__*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
