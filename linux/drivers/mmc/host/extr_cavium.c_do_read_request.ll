; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_do_read_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_do_read_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SG_MITER_ATOMIC = common dso_local global i32 0, align 4
@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cvm_mmc_host*, %struct.mmc_request*)* @do_read_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_read_request(%struct.cvm_mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.cvm_mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  store %struct.cvm_mmc_host* %0, %struct.cvm_mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %5 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %6 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %5, i32 0, i32 0
  %7 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %8 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SG_MITER_ATOMIC, align 4
  %18 = load i32, i32* @SG_MITER_TO_SG, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @sg_miter_start(i32* %6, i32 %11, i32 %16, i32 %19)
  ret void
}

declare dso_local i32 @sg_miter_start(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
