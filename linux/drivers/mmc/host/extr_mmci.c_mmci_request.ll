; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mmci_host = type { i32, %struct.TYPE_6__*, %struct.mmc_request* }
%struct.TYPE_6__ = type { i64 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @mmci_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmci_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mmci_host*, align 8
  %6 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.mmci_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.mmci_host* %8, %struct.mmci_host** %5, align 8
  %9 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %10 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %9, i32 0, i32 2
  %11 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %12 = icmp ne %struct.mmc_request* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %16 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = call i32 @mmci_validate_data(%struct.mmci_host* %15, %struct.TYPE_7__* %18)
  %20 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %32 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %33 = call i32 @mmc_request_done(%struct.mmc_host* %31, %struct.mmc_request* %32)
  br label %101

34:                                               ; preds = %2
  %35 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %36 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %35, i32 0, i32 0
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %40 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %41 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %40, i32 0, i32 2
  store %struct.mmc_request* %39, %struct.mmc_request** %41, align 8
  %42 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %48 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %49 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i32 @mmci_get_next_data(%struct.mmci_host* %47, %struct.TYPE_7__* %50)
  br label %52

52:                                               ; preds = %46, %34
  %53 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = icmp ne %struct.TYPE_7__* %55, null
  br i1 %56, label %57, label %79

57:                                               ; preds = %52
  %58 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %59 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %57
  %65 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %66 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MMC_DATA_READ, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %64, %57
  %74 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %75 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %76 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %75, i32 0, i32 2
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = call i32 @mmci_start_data(%struct.mmci_host* %74, %struct.TYPE_7__* %77)
  br label %79

79:                                               ; preds = %73, %64, %52
  %80 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %81 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = icmp ne %struct.TYPE_8__* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %86 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %87 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = call i32 @mmci_start_command(%struct.mmci_host* %85, %struct.TYPE_8__* %88, i32 0)
  br label %96

90:                                               ; preds = %79
  %91 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %92 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %93 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = call i32 @mmci_start_command(%struct.mmci_host* %91, %struct.TYPE_8__* %94, i32 0)
  br label %96

96:                                               ; preds = %90, %84
  %97 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %98 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %97, i32 0, i32 0
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  br label %101

101:                                              ; preds = %96, %30
  ret void
}

declare dso_local %struct.mmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mmci_validate_data(%struct.mmci_host*, %struct.TYPE_7__*) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mmci_get_next_data(%struct.mmci_host*, %struct.TYPE_7__*) #1

declare dso_local i32 @mmci_start_data(%struct.mmci_host*, %struct.TYPE_7__*) #1

declare dso_local i32 @mmci_start_command(%struct.mmci_host*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
