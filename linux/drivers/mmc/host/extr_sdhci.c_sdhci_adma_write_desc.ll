; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_adma_write_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_adma_write_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32 }
%struct.sdhci_adma2_64_desc = type { i8*, i8*, i8*, i8* }

@SDHCI_USE_64_BIT_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_adma_write_desc(%struct.sdhci_host* %0, i8** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sdhci_adma2_64_desc*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i8**, i8*** %7, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.sdhci_adma2_64_desc*
  store %struct.sdhci_adma2_64_desc* %14, %struct.sdhci_adma2_64_desc** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i8* @cpu_to_le16(i32 %15)
  %17 = load %struct.sdhci_adma2_64_desc*, %struct.sdhci_adma2_64_desc** %11, align 8
  %18 = getelementptr inbounds %struct.sdhci_adma2_64_desc, %struct.sdhci_adma2_64_desc* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = load %struct.sdhci_adma2_64_desc*, %struct.sdhci_adma2_64_desc** %11, align 8
  %22 = getelementptr inbounds %struct.sdhci_adma2_64_desc, %struct.sdhci_adma2_64_desc* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @lower_32_bits(i32 %23)
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = load %struct.sdhci_adma2_64_desc*, %struct.sdhci_adma2_64_desc** %11, align 8
  %27 = getelementptr inbounds %struct.sdhci_adma2_64_desc, %struct.sdhci_adma2_64_desc* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %29 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SDHCI_USE_64_BIT_DMA, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %5
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @upper_32_bits(i32 %35)
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = load %struct.sdhci_adma2_64_desc*, %struct.sdhci_adma2_64_desc** %11, align 8
  %39 = getelementptr inbounds %struct.sdhci_adma2_64_desc, %struct.sdhci_adma2_64_desc* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %34, %5
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8**, i8*** %7, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = sext i32 %43 to i64
  %47 = getelementptr i8, i8* %45, i64 %46
  store i8* %47, i8** %44, align 8
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
