; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { i32 }
%struct.mmc_omap_slot = type { %struct.mmc_request*, %struct.mmc_omap_host* }
%struct.mmc_omap_host = type { i32, %struct.mmc_host* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @mmc_omap_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mmc_omap_slot*, align 8
  %6 = alloca %struct.mmc_omap_host*, align 8
  %7 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.mmc_omap_slot* @mmc_priv(%struct.mmc_host* %8)
  store %struct.mmc_omap_slot* %9, %struct.mmc_omap_slot** %5, align 8
  %10 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %11 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %10, i32 0, i32 1
  %12 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %11, align 8
  store %struct.mmc_omap_host* %12, %struct.mmc_omap_host** %6, align 8
  %13 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %14 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %18 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %17, i32 0, i32 1
  %19 = load %struct.mmc_host*, %struct.mmc_host** %18, align 8
  %20 = icmp ne %struct.mmc_host* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %23 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %22, i32 0, i32 0
  %24 = load %struct.mmc_request*, %struct.mmc_request** %23, align 8
  %25 = icmp ne %struct.mmc_request* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %29 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %30 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %29, i32 0, i32 0
  store %struct.mmc_request* %28, %struct.mmc_request** %30, align 8
  %31 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %32 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %31, i32 0, i32 0
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  br label %49

35:                                               ; preds = %2
  %36 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %37 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %38 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %37, i32 0, i32 1
  store %struct.mmc_host* %36, %struct.mmc_host** %38, align 8
  br label %39

39:                                               ; preds = %35
  %40 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %41 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %40, i32 0, i32 0
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %45 = call i32 @mmc_omap_select_slot(%struct.mmc_omap_slot* %44, i32 1)
  %46 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %47 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %48 = call i32 @mmc_omap_start_request(%struct.mmc_omap_host* %46, %struct.mmc_request* %47)
  br label %49

49:                                               ; preds = %39, %21
  ret void
}

declare dso_local %struct.mmc_omap_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mmc_omap_select_slot(%struct.mmc_omap_slot*, i32) #1

declare dso_local i32 @mmc_omap_start_request(%struct.mmc_omap_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
