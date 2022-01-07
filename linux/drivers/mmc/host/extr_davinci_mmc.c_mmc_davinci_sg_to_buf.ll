; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_sg_to_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_sg_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_davinci_host = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_davinci_host*)* @mmc_davinci_sg_to_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_davinci_sg_to_buf(%struct.mmc_davinci_host* %0) #0 {
  %2 = alloca %struct.mmc_davinci_host*, align 8
  store %struct.mmc_davinci_host* %0, %struct.mmc_davinci_host** %2, align 8
  %3 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %4 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @sg_dma_len(i32 %5)
  %7 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %8 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %7, i32 0, i32 0
  store i64 %6, i64* %8, align 8
  %9 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %10 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @sg_virt(i32 %11)
  %13 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %14 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %16 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %19 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %24 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %27 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %22, %1
  ret void
}

declare dso_local i64 @sg_dma_len(i32) #1

declare dso_local i32 @sg_virt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
