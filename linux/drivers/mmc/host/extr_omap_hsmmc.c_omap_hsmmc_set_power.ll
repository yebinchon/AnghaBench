; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { %struct.mmc_host* }
%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*, i32)* @omap_hsmmc_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_set_power(%struct.omap_hsmmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca i32, align 4
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %9 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %8, i32 0, i32 0
  %10 = load %struct.mmc_host*, %struct.mmc_host** %9, align 8
  store %struct.mmc_host* %10, %struct.mmc_host** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %12 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @IS_ERR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

18:                                               ; preds = %2
  %19 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %20 = call i32 @omap_hsmmc_set_pbias(%struct.omap_hsmmc_host* %19, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %55

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %30 = call i32 @omap_hsmmc_enable_supply(%struct.mmc_host* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %55

35:                                               ; preds = %28
  %36 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %37 = call i32 @omap_hsmmc_set_pbias(%struct.omap_hsmmc_host* %36, i32 1)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %51

41:                                               ; preds = %35
  br label %50

42:                                               ; preds = %25
  %43 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %44 = call i32 @omap_hsmmc_disable_supply(%struct.mmc_host* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %55

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %41
  store i32 0, i32* %3, align 4
  br label %55

51:                                               ; preds = %40
  %52 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %53 = call i32 @omap_hsmmc_disable_supply(%struct.mmc_host* %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %50, %47, %33, %23, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @omap_hsmmc_set_pbias(%struct.omap_hsmmc_host*, i32) #1

declare dso_local i32 @omap_hsmmc_enable_supply(%struct.mmc_host*) #1

declare dso_local i32 @omap_hsmmc_disable_supply(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
