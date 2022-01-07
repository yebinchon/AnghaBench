; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_ops_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_ops_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.msdc_host = type { %struct.mmc_request*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @msdc_ops_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_ops_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.msdc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.msdc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.msdc_host* %7, %struct.msdc_host** %5, align 8
  %8 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %9 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %11 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %10, i32 0, i32 0
  %12 = load %struct.mmc_request*, %struct.mmc_request** %11, align 8
  %13 = call i32 @WARN_ON(%struct.mmc_request* %12)
  %14 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %15 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %16 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %15, i32 0, i32 0
  store %struct.mmc_request* %14, %struct.mmc_request** %16, align 8
  %17 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %23 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %24 = call i32 @msdc_prepare_data(%struct.msdc_host* %22, %struct.mmc_request* %23)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mmc_card_mmc(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, -65536
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %36, %30
  %45 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %46 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %47 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %48 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = call i32 @msdc_start_command(%struct.msdc_host* %45, %struct.mmc_request* %46, %struct.TYPE_2__* %49)
  br label %58

51:                                               ; preds = %36, %25
  %52 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %53 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %54 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = call i32 @msdc_start_command(%struct.msdc_host* %52, %struct.mmc_request* %53, %struct.TYPE_2__* %56)
  br label %58

58:                                               ; preds = %51, %44
  ret void
}

declare dso_local %struct.msdc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @WARN_ON(%struct.mmc_request*) #1

declare dso_local i32 @msdc_prepare_data(%struct.msdc_host*, %struct.mmc_request*) #1

declare dso_local i32 @mmc_card_mmc(i32) #1

declare dso_local i32 @msdc_start_command(%struct.msdc_host*, %struct.mmc_request*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
