; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_deinit_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_deinit_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_host = type { i64, i64 }

@MSDC_PS = common dso_local global i64 0, align 8
@MSDC_PS_CDEN = common dso_local global i32 0, align 4
@SDC_CFG = common dso_local global i64 0, align 8
@SDC_CFG_INSWKUP = common dso_local global i32 0, align 4
@MSDC_INTEN = common dso_local global i64 0, align 8
@MSDC_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdc_host*)* @msdc_deinit_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_deinit_hw(%struct.msdc_host* %0) #0 {
  %2 = alloca %struct.msdc_host*, align 8
  %3 = alloca i32, align 4
  store %struct.msdc_host* %0, %struct.msdc_host** %2, align 8
  %4 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %5 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %10 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MSDC_PS, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* @MSDC_PS_CDEN, align 4
  %15 = call i32 @sdr_clr_bits(i64 %13, i32 %14)
  %16 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %17 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SDC_CFG, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* @SDC_CFG_INSWKUP, align 4
  %22 = call i32 @sdr_clr_bits(i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %8, %1
  %24 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %25 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MSDC_INTEN, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 0, i64 %28)
  %30 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %31 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MSDC_INT, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @readl(i64 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %38 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MSDC_INT, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  ret void
}

declare dso_local i32 @sdr_clr_bits(i64, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
