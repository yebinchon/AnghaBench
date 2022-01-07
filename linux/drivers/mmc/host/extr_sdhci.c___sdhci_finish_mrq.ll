; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c___sdhci_finish_mrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c___sdhci_finish_mrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, %struct.mmc_request**, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.mmc_request* }
%struct.TYPE_5__ = type { %struct.mmc_request* }
%struct.TYPE_4__ = type { %struct.mmc_request* }
%struct.mmc_request = type { i32 }

@SDHCI_MAX_MRQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, %struct.mmc_request*)* @__sdhci_finish_mrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sdhci_finish_mrq(%struct.sdhci_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %7 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %6, i32 0, i32 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %12 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.mmc_request*, %struct.mmc_request** %14, align 8
  %16 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %17 = icmp eq %struct.mmc_request* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %20 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %19, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %20, align 8
  br label %21

21:                                               ; preds = %18, %10, %2
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %23 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %28 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.mmc_request*, %struct.mmc_request** %30, align 8
  %32 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %33 = icmp eq %struct.mmc_request* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %36 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %35, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %36, align 8
  br label %37

37:                                               ; preds = %34, %26, %21
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %39 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = icmp ne %struct.TYPE_6__* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %44 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.mmc_request*, %struct.mmc_request** %46, align 8
  %48 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %49 = icmp eq %struct.mmc_request* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %52 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %51, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %52, align 8
  br label %53

53:                                               ; preds = %50, %42, %37
  %54 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %55 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %56 = call i64 @sdhci_needs_reset(%struct.sdhci_host* %54, %struct.mmc_request* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %60 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %53
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %79, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @SDHCI_MAX_MRQS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %68 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %67, i32 0, i32 1
  %69 = load %struct.mmc_request**, %struct.mmc_request*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.mmc_request*, %struct.mmc_request** %69, i64 %71
  %73 = load %struct.mmc_request*, %struct.mmc_request** %72, align 8
  %74 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %75 = icmp eq %struct.mmc_request* %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = call i32 @WARN_ON(i32 1)
  br label %123

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %62

82:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %105, %82
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @SDHCI_MAX_MRQS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %83
  %88 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %89 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %88, i32 0, i32 1
  %90 = load %struct.mmc_request**, %struct.mmc_request*** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.mmc_request*, %struct.mmc_request** %90, i64 %92
  %94 = load %struct.mmc_request*, %struct.mmc_request** %93, align 8
  %95 = icmp ne %struct.mmc_request* %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %87
  %97 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %98 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %99 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %98, i32 0, i32 1
  %100 = load %struct.mmc_request**, %struct.mmc_request*** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.mmc_request*, %struct.mmc_request** %100, i64 %102
  store %struct.mmc_request* %97, %struct.mmc_request** %103, align 8
  br label %108

104:                                              ; preds = %87
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %83

108:                                              ; preds = %96, %83
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @SDHCI_MAX_MRQS, align 4
  %111 = icmp sge i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @WARN_ON(i32 %112)
  %114 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %115 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %116 = call i32 @sdhci_del_timer(%struct.sdhci_host* %114, %struct.mmc_request* %115)
  %117 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %118 = call i32 @sdhci_has_requests(%struct.sdhci_host* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %108
  %121 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %122 = call i32 @sdhci_led_deactivate(%struct.sdhci_host* %121)
  br label %123

123:                                              ; preds = %76, %120, %108
  ret void
}

declare dso_local i64 @sdhci_needs_reset(%struct.sdhci_host*, %struct.mmc_request*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sdhci_del_timer(%struct.sdhci_host*, %struct.mmc_request*) #1

declare dso_local i32 @sdhci_has_requests(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_led_deactivate(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
