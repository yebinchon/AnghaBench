; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.toshsd_host = type { i32, %struct.mmc_request*, i64 }

@SD_CARDSTATUS = common dso_local global i64 0, align 8
@SD_CARD_PRESENT_0 = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @toshsd_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshsd_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.toshsd_host*, align 8
  %6 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.toshsd_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.toshsd_host* %8, %struct.toshsd_host** %5, align 8
  %9 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %10 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SD_CARDSTATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @ioread16(i64 %13)
  %15 = load i32, i32* @SD_CARD_PRESENT_0, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEDIUM, align 4
  %20 = sub nsw i32 0, %19
  %21 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %26 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %27 = call i32 @mmc_request_done(%struct.mmc_host* %25, %struct.mmc_request* %26)
  br label %64

28:                                               ; preds = %2
  %29 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %30 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %29, i32 0, i32 0
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %34 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %33, i32 0, i32 1
  %35 = load %struct.mmc_request*, %struct.mmc_request** %34, align 8
  %36 = icmp ne %struct.mmc_request* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %40 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %41 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %40, i32 0, i32 1
  store %struct.mmc_request* %39, %struct.mmc_request** %41, align 8
  %42 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %28
  %47 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %48 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %49 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @toshsd_start_data(%struct.toshsd_host* %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %28
  %53 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %54 = call i32 @toshsd_set_led(%struct.toshsd_host* %53, i32 1)
  %55 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %56 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %57 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = call i32 @toshsd_start_cmd(%struct.toshsd_host* %55, %struct.TYPE_2__* %58)
  %60 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %61 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %60, i32 0, i32 0
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %52, %18
  ret void
}

declare dso_local %struct.toshsd_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @toshsd_start_data(%struct.toshsd_host*, i32) #1

declare dso_local i32 @toshsd_set_led(%struct.toshsd_host*, i32) #1

declare dso_local i32 @toshsd_start_cmd(%struct.toshsd_host*, %struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
