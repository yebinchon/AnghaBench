; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_post_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_post_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i32 }
%struct.msdc_host = type { i32 }

@MSDC_ASYNC_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*, i32)* @msdc_post_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_post_req(%struct.mmc_host* %0, %struct.mmc_request* %1, i32 %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.msdc_host*, align 8
  %8 = alloca %struct.mmc_data*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = call %struct.msdc_host* @mmc_priv(%struct.mmc_host* %9)
  store %struct.msdc_host* %10, %struct.msdc_host** %7, align 8
  %11 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %12 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %11, i32 0, i32 0
  %13 = load %struct.mmc_data*, %struct.mmc_data** %12, align 8
  store %struct.mmc_data* %13, %struct.mmc_data** %8, align 8
  %14 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %15 = icmp ne %struct.mmc_data* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %32

17:                                               ; preds = %3
  %18 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %19 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load i32, i32* @MSDC_ASYNC_FLAG, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %26 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.msdc_host*, %struct.msdc_host** %7, align 8
  %30 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %31 = call i32 @msdc_unprepare_data(%struct.msdc_host* %29, %struct.mmc_request* %30)
  br label %32

32:                                               ; preds = %16, %22, %17
  ret void
}

declare dso_local %struct.msdc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @msdc_unprepare_data(%struct.msdc_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
