; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c___sdhci_adma_write_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c___sdhci_adma_write_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sdhci_host*, i8**, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i8**, i32, i32, i32)* @__sdhci_adma_write_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sdhci_adma_write_desc(%struct.sdhci_host* %0, i8** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %12 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.sdhci_host*, i8**, i32, i32, i32)*, i32 (%struct.sdhci_host*, i8**, i32, i32, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.sdhci_host*, i8**, i32, i32, i32)* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %5
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %19 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.sdhci_host*, i8**, i32, i32, i32)*, i32 (%struct.sdhci_host*, i8**, i32, i32, i32)** %21, align 8
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %24 = load i8**, i8*** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 %22(%struct.sdhci_host* %23, i8** %24, i32 %25, i32 %26, i32 %27)
  br label %36

29:                                               ; preds = %5
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %31 = load i8**, i8*** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @sdhci_adma_write_desc(%struct.sdhci_host* %30, i8** %31, i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %17
  ret void
}

declare dso_local i32 @sdhci_adma_write_desc(%struct.sdhci_host*, i8**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
