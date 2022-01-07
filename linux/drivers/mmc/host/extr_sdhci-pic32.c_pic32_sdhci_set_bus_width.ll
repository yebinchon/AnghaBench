; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pic32.c_pic32_sdhci_set_bus_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pic32.c_pic32_sdhci_set_bus_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }

@SDHCI_HOST_CONTROL = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@SDHCI_CTRL_4BITBUS = common dso_local global i32 0, align 4
@SDHCI_SPEC_300 = common dso_local global i64 0, align 8
@SDHCI_CTRL_8BITBUS = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@SDHCI_CTRL_CDTLVL = common dso_local global i32 0, align 4
@SDHCI_CTRL_CDSSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @pic32_sdhci_set_bus_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pic32_sdhci_set_bus_width(%struct.sdhci_host* %0, i32 %1) #0 {
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
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load i32, i32* @SDHCI_CTRL_4BITBUS, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %18 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SDHCI_SPEC_300, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load i32, i32* @SDHCI_CTRL_8BITBUS, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %12
  br label %52

27:                                               ; preds = %2
  %28 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %29 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SDHCI_SPEC_300, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* @SDHCI_CTRL_8BITBUS, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %27
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MMC_BUS_WIDTH_4, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @SDHCI_CTRL_4BITBUS, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %51

46:                                               ; preds = %38
  %47 = load i32, i32* @SDHCI_CTRL_4BITBUS, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %42
  br label %52

52:                                               ; preds = %51, %26
  %53 = load i32, i32* @SDHCI_CTRL_CDTLVL, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @SDHCI_CTRL_CDSSEL, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %63 = call i32 @sdhci_writeb(%struct.sdhci_host* %60, i32 %61, i32 %62)
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
