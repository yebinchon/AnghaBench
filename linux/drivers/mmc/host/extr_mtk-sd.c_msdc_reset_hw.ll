; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_reset_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_host = type { i64 }

@MSDC_CFG = common dso_local global i64 0, align 8
@MSDC_CFG_RST = common dso_local global i32 0, align 4
@MSDC_FIFOCS = common dso_local global i64 0, align 8
@MSDC_FIFOCS_CLR = common dso_local global i32 0, align 4
@MSDC_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdc_host*)* @msdc_reset_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_reset_hw(%struct.msdc_host* %0) #0 {
  %2 = alloca %struct.msdc_host*, align 8
  %3 = alloca i32, align 4
  store %struct.msdc_host* %0, %struct.msdc_host** %2, align 8
  %4 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %5 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MSDC_CFG, align 8
  %8 = add nsw i64 %6, %7
  %9 = load i32, i32* @MSDC_CFG_RST, align 4
  %10 = call i32 @sdr_set_bits(i64 %8, i32 %9)
  br label %11

11:                                               ; preds = %21, %1
  %12 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %13 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MSDC_CFG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  %18 = load i32, i32* @MSDC_CFG_RST, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = call i32 (...) @cpu_relax()
  br label %11

23:                                               ; preds = %11
  %24 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %25 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MSDC_FIFOCS, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* @MSDC_FIFOCS_CLR, align 4
  %30 = call i32 @sdr_set_bits(i64 %28, i32 %29)
  br label %31

31:                                               ; preds = %41, %23
  %32 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %33 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MSDC_FIFOCS, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  %38 = load i32, i32* @MSDC_FIFOCS_CLR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = call i32 (...) @cpu_relax()
  br label %31

43:                                               ; preds = %31
  %44 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %45 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MSDC_INT, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %52 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MSDC_INT, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  ret void
}

declare dso_local i32 @sdr_set_bits(i64, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
