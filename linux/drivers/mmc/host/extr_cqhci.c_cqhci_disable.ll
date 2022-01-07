; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.cqhci_host* }
%struct.cqhci_host = type { i32, i32*, i32*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @cqhci_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cqhci_disable(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.cqhci_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 0
  %6 = load %struct.cqhci_host*, %struct.cqhci_host** %5, align 8
  store %struct.cqhci_host* %6, %struct.cqhci_host** %3, align 8
  %7 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %8 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %14 = call i32 @cqhci_off(%struct.mmc_host* %13)
  %15 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %16 = call i32 @__cqhci_disable(%struct.cqhci_host* %15)
  %17 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %18 = call i32 @mmc_dev(%struct.mmc_host* %17)
  %19 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %20 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %23 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %26 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dmam_free_coherent(i32 %18, i32 %21, i32* %24, i32 %27)
  %29 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %30 = call i32 @mmc_dev(%struct.mmc_host* %29)
  %31 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %32 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %35 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %38 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dmam_free_coherent(i32 %30, i32 %33, i32* %36, i32 %39)
  %41 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %42 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %44 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %46 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  br label %47

47:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @cqhci_off(%struct.mmc_host*) #1

declare dso_local i32 @__cqhci_disable(%struct.cqhci_host*) #1

declare dso_local i32 @dmam_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
