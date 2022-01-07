; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_finish_request_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_finish_request_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.cb710_mmc_reader = type { %struct.mmc_request* }
%struct.mmc_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @cb710_mmc_finish_request_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb710_mmc_finish_request_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.cb710_mmc_reader*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.mmc_host*
  store %struct.mmc_host* %8, %struct.mmc_host** %3, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call %struct.cb710_mmc_reader* @mmc_priv(%struct.mmc_host* %9)
  store %struct.cb710_mmc_reader* %10, %struct.cb710_mmc_reader** %4, align 8
  %11 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %4, align 8
  %12 = getelementptr inbounds %struct.cb710_mmc_reader, %struct.cb710_mmc_reader* %11, i32 0, i32 0
  %13 = load %struct.mmc_request*, %struct.mmc_request** %12, align 8
  store %struct.mmc_request* %13, %struct.mmc_request** %5, align 8
  %14 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %4, align 8
  %15 = getelementptr inbounds %struct.cb710_mmc_reader, %struct.cb710_mmc_reader* %14, i32 0, i32 0
  store %struct.mmc_request* null, %struct.mmc_request** %15, align 8
  %16 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %17 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %18 = call i32 @mmc_request_done(%struct.mmc_host* %16, %struct.mmc_request* %17)
  ret void
}

declare dso_local %struct.cb710_mmc_reader* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
