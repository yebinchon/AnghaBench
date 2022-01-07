; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_request_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_request_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32, i32*, i64, i32, i64 }
%struct.mmc_request = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*, %struct.mmc_request*)* @omap_hsmmc_request_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_request_done(%struct.omap_hsmmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %7, i32 0, i32 4
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %17 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %16, i32 0, i32 4
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %21 = call i32 @omap_hsmmc_disable_irq(%struct.omap_hsmmc_host* %20)
  %22 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %28 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %43

35:                                               ; preds = %31, %26, %2
  %36 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %37 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %42 = call i32 @mmc_request_done(i32 %40, %struct.mmc_request* %41)
  br label %43

43:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @omap_hsmmc_disable_irq(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
