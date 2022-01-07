; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_get_next_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_get_next_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mmci_host*, %struct.mmc_data*)* }
%struct.mmc_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmci_get_next_data(%struct.mmci_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.mmci_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  store %struct.mmci_host* %0, %struct.mmci_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %5 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %6 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %14 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br label %17

17:                                               ; preds = %9, %2
  %18 = phi i1 [ false, %2 ], [ %16, %9 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %22 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %17
  %26 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %27 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.mmci_host*, %struct.mmc_data*)*, i32 (%struct.mmci_host*, %struct.mmc_data*)** %29, align 8
  %31 = icmp ne i32 (%struct.mmci_host*, %struct.mmc_data*)* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %34 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.mmci_host*, %struct.mmc_data*)*, i32 (%struct.mmci_host*, %struct.mmc_data*)** %36, align 8
  %38 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %39 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %40 = call i32 %37(%struct.mmci_host* %38, %struct.mmc_data* %39)
  br label %41

41:                                               ; preds = %32, %25, %17
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
