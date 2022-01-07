; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_finish_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_finish_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, %struct.mmc_command*, %struct.mmc_command*, %struct.mmc_data* }
%struct.mmc_command = type { i32 }
%struct.mmc_data = type { i32, i32, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4
@SDHCI_REQ_USE_DMA = common dso_local global i32 0, align 4
@SDHCI_USE_ADMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_finish_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_finish_data(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.mmc_command*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %5 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %6 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %5, i32 0, i32 2
  %7 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  store %struct.mmc_command* %7, %struct.mmc_command** %3, align 8
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %9 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %8, i32 0, i32 3
  %10 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  store %struct.mmc_data* %10, %struct.mmc_data** %4, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %12 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %11, i32 0, i32 3
  store %struct.mmc_data* null, %struct.mmc_data** %12, align 8
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 2
  store %struct.mmc_command* null, %struct.mmc_command** %14, align 8
  %15 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %1
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %21 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %20, i32 0, i32 1
  %22 = load %struct.mmc_command*, %struct.mmc_command** %21, align 8
  %23 = icmp ne %struct.mmc_command* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %26 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %25, i32 0, i32 1
  %27 = load %struct.mmc_command*, %struct.mmc_command** %26, align 8
  %28 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %29 = icmp eq %struct.mmc_command* %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24, %19
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %32 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %33 = call i32 @sdhci_do_reset(%struct.sdhci_host* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %36 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %37 = call i32 @sdhci_do_reset(%struct.sdhci_host* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %1
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %40 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SDHCI_REQ_USE_DMA, align 4
  %43 = load i32, i32* @SDHCI_USE_ADMA, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = load i32, i32* @SDHCI_REQ_USE_DMA, align 4
  %47 = load i32, i32* @SDHCI_USE_ADMA, align 4
  %48 = or i32 %46, %47
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %52 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %53 = call i32 @sdhci_adma_table_post(%struct.sdhci_host* %51, %struct.mmc_data* %52)
  br label %54

54:                                               ; preds = %50, %38
  %55 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %56 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %61 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  br label %72

62:                                               ; preds = %54
  %63 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %67 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %65, %68
  %70 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %71 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %62, %59
  %73 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %74 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %111

77:                                               ; preds = %72
  %78 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %79 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %77
  %83 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %84 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %111, label %89

89:                                               ; preds = %82, %77
  %90 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %91 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %90, i32 0, i32 3
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %98 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %99 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %98, i32 0, i32 3
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = call i32 @__sdhci_finish_mrq(%struct.sdhci_host* %97, %struct.TYPE_2__* %100)
  br label %110

102:                                              ; preds = %89
  %103 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %104 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %103, i32 0, i32 1
  store %struct.mmc_command* null, %struct.mmc_command** %104, align 8
  %105 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %106 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %107 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @sdhci_send_command(%struct.sdhci_host* %105, i64 %108)
  br label %110

110:                                              ; preds = %102, %96
  br label %117

111:                                              ; preds = %82, %72
  %112 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %113 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %114 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %113, i32 0, i32 3
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = call i32 @__sdhci_finish_mrq(%struct.sdhci_host* %112, %struct.TYPE_2__* %115)
  br label %117

117:                                              ; preds = %111, %110
  ret void
}

declare dso_local i32 @sdhci_do_reset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_adma_table_post(%struct.sdhci_host*, %struct.mmc_data*) #1

declare dso_local i32 @__sdhci_finish_mrq(%struct.sdhci_host*, %struct.TYPE_2__*) #1

declare dso_local i32 @sdhci_send_command(%struct.sdhci_host*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
