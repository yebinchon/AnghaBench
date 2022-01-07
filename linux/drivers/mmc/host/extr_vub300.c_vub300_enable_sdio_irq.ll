; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_enable_sdio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_enable_sdio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.vub300_mmc_host = type { i32, i32, i32, i64, i32, i64, i32 }

@vub300_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i32)* @vub300_enable_sdio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vub300_enable_sdio_irq(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vub300_mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.vub300_mmc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.vub300_mmc_host* %7, %struct.vub300_mmc_host** %5, align 8
  %8 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %9 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %73

13:                                               ; preds = %2
  %14 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %15 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %14, i32 0, i32 1
  %16 = call i32 @kref_get(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %13
  %20 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %21 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %24 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %29 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %33 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mmc_signal_sdio_irq(i32 %34)
  br label %61

36:                                               ; preds = %19
  %37 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %38 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %43 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %45 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %47 = call i32 @vub300_queue_poll_work(%struct.vub300_mmc_host* %46, i32 0)
  br label %60

48:                                               ; preds = %36
  %49 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %50 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %59

54:                                               ; preds = %48
  %55 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %56 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %58 = call i32 @vub300_queue_poll_work(%struct.vub300_mmc_host* %57, i32 0)
  br label %59

59:                                               ; preds = %54, %53
  br label %60

60:                                               ; preds = %59, %41
  br label %61

61:                                               ; preds = %60, %27
  %62 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %63 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %62, i32 0, i32 2
  %64 = call i32 @mutex_unlock(i32* %63)
  br label %68

65:                                               ; preds = %13
  %66 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %67 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %61
  %69 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %70 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %69, i32 0, i32 1
  %71 = load i32, i32* @vub300_delete, align 4
  %72 = call i32 @kref_put(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %12
  ret void
}

declare dso_local %struct.vub300_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mmc_signal_sdio_irq(i32) #1

declare dso_local i32 @vub300_queue_poll_work(%struct.vub300_mmc_host*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
