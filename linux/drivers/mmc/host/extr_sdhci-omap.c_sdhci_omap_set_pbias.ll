; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_set_pbias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_set_pbias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_omap_host = type { i32, i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"pbias set voltage failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"pbias reg enable fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"pbias reg disable fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_omap_host*, i32, i32)* @sdhci_omap_set_pbias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_omap_set_pbias(%struct.sdhci_omap_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_omap_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  store %struct.sdhci_omap_host* %0, %struct.sdhci_omap_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %5, align 8
  %11 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %10, i32 0, i32 2
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %9, align 8
  %13 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %5, align 8
  %14 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_ERR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %5, align 8
  %24 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @regulator_set_voltage(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.device*, %struct.device** %9, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %76

35:                                               ; preds = %22
  %36 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %5, align 8
  %37 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %76

41:                                               ; preds = %35
  %42 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %5, align 8
  %43 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @regulator_enable(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.device*, %struct.device** %9, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %76

52:                                               ; preds = %41
  %53 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %5, align 8
  %54 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %75

55:                                               ; preds = %19
  %56 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %5, align 8
  %57 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %76

61:                                               ; preds = %55
  %62 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %5, align 8
  %63 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @regulator_disable(i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.device*, %struct.device** %9, align 8
  %70 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %76

72:                                               ; preds = %61
  %73 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %5, align 8
  %74 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %52
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %68, %60, %48, %40, %31, %18
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @regulator_set_voltage(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
