; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_bus_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_bus_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SDHCI_HOST_CONTROL = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@SDHCI_CTRL_4BITBUS = common dso_local global i32 0, align 4
@SDHCI_CTRL_8BITBUS = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_set_bus_width(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %7 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %8 = call i32 @sdhci_readb(%struct.sdhci_host* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MMC_BUS_WIDTH_8, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* @SDHCI_CTRL_4BITBUS, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @SDHCI_CTRL_8BITBUS, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %48

20:                                               ; preds = %2
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %22 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load i32, i32* @SDHCI_CTRL_8BITBUS, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %29, %20
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @MMC_BUS_WIDTH_4, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @SDHCI_CTRL_4BITBUS, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %47

42:                                               ; preds = %34
  %43 = load i32, i32* @SDHCI_CTRL_4BITBUS, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %38
  br label %48

48:                                               ; preds = %47, %12
  %49 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %52 = call i32 @sdhci_writeb(%struct.sdhci_host* %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @sdhci_readb(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writeb(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
