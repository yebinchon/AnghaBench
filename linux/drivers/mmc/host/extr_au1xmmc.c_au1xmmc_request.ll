; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.au1xmmc_host = type { i64, %struct.mmc_request* }

@HOST_S_IDLE = common dso_local global i64 0, align 8
@HOST_S_CMD = common dso_local global i64 0, align 8
@ENOMEDIUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @au1xmmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xmmc_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.au1xmmc_host*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.au1xmmc_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.au1xmmc_host* %8, %struct.au1xmmc_host** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = call i32 (...) @irqs_disabled()
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %12 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HOST_S_IDLE, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %19 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %20 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %19, i32 0, i32 1
  store %struct.mmc_request* %18, %struct.mmc_request** %20, align 8
  %21 = load i64, i64* @HOST_S_CMD, align 8
  %22 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %23 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %25 = call i64 @au1xmmc_card_inserted(%struct.mmc_host* %24)
  %26 = icmp eq i64 0, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEDIUM, align 4
  %29 = sub nsw i32 0, %28
  %30 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %35 = call i32 @au1xmmc_finish_request(%struct.au1xmmc_host* %34)
  br label %72

36:                                               ; preds = %2
  %37 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %43 = call i32 @FLUSH_FIFO(%struct.au1xmmc_host* %42)
  %44 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %45 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @au1xmmc_prepare_data(%struct.au1xmmc_host* %44, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %41, %36
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %54 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %58 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @au1xmmc_send_command(%struct.au1xmmc_host* %53, i32 0, %struct.TYPE_2__* %56, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %52, %49
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %67 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %71 = call i32 @au1xmmc_finish_request(%struct.au1xmmc_host* %70)
  br label %72

72:                                               ; preds = %27, %64, %61
  ret void
}

declare dso_local %struct.au1xmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i64 @au1xmmc_card_inserted(%struct.mmc_host*) #1

declare dso_local i32 @au1xmmc_finish_request(%struct.au1xmmc_host*) #1

declare dso_local i32 @FLUSH_FIFO(%struct.au1xmmc_host*) #1

declare dso_local i32 @au1xmmc_prepare_data(%struct.au1xmmc_host*, i32) #1

declare dso_local i32 @au1xmmc_send_command(%struct.au1xmmc_host*, i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
