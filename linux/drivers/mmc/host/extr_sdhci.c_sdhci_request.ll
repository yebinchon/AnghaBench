; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mmc_host*)* }
%struct.mmc_request = type { %struct.TYPE_6__*, %struct.TYPE_6__*, i32*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.sdhci_host = type { i32, i32 }

@SDHCI_DEVICE_DEAD = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@SDHCI_AUTO_CMD23 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.sdhci_host* %9, %struct.sdhci_host** %5, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %13, align 8
  %15 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %16 = call i32 %14(%struct.mmc_host* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %18 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %17, i32 0, i32 1
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %22 = call i32 @sdhci_led_activate(%struct.sdhci_host* %21)
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %24 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %25 = call i64 @sdhci_auto_cmd12(%struct.sdhci_host* %23, %struct.mmc_request* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %32, %27
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %45 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SDHCI_DEVICE_DEAD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43, %40
  %51 = load i32, i32* @ENOMEDIUM, align 4
  %52 = sub nsw i32 0, %51
  %53 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %58 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %59 = call i32 @sdhci_finish_mrq(%struct.sdhci_host* %57, %struct.mmc_request* %58)
  br label %85

60:                                               ; preds = %43
  %61 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %62 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = icmp ne %struct.TYPE_6__* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %67 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SDHCI_AUTO_CMD23, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %74 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %75 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = call i32 @sdhci_send_command(%struct.sdhci_host* %73, %struct.TYPE_6__* %76)
  br label %84

78:                                               ; preds = %65, %60
  %79 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %80 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %81 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = call i32 @sdhci_send_command(%struct.sdhci_host* %79, %struct.TYPE_6__* %82)
  br label %84

84:                                               ; preds = %78, %72
  br label %85

85:                                               ; preds = %84, %50
  %86 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %87 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %86, i32 0, i32 1
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sdhci_led_activate(%struct.sdhci_host*) #1

declare dso_local i64 @sdhci_auto_cmd12(%struct.sdhci_host*, %struct.mmc_request*) #1

declare dso_local i32 @sdhci_finish_mrq(%struct.sdhci_host*, %struct.mmc_request*) #1

declare dso_local i32 @sdhci_send_command(%struct.sdhci_host*, %struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
