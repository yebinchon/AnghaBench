; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_set_buswidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_set_buswidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_host = type { i32, i64 }

@SDC_CFG = common dso_local global i64 0, align 8
@SDC_CFG_BUSWIDTH = common dso_local global i32 0, align 4
@MSDC_BUS_1BITS = common dso_local global i32 0, align 4
@MSDC_BUS_4BITS = common dso_local global i32 0, align 4
@MSDC_BUS_8BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Bus Width = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdc_host*, i32)* @msdc_set_buswidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_set_buswidth(%struct.msdc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.msdc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.msdc_host* %0, %struct.msdc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %7 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SDC_CFG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @SDC_CFG_BUSWIDTH, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %17 [
    i32 130, label %18
    i32 129, label %23
    i32 128, label %28
  ]

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %2, %17
  %19 = load i32, i32* @MSDC_BUS_1BITS, align 4
  %20 = shl i32 %19, 16
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load i32, i32* @MSDC_BUS_4BITS, align 4
  %25 = shl i32 %24, 16
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @MSDC_BUS_8BITS, align 4
  %30 = shl i32 %29, 16
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %28, %23, %18
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %36 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SDC_CFG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  %41 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %42 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %44)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
