; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_adma_show_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_adma_show_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i64, i64, i8* }
%struct.sdhci_adma2_64_desc = type { i32, i32, i32, i32 }

@SDHCI_USE_64_BIT_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%08llx: DMA 0x%08x%08x, LEN 0x%04x, Attr=0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%08llx: DMA 0x%08x, LEN 0x%04x, Attr=0x%02x\0A\00", align 1
@ADMA2_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_adma_show_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_adma_show_error(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sdhci_adma2_64_desc*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %7 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %6, i32 0, i32 3
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %10 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %13 = call i32 @sdhci_dumpregs(%struct.sdhci_host* %12)
  br label %14

14:                                               ; preds = %1, %76
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.sdhci_adma2_64_desc*
  store %struct.sdhci_adma2_64_desc* %16, %struct.sdhci_adma2_64_desc** %5, align 8
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %18 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SDHCI_USE_64_BIT_DMA, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %14
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.sdhci_adma2_64_desc*, %struct.sdhci_adma2_64_desc** %5, align 8
  %26 = getelementptr inbounds %struct.sdhci_adma2_64_desc, %struct.sdhci_adma2_64_desc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = load %struct.sdhci_adma2_64_desc*, %struct.sdhci_adma2_64_desc** %5, align 8
  %30 = getelementptr inbounds %struct.sdhci_adma2_64_desc, %struct.sdhci_adma2_64_desc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = load %struct.sdhci_adma2_64_desc*, %struct.sdhci_adma2_64_desc** %5, align 8
  %34 = getelementptr inbounds %struct.sdhci_adma2_64_desc, %struct.sdhci_adma2_64_desc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  %37 = load %struct.sdhci_adma2_64_desc*, %struct.sdhci_adma2_64_desc** %5, align 8
  %38 = getelementptr inbounds %struct.sdhci_adma2_64_desc, %struct.sdhci_adma2_64_desc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = call i32 (i8*, i64, i32, i32, i32, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %28, i32 %32, i32 %36, i32 %40)
  br label %57

42:                                               ; preds = %14
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.sdhci_adma2_64_desc*, %struct.sdhci_adma2_64_desc** %5, align 8
  %45 = getelementptr inbounds %struct.sdhci_adma2_64_desc, %struct.sdhci_adma2_64_desc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = load %struct.sdhci_adma2_64_desc*, %struct.sdhci_adma2_64_desc** %5, align 8
  %49 = getelementptr inbounds %struct.sdhci_adma2_64_desc, %struct.sdhci_adma2_64_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = load %struct.sdhci_adma2_64_desc*, %struct.sdhci_adma2_64_desc** %5, align 8
  %53 = getelementptr inbounds %struct.sdhci_adma2_64_desc, %struct.sdhci_adma2_64_desc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  %56 = call i32 (i8*, i64, i32, i32, i32, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %43, i32 %47, i32 %51, i32 %55)
  br label %57

57:                                               ; preds = %42, %23
  %58 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %59 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = getelementptr i8, i8* %61, i64 %60
  store i8* %62, i8** %3, align 8
  %63 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %64 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %4, align 8
  %68 = load %struct.sdhci_adma2_64_desc*, %struct.sdhci_adma2_64_desc** %5, align 8
  %69 = getelementptr inbounds %struct.sdhci_adma2_64_desc, %struct.sdhci_adma2_64_desc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ADMA2_END, align 4
  %72 = call i32 @cpu_to_le16(i32 %71)
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %57
  br label %77

76:                                               ; preds = %57
  br label %14

77:                                               ; preds = %75
  ret void
}

declare dso_local i32 @sdhci_dumpregs(%struct.sdhci_host*) #1

declare dso_local i32 @SDHCI_DUMP(i8*, i64, i32, i32, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
