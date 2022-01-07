; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_request_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_request_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_host = type { i32, i64, i32, i32*, i32 }
%struct.mmc_request = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdc_host*, %struct.mmc_request*)* @msdc_request_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_request_done(%struct.msdc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.msdc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.msdc_host* %0, %struct.msdc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %8 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %7, i32 0, i32 4
  %9 = call i32 @cancel_delayed_work(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %54

13:                                               ; preds = %2
  %14 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %15 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %14, i32 0, i32 2
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %19 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %21 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %20, i32 0, i32 2
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %25 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @msdc_track_cmd_data(%struct.msdc_host* %24, i32 %27, i64 %30)
  %32 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %33 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %13
  %37 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %38 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %39 = call i32 @msdc_unprepare_data(%struct.msdc_host* %37, %struct.mmc_request* %38)
  br label %40

40:                                               ; preds = %36, %13
  %41 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %42 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %47 = call i32 @msdc_reset_hw(%struct.msdc_host* %46)
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %50 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %53 = call i32 @mmc_request_done(i32 %51, %struct.mmc_request* %52)
  br label %54

54:                                               ; preds = %48, %12
  ret void
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msdc_track_cmd_data(%struct.msdc_host*, i32, i64) #1

declare dso_local i32 @msdc_unprepare_data(%struct.msdc_host*, %struct.mmc_request*) #1

declare dso_local i32 @msdc_reset_hw(%struct.msdc_host*) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
