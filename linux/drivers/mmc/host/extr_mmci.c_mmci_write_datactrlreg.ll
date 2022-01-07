; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_write_datactrlreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_write_datactrlreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MMCIDATACTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmci_host*, i32)* @mmci_write_datactrlreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmci_write_datactrlreg(%struct.mmci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmci_host*, align 8
  %4 = alloca i32, align 4
  store %struct.mmci_host* %0, %struct.mmci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %6 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %9 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %7, %12
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %17 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %24 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %27 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MMCIDATACTRL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  br label %32

32:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
