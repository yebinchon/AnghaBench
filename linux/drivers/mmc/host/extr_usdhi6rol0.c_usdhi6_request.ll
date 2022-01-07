; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usdhi6_host = type { i32*, %struct.mmc_request*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @usdhi6_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usdhi6_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.usdhi6_host*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.usdhi6_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.usdhi6_host* %8, %struct.usdhi6_host** %5, align 8
  %9 = load %struct.usdhi6_host*, %struct.usdhi6_host** %5, align 8
  %10 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %9, i32 0, i32 2
  %11 = call i32 @cancel_delayed_work_sync(i32* %10)
  %12 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %13 = load %struct.usdhi6_host*, %struct.usdhi6_host** %5, align 8
  %14 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %13, i32 0, i32 1
  store %struct.mmc_request* %12, %struct.mmc_request** %14, align 8
  %15 = load %struct.usdhi6_host*, %struct.usdhi6_host** %5, align 8
  %16 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.usdhi6_host*, %struct.usdhi6_host** %5, align 8
  %18 = call i32 @usdhi6_timeout_set(%struct.usdhi6_host* %17)
  %19 = load %struct.usdhi6_host*, %struct.usdhi6_host** %5, align 8
  %20 = call i32 @usdhi6_rq_start(%struct.usdhi6_host* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.usdhi6_host*, %struct.usdhi6_host** %5, align 8
  %30 = call i32 @usdhi6_request_done(%struct.usdhi6_host* %29)
  br label %31

31:                                               ; preds = %23, %2
  ret void
}

declare dso_local %struct.usdhi6_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @usdhi6_timeout_set(%struct.usdhi6_host*) #1

declare dso_local i32 @usdhi6_rq_start(%struct.usdhi6_host*) #1

declare dso_local i32 @usdhi6_request_done(%struct.usdhi6_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
