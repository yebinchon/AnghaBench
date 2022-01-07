; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_needs_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_needs_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32 }
%struct.mmc_request = type { %struct.TYPE_6__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@SDHCI_DEVICE_DEAD = common dso_local global i32 0, align 4
@SDHCI_QUIRK_RESET_AFTER_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, %struct.mmc_request*)* @sdhci_needs_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_needs_reset(%struct.sdhci_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %5 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %6 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SDHCI_DEVICE_DEAD, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %65, label %11

11:                                               ; preds = %2
  %12 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %17, i32 0, i32 2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %63, label %23

23:                                               ; preds = %16, %11
  %24 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %63, label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %49 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %47, %40, %35
  %57 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %58 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SDHCI_QUIRK_RESET_AFTER_REQUEST, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %56, %47, %28, %16
  %64 = phi i1 [ true, %47 ], [ true, %28 ], [ true, %16 ], [ %62, %56 ]
  br label %65

65:                                               ; preds = %63, %2
  %66 = phi i1 [ false, %2 ], [ %64, %63 ]
  %67 = zext i1 %66 to i32
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
