; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_disable_supply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_disable_supply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.omap_hsmmc_host = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"vmmc_aux reg disable failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"vmmc_aux re-enable failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @omap_hsmmc_disable_supply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_disable_supply(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_hsmmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.omap_hsmmc_host* %8, %struct.omap_hsmmc_host** %6, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @IS_ERR(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %1
  %16 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %17 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %22 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regulator_disable(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %30 = call i32 @mmc_dev(%struct.mmc_host* %29)
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %77

33:                                               ; preds = %20
  %34 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %35 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %15, %1
  %37 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %38 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IS_ERR(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %36
  %44 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %45 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %46 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %44, i32 %48, i32 0)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %55

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %36
  store i32 0, i32* %2, align 4
  br label %77

55:                                               ; preds = %52
  %56 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %57 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @IS_ERR(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %55
  %63 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %64 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @regulator_enable(i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %72 = call i32 @mmc_dev(%struct.mmc_host* %71)
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %62
  br label %75

75:                                               ; preds = %74, %55
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %54, %28
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @mmc_regulator_set_ocr(%struct.mmc_host*, i32, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
