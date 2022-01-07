; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_finish_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_finish_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshsd_host = type { i32, i32*, i32*, %struct.mmc_request* }
%struct.mmc_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.toshsd_host*)* @toshsd_finish_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshsd_finish_request(%struct.toshsd_host* %0) #0 {
  %2 = alloca %struct.toshsd_host*, align 8
  %3 = alloca %struct.mmc_request*, align 8
  store %struct.toshsd_host* %0, %struct.toshsd_host** %2, align 8
  %4 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %5 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %4, i32 0, i32 3
  %6 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  store %struct.mmc_request* %6, %struct.mmc_request** %3, align 8
  %7 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %8 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %7, i32 0, i32 3
  store %struct.mmc_request* null, %struct.mmc_request** %8, align 8
  %9 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %10 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %9, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %12 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %14 = call i32 @toshsd_set_led(%struct.toshsd_host* %13, i32 0)
  %15 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %16 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %19 = call i32 @mmc_request_done(i32 %17, %struct.mmc_request* %18)
  ret void
}

declare dso_local i32 @toshsd_set_led(%struct.toshsd_host*, i32) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
