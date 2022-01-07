; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_davinci_host = type { i64, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@DAVINCI_MMCST1 = common dso_local global i64 0, align 8
@MMCST1_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"still BUSY? bad ... \0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @mmc_davinci_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_davinci_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mmc_davinci_host*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.mmc_davinci_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.mmc_davinci_host* %9, %struct.mmc_davinci_host** %5, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = call i64 @msecs_to_jiffies(i32 900)
  %12 = add i64 %10, %11
  store i64 %12, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %30, %2
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @time_before(i64 %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %20 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DAVINCI_MMCST1, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MMCST1_BUSY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %32

30:                                               ; preds = %18
  %31 = call i32 (...) @cpu_relax()
  br label %13

32:                                               ; preds = %29, %13
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MMCST1_BUSY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %39 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @mmc_dev(i32 %40)
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  %45 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  %49 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %50 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %51 = call i32 @mmc_request_done(%struct.mmc_host* %49, %struct.mmc_request* %50)
  br label %63

52:                                               ; preds = %32
  %53 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %54 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %56 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %57 = call i32 @mmc_davinci_prepare_data(%struct.mmc_davinci_host* %55, %struct.mmc_request* %56)
  %58 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %59 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %60 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = call i32 @mmc_davinci_start_command(%struct.mmc_davinci_host* %58, %struct.TYPE_2__* %61)
  br label %63

63:                                               ; preds = %52, %37
  ret void
}

declare dso_local %struct.mmc_davinci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @mmc_davinci_prepare_data(%struct.mmc_davinci_host*, %struct.mmc_request*) #1

declare dso_local i32 @mmc_davinci_start_command(%struct.mmc_davinci_host*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
