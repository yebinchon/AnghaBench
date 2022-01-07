; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_transfer_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_transfer_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@SDHCI_DATA_AVAILABLE = common dso_local global i32 0, align 4
@SDHCI_SPACE_AVAILABLE = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_SMALL_PIO = common dso_local global i32 0, align 4
@SDHCI_PRESENT_STATE = common dso_local global i32 0, align 4
@SDHCI_QUIRK_PIO_NEEDS_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"PIO transfer complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_transfer_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_transfer_pio(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %4 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %5 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %82

9:                                                ; preds = %1
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %11 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MMC_DATA_READ, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i32, i32* @SDHCI_DATA_AVAILABLE, align 4
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %9
  %21 = load i32, i32* @SDHCI_SPACE_AVAILABLE, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %24 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SDHCI_QUIRK_BROKEN_SMALL_PIO, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %31 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %29, %22
  br label %38

38:                                               ; preds = %79, %37
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %40 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %41 = call i32 @sdhci_readl(%struct.sdhci_host* %39, i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %38
  %46 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %47 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SDHCI_QUIRK_PIO_NEEDS_DELAY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 @udelay(i32 100)
  br label %54

54:                                               ; preds = %52, %45
  %55 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %56 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MMC_DATA_READ, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %65 = call i32 @sdhci_read_block_pio(%struct.sdhci_host* %64)
  br label %69

66:                                               ; preds = %54
  %67 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %68 = call i32 @sdhci_write_block_pio(%struct.sdhci_host* %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %71 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %75 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %80

79:                                               ; preds = %69
  br label %38

80:                                               ; preds = %78, %38
  %81 = call i32 @DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %8
  ret void
}

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sdhci_read_block_pio(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_write_block_pio(%struct.sdhci_host*) #1

declare dso_local i32 @DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
