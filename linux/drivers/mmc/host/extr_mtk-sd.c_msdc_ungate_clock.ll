; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_ungate_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_ungate_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_host = type { i64, i32, i32, i32, i32 }

@MSDC_CFG = common dso_local global i64 0, align 8
@MSDC_CFG_CKSTB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdc_host*)* @msdc_ungate_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_ungate_clock(%struct.msdc_host* %0) #0 {
  %2 = alloca %struct.msdc_host*, align 8
  store %struct.msdc_host* %0, %struct.msdc_host** %2, align 8
  %3 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %4 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @clk_prepare_enable(i32 %5)
  %7 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %8 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @clk_prepare_enable(i32 %9)
  %11 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %12 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_prepare_enable(i32 %13)
  %15 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %16 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @clk_prepare_enable(i32 %17)
  br label %19

19:                                               ; preds = %30, %1
  %20 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %21 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MSDC_CFG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  %26 = load i32, i32* @MSDC_CFG_CKSTB, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = call i32 (...) @cpu_relax()
  br label %19

32:                                               ; preds = %19
  ret void
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
