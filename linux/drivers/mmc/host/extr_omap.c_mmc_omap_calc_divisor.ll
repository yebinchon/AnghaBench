; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_calc_divisor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_calc_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i64 }
%struct.mmc_omap_slot = type { i32, %struct.mmc_omap_host* }
%struct.mmc_omap_host = type { i32 }

@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ios*)* @mmc_omap_calc_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_omap_calc_divisor(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca %struct.mmc_omap_slot*, align 8
  %7 = alloca %struct.mmc_omap_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %11 = call %struct.mmc_omap_slot* @mmc_priv(%struct.mmc_host* %10)
  store %struct.mmc_omap_slot* %11, %struct.mmc_omap_slot** %6, align 8
  %12 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %13 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %12, i32 0, i32 1
  %14 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %13, align 8
  store %struct.mmc_omap_host* %14, %struct.mmc_omap_host** %7, align 8
  %15 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %16 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_get_rate(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %20 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %27 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sdiv i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sdiv i32 %34, %35
  %37 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %38 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %33
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 250
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 250, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sdiv i32 %49, %50
  %52 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %53 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %55 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, 32768
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %59, %48
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %23
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.mmc_omap_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
