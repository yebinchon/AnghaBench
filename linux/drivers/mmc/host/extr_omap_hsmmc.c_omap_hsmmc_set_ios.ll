; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i64 }
%struct.omap_hsmmc_host = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@OMAP_HSMMC_SUPPORTS_DUAL_VOLT = common dso_local global i32 0, align 4
@HCTL = common dso_local global i32 0, align 4
@SDVSDET = common dso_local global i32 0, align 4
@DUAL_VOLT_OCR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Switch operation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @omap_hsmmc_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.omap_hsmmc_host*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.omap_hsmmc_host* %8, %struct.omap_hsmmc_host** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %13 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  switch i64 %19, label %27 [
    i64 130, label %20
    i64 128, label %23
    i64 129, label %26
  ]

20:                                               ; preds = %16
  %21 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %22 = call i32 @omap_hsmmc_set_power(%struct.omap_hsmmc_host* %21, i32 0)
  br label %27

23:                                               ; preds = %16
  %24 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %25 = call i32 @omap_hsmmc_set_power(%struct.omap_hsmmc_host* %24, i32 1)
  br label %27

26:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %27

27:                                               ; preds = %16, %26, %23, %20
  %28 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %32 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %2
  %34 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %35 = call i32 @omap_hsmmc_set_bus_width(%struct.omap_hsmmc_host* %34)
  %36 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %37 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @OMAP_HSMMC_SUPPORTS_DUAL_VOLT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %33
  %45 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %46 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HCTL, align 4
  %49 = call i32 @OMAP_HSMMC_READ(i32 %47, i32 %48)
  %50 = load i32, i32* @SDVSDET, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %44
  %54 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DUAL_VOLT_OCR_BIT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %61 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %62 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @omap_hsmmc_switch_opcond(%struct.omap_hsmmc_host* %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %68 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @mmc_dev(i32 %69)
  %71 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %66, %59
  br label %73

73:                                               ; preds = %72, %53, %44
  br label %74

74:                                               ; preds = %73, %33
  %75 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %76 = call i32 @omap_hsmmc_set_clock(%struct.omap_hsmmc_host* %75)
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %81 = call i32 @send_init_stream(%struct.omap_hsmmc_host* %80)
  br label %82

82:                                               ; preds = %79, %74
  %83 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %84 = call i32 @omap_hsmmc_set_bus_mode(%struct.omap_hsmmc_host* %83)
  ret void
}

declare dso_local %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @omap_hsmmc_set_power(%struct.omap_hsmmc_host*, i32) #1

declare dso_local i32 @omap_hsmmc_set_bus_width(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i64 @omap_hsmmc_switch_opcond(%struct.omap_hsmmc_host*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @omap_hsmmc_set_clock(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @send_init_stream(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @omap_hsmmc_set_bus_mode(%struct.omap_hsmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
