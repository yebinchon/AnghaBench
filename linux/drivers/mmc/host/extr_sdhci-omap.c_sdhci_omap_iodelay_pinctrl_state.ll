; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_iodelay_pinctrl_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_iodelay_pinctrl_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_state = type { i32 }
%struct.sdhci_omap_host = type { i8*, i32, %struct.device* }
%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"no pinctrl state for %s mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pinctrl_state* (%struct.sdhci_omap_host*, i8*, i32*, i32)* @sdhci_omap_iodelay_pinctrl_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pinctrl_state* @sdhci_omap_iodelay_pinctrl_state(%struct.sdhci_omap_host* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.sdhci_omap_host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.pinctrl_state*, align 8
  %12 = alloca [20 x i8], align 16
  store %struct.sdhci_omap_host* %0, %struct.sdhci_omap_host** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %5, align 8
  %14 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %13, i32 0, i32 2
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %9, align 8
  %16 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %5, align 8
  %17 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.pinctrl_state* @ERR_PTR(i32 %20)
  store %struct.pinctrl_state* %21, %struct.pinctrl_state** %11, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  br label %65

28:                                               ; preds = %4
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @snprintf(i8* %32, i32 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  %36 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %5, align 8
  %37 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %40 = call %struct.pinctrl_state* @pinctrl_lookup_state(i32 %38, i8* %39)
  store %struct.pinctrl_state* %40, %struct.pinctrl_state** %11, align 8
  br label %41

41:                                               ; preds = %31, %28
  %42 = load %struct.pinctrl_state*, %struct.pinctrl_state** %11, align 8
  %43 = call i64 @IS_ERR(%struct.pinctrl_state* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %5, align 8
  %47 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call %struct.pinctrl_state* @pinctrl_lookup_state(i32 %48, i8* %49)
  store %struct.pinctrl_state* %50, %struct.pinctrl_state** %11, align 8
  br label %51

51:                                               ; preds = %45, %41
  %52 = load %struct.pinctrl_state*, %struct.pinctrl_state** %11, align 8
  %53 = call i64 @IS_ERR(%struct.pinctrl_state* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.device*, %struct.device** %9, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %8, align 4
  %60 = xor i32 %59, -1
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %55, %51
  br label %65

65:                                               ; preds = %64, %27
  %66 = load %struct.pinctrl_state*, %struct.pinctrl_state** %11, align 8
  ret %struct.pinctrl_state* %66
}

declare dso_local %struct.pinctrl_state* @ERR_PTR(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local %struct.pinctrl_state* @pinctrl_lookup_state(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_state*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
