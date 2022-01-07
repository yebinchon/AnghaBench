; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_send_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_send_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { %struct.mmc_omap_slot* }
%struct.mmc_omap_slot = type { i32 }

@USEC_PER_SEC = common dso_local global i32 0, align 4
@STAT = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_END_OF_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, i32)* @mmc_omap_send_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_send_abort(%struct.mmc_omap_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_omap_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %11 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %10, i32 0, i32 0
  %12 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %11, align 8
  store %struct.mmc_omap_slot* %12, %struct.mmc_omap_slot** %5, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @USEC_PER_SEC, align 4
  %14 = mul nsw i32 120, %13
  %15 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %16 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DIV_ROUND_UP(i32 %14, i32 %17)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %47, %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %25 = load i32, i32* @STAT, align 4
  %26 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %24, i32 %25, i32 65535)
  %27 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %28 = load i32, i32* @CMD, align 4
  %29 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %27, i32 %28, i32 12416)
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %43, %23
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %36 = load i32, i32* @STAT, align 4
  %37 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @OMAP_MMC_STAT_END_OF_CMD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %51

43:                                               ; preds = %34
  %44 = call i32 @udelay(i32 1)
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %30

47:                                               ; preds = %30
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %19

50:                                               ; preds = %19
  br label %51

51:                                               ; preds = %50, %42
  %52 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %53 = load i32, i32* @STAT, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %52, i32 %53, i32 %54)
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host*, i32, i32) #1

declare dso_local i32 @OMAP_MMC_READ(%struct.mmc_omap_host*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
