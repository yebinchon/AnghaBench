; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tmio_mmc_host = type { i32, %struct.mmc_request*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"request not null\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @tmio_mmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.tmio_mmc_host*, align 8
  %6 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.tmio_mmc_host* %8, %struct.tmio_mmc_host** %5, align 8
  %9 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %10 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %14 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %13, i32 0, i32 1
  %15 = load %struct.mmc_request*, %struct.mmc_request** %14, align 8
  %16 = icmp ne %struct.mmc_request* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %20 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %19, i32 0, i32 1
  %21 = load %struct.mmc_request*, %struct.mmc_request** %20, align 8
  %22 = call i64 @IS_ERR(%struct.mmc_request* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %17
  %25 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %26 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  %31 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %32 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %36 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %37 = call i32 @mmc_request_done(%struct.mmc_host* %35, %struct.mmc_request* %36)
  br label %54

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i32, i32* @jiffies, align 4
  %41 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %42 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = call i32 (...) @wmb()
  %44 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %45 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %46 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %45, i32 0, i32 1
  store %struct.mmc_request* %44, %struct.mmc_request** %46, align 8
  %47 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %48 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %47, i32 0, i32 0
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %52 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %53 = call i32 @tmio_process_mrq(%struct.tmio_mmc_host* %51, %struct.mmc_request* %52)
  br label %54

54:                                               ; preds = %39, %24
  ret void
}

declare dso_local %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @IS_ERR(%struct.mmc_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @tmio_process_mrq(%struct.tmio_mmc_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
