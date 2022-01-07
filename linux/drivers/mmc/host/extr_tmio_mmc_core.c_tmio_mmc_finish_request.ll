; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_finish_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_finish_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i64, i32, %struct.mmc_request*, i64 (%struct.tmio_mmc_host*)*, i32, i32, i32* }
%struct.mmc_request = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*)* @tmio_mmc_finish_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_finish_request(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca %struct.tmio_mmc_host*, align 8
  %3 = alloca %struct.mmc_request*, align 8
  %4 = alloca i64, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %2, align 8
  %5 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %5, i32 0, i32 4
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %10 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %9, i32 0, i32 2
  %11 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  store %struct.mmc_request* %11, %struct.mmc_request** %3, align 8
  %12 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %13 = call i64 @IS_ERR_OR_NULL(%struct.mmc_request* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %17 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %16, i32 0, i32 4
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  br label %103

20:                                               ; preds = %1
  %21 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %22 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %30 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %32 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %34 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %33, i32 0, i32 2
  store %struct.mmc_request* null, %struct.mmc_request** %34, align 8
  br label %35

35:                                               ; preds = %28, %20
  %36 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %37 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %36, i32 0, i32 5
  %38 = call i32 @cancel_delayed_work(i32* %37)
  %39 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %40 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %39, i32 0, i32 4
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %44 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %35
  %50 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %51 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %56 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54, %35
  %62 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %63 = call i32 @tmio_mmc_abort_dma(%struct.tmio_mmc_host* %62)
  br label %64

64:                                               ; preds = %61, %54, %49
  %65 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %66 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %65, i32 0, i32 3
  %67 = load i64 (%struct.tmio_mmc_host*)*, i64 (%struct.tmio_mmc_host*)** %66, align 8
  %68 = icmp ne i64 (%struct.tmio_mmc_host*)* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %71 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %70, i32 0, i32 3
  %72 = load i64 (%struct.tmio_mmc_host*)*, i64 (%struct.tmio_mmc_host*)** %71, align 8
  %73 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %74 = call i64 %72(%struct.tmio_mmc_host* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %78 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @mmc_retune_needed(i32 %79)
  br label %81

81:                                               ; preds = %76, %69, %64
  %82 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %83 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %82, i32 0, i32 2
  %84 = load %struct.mmc_request*, %struct.mmc_request** %83, align 8
  %85 = icmp ne %struct.mmc_request* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %88 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %86
  %94 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %95 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %96 = call i32 @tmio_process_mrq(%struct.tmio_mmc_host* %94, %struct.mmc_request* %95)
  br label %103

97:                                               ; preds = %86, %81
  %98 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %99 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %102 = call i32 @mmc_request_done(i32 %100, %struct.mmc_request* %101)
  br label %103

103:                                              ; preds = %97, %93, %15
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.mmc_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @tmio_mmc_abort_dma(%struct.tmio_mmc_host*) #1

declare dso_local i32 @mmc_retune_needed(i32) #1

declare dso_local i32 @tmio_process_mrq(%struct.tmio_mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
