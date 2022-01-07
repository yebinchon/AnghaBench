; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_set_pbias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_set_pbias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"pbias reg enable fail\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"pbias reg disable fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*, i32)* @omap_hsmmc_set_pbias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_set_pbias(%struct.omap_hsmmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %8 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @IS_ERR(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  %17 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %18 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %23 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regulator_enable(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %30 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %61

34:                                               ; preds = %21
  %35 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %36 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %16
  br label %60

38:                                               ; preds = %13
  %39 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %40 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %45 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @regulator_disable(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %52 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %61

56:                                               ; preds = %43
  %57 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %58 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %38
  br label %60

60:                                               ; preds = %59, %37
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %50, %28, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
