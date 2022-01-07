; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_moxart-mmc.c_moxart_init_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_moxart-mmc.c_moxart_init_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxart_host = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.mmc_data = type { i32, %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.moxart_host*, %struct.mmc_data*)* @moxart_init_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxart_init_sg(%struct.moxart_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.moxart_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  store %struct.moxart_host* %0, %struct.moxart_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %5 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %6 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load %struct.moxart_host*, %struct.moxart_host** %3, align 8
  %9 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %8, i32 0, i32 2
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %9, align 8
  %10 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.moxart_host*, %struct.moxart_host** %3, align 8
  %14 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.moxart_host*, %struct.moxart_host** %3, align 8
  %16 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.moxart_host*, %struct.moxart_host** %3, align 8
  %21 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.moxart_host*, %struct.moxart_host** %3, align 8
  %23 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.moxart_host*, %struct.moxart_host** %3, align 8
  %26 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.moxart_host*, %struct.moxart_host** %3, align 8
  %31 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.moxart_host*, %struct.moxart_host** %3, align 8
  %34 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
