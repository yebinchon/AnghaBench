; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_fetch_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_fetch_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_command = type { i32* }
%struct.tifm_dev = type { i64 }

@SOCK_MMCSD_RESPONSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_command*, %struct.tifm_dev*)* @tifm_sd_fetch_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tifm_sd_fetch_resp(%struct.mmc_command* %0, %struct.tifm_dev* %1) #0 {
  %3 = alloca %struct.mmc_command*, align 8
  %4 = alloca %struct.tifm_dev*, align 8
  store %struct.mmc_command* %0, %struct.mmc_command** %3, align 8
  store %struct.tifm_dev* %1, %struct.tifm_dev** %4, align 8
  %5 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %6 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SOCK_MMCSD_RESPONSE, align 8
  %9 = add nsw i64 %7, %8
  %10 = add nsw i64 %9, 28
  %11 = call i32 @readl(i64 %10)
  %12 = shl i32 %11, 16
  %13 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %14 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SOCK_MMCSD_RESPONSE, align 8
  %17 = add nsw i64 %15, %16
  %18 = add nsw i64 %17, 24
  %19 = call i32 @readl(i64 %18)
  %20 = or i32 %12, %19
  %21 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %26 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SOCK_MMCSD_RESPONSE, align 8
  %29 = add nsw i64 %27, %28
  %30 = add nsw i64 %29, 20
  %31 = call i32 @readl(i64 %30)
  %32 = shl i32 %31, 16
  %33 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %34 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SOCK_MMCSD_RESPONSE, align 8
  %37 = add nsw i64 %35, %36
  %38 = add nsw i64 %37, 16
  %39 = call i32 @readl(i64 %38)
  %40 = or i32 %32, %39
  %41 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %40, i32* %44, align 4
  %45 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %46 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SOCK_MMCSD_RESPONSE, align 8
  %49 = add nsw i64 %47, %48
  %50 = add nsw i64 %49, 12
  %51 = call i32 @readl(i64 %50)
  %52 = shl i32 %51, 16
  %53 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %54 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SOCK_MMCSD_RESPONSE, align 8
  %57 = add nsw i64 %55, %56
  %58 = add nsw i64 %57, 8
  %59 = call i32 @readl(i64 %58)
  %60 = or i32 %52, %59
  %61 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %62 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32 %60, i32* %64, align 4
  %65 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %66 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SOCK_MMCSD_RESPONSE, align 8
  %69 = add nsw i64 %67, %68
  %70 = add nsw i64 %69, 4
  %71 = call i32 @readl(i64 %70)
  %72 = shl i32 %71, 16
  %73 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %74 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SOCK_MMCSD_RESPONSE, align 8
  %77 = add nsw i64 %75, %76
  %78 = add nsw i64 %77, 0
  %79 = call i32 @readl(i64 %78)
  %80 = or i32 %72, %79
  %81 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %82 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  store i32 %80, i32* %84, align 4
  ret void
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
