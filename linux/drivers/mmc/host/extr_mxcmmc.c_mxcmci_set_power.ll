; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxcmci_host = type { i64, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, i32)* }

@MMC_POWER_UP = common dso_local global i64 0, align 8
@MMC_POWER_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxcmci_host*, i32)* @mxcmci_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxcmci_set_power(%struct.mxcmci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mxcmci_host*, align 8
  %4 = alloca i32, align 4
  store %struct.mxcmci_host* %0, %struct.mxcmci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %6 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %5, i32 0, i32 1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @IS_ERR(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %50, label %13

13:                                               ; preds = %2
  %14 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %15 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MMC_POWER_UP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %21 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %24 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @mmc_regulator_set_ocr(%struct.TYPE_7__* %22, i32 %28, i32 %29)
  br label %49

31:                                               ; preds = %13
  %32 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %33 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MMC_POWER_OFF, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %39 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %42 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mmc_regulator_set_ocr(%struct.TYPE_7__* %40, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %37, %31
  br label %49

49:                                               ; preds = %48, %19
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %52 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %57 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32 (i32, i32)*, i32 (i32, i32)** %59, align 8
  %61 = icmp ne i32 (i32, i32)* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %64 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32 (i32, i32)*, i32 (i32, i32)** %66, align 8
  %68 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %69 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = call i32 @mmc_dev(%struct.TYPE_7__* %70)
  %72 = load i32, i32* %4, align 4
  %73 = call i32 %67(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %62, %55, %50
  ret void
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @mmc_regulator_set_ocr(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
