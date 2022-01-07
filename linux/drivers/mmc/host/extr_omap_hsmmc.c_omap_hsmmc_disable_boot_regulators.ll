; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_disable_boot_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_disable_boot_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32, %struct.mmc_host* }
%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"fail to disable boot enabled vmmc reg\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"fail to disable boot enabled vmmc_aux reg\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to disable boot enabled pbias reg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*)* @omap_hsmmc_disable_boot_regulators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_disable_boot_regulators(%struct.omap_hsmmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %3, align 8
  %6 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %6, i32 0, i32 2
  %8 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  store %struct.mmc_host* %8, %struct.mmc_host** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @omap_hsmmc_disable_boot_regulator(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %18 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %50

22:                                               ; preds = %1
  %23 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @omap_hsmmc_disable_boot_regulator(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %50

36:                                               ; preds = %22
  %37 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %38 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @omap_hsmmc_disable_boot_regulator(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %45 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %43, %30, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @omap_hsmmc_disable_boot_regulator(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
