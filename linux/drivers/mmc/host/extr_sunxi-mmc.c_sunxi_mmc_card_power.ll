; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_card_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_card_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_mmc_host = type { i32, i32, %struct.mmc_host* }
%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mmc_ios = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Powering card up\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to enable vqmmc\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Powering card off\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Ignoring unknown card power state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sunxi_mmc_host*, %struct.mmc_ios*)* @sunxi_mmc_card_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_mmc_card_power(%struct.sunxi_mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.sunxi_mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  store %struct.sunxi_mmc_host* %0, %struct.sunxi_mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %6 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %6, i32 0, i32 2
  %8 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  store %struct.mmc_host* %8, %struct.mmc_host** %5, align 8
  %9 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %105 [
    i32 128, label %12
    i32 129, label %67
  ]

12:                                               ; preds = %2
  %13 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %14 = call i32 @mmc_dev(%struct.mmc_host* %13)
  %15 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @IS_ERR(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %12
  %23 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %24 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %25 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %23, i32 %27, i32 %30)
  %32 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %33 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %35 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %109

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39, %12
  %41 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %42 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @IS_ERR(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %40
  %48 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %49 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @regulator_enable(i32 %51)
  %53 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %54 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %56 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %61 = call i32 @mmc_dev(%struct.mmc_host* %60)
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %109

63:                                               ; preds = %47
  %64 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %65 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %40
  br label %109

67:                                               ; preds = %2
  %68 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %69 = call i32 @mmc_dev(%struct.mmc_host* %68)
  %70 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %72 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @IS_ERR(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %67
  %78 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %79 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %80 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %78, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %77, %67
  %85 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %86 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @IS_ERR(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %84
  %92 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %93 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %98 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @regulator_disable(i32 %100)
  br label %102

102:                                              ; preds = %96, %91, %84
  %103 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %104 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  br label %109

105:                                              ; preds = %2
  %106 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %107 = call i32 @mmc_dev(%struct.mmc_host* %106)
  %108 = call i32 @dev_dbg(i32 %107, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %109

109:                                              ; preds = %38, %59, %105, %102, %66
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @mmc_regulator_set_ocr(%struct.mmc_host*, i32, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
