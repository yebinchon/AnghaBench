; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxs-mmc.c_mxs_mmc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxs-mmc.c_mxs_mmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { i32, i32 }
%struct.mxs_mmc_host = type { %struct.mmc_request* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @mxs_mmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_mmc_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mxs_mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.mxs_mmc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.mxs_mmc_host* %7, %struct.mxs_mmc_host** %5, align 8
  %8 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %5, align 8
  %9 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %8, i32 0, i32 0
  %10 = load %struct.mmc_request*, %struct.mmc_request** %9, align 8
  %11 = icmp ne %struct.mmc_request* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %15 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %5, align 8
  %16 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %15, i32 0, i32 0
  store %struct.mmc_request* %14, %struct.mmc_request** %16, align 8
  %17 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %5, align 8
  %23 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %24 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mxs_mmc_start_cmd(%struct.mxs_mmc_host* %22, i32 %25)
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %5, align 8
  %29 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mxs_mmc_start_cmd(%struct.mxs_mmc_host* %28, i32 %31)
  br label %33

33:                                               ; preds = %27, %21
  ret void
}

declare dso_local %struct.mxs_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mxs_mmc_start_cmd(%struct.mxs_mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
