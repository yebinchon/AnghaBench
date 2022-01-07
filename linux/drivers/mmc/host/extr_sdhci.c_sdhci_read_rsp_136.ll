; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_read_rsp_136.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_read_rsp_136.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.mmc_command = type { i32* }

@SDHCI_RESPONSE = common dso_local global i32 0, align 4
@SDHCI_QUIRK2_RSP_136_HAS_CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, %struct.mmc_command*)* @sdhci_read_rsp_136 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_read_rsp_136(%struct.sdhci_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load i32, i32* @SDHCI_RESPONSE, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 3, %12
  %14 = mul nsw i32 %13, 4
  %15 = add nsw i32 %11, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @sdhci_readl(%struct.sdhci_host* %16, i32 %17)
  %19 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %18, i32* %24, align 4
  br label %25

25:                                               ; preds = %10
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %30 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SDHCI_QUIRK2_RSP_136_HAS_CRC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %73

36:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %70, %36
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %73

40:                                               ; preds = %37
  %41 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %51, label %69

51:                                               ; preds = %40
  %52 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %53 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 24
  %61 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %62 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %60
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %51, %40
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %37

73:                                               ; preds = %35, %37
  ret void
}

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
