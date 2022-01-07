; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_request_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_request_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { i32, i32*, i32*, i32, i64 }
%struct.mmc_request = type { i32 }

@MMCICOMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmci_host*, %struct.mmc_request*)* @mmci_request_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmci_request_end(%struct.mmci_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmci_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  store %struct.mmci_host* %0, %struct.mmci_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %5 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %6 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MMCICOMMAND, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 0, i64 %9)
  %11 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %12 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %16 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %18 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %20 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %23 = call i32 @mmc_request_done(i32 %21, %struct.mmc_request* %22)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
