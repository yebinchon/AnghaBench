; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.tmio_mmc_host = type { i32 (%struct.tmio_mmc_host*)*, i32 (%struct.tmio_mmc_host*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @tmio_mmc_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_hw_reset(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.tmio_mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = call %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host* %4)
  store %struct.tmio_mmc_host* %5, %struct.tmio_mmc_host** %3, align 8
  %6 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %6, i32 0, i32 1
  %8 = load i32 (%struct.tmio_mmc_host*)*, i32 (%struct.tmio_mmc_host*)** %7, align 8
  %9 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %10 = call i32 %8(%struct.tmio_mmc_host* %9)
  %11 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %12 = call i32 @tmio_mmc_abort_dma(%struct.tmio_mmc_host* %11)
  %13 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %13, i32 0, i32 0
  %15 = load i32 (%struct.tmio_mmc_host*)*, i32 (%struct.tmio_mmc_host*)** %14, align 8
  %16 = icmp ne i32 (%struct.tmio_mmc_host*)* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %18, i32 0, i32 0
  %20 = load i32 (%struct.tmio_mmc_host*)*, i32 (%struct.tmio_mmc_host*)** %19, align 8
  %21 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %22 = call i32 %20(%struct.tmio_mmc_host* %21)
  br label %23

23:                                               ; preds = %17, %1
  ret void
}

declare dso_local %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @tmio_mmc_abort_dma(%struct.tmio_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
