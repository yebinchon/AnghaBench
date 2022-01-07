; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_reg_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_reg_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i8*, %struct.TYPE_8__*, %struct.mmc_host* }
%struct.TYPE_8__ = type { i64 }
%struct.mmc_host = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"vmmc_aux\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to get vmmc_aux regulator %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pbias\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"SD card detect fail? enable CONFIG_REGULATOR_PBIAS\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"unable to get pbias regulator %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*)* @omap_hsmmc_reg_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_reg_get(%struct.omap_hsmmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_host*, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %3, align 8
  %6 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %6, i32 0, i32 2
  %8 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  store %struct.mmc_host* %8, %struct.mmc_host** %5, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %10 = call i32 @mmc_regulator_get_supply(%struct.mmc_host* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %124

15:                                               ; preds = %1
  %16 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @IS_ERR(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %15
  %23 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %24 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = call i8* @devm_regulator_get_optional(%struct.TYPE_8__* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %28 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %31 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %22
  %37 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %38 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %36
  %47 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %48 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %124

55:                                               ; preds = %46, %36
  %56 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %57 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %60 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @PTR_ERR(i8* %62)
  %64 = call i32 @dev_dbg(%struct.TYPE_8__* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %55, %22
  br label %66

66:                                               ; preds = %65, %15
  %67 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %68 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = call i8* @devm_regulator_get_optional(%struct.TYPE_8__* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %72 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %74 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @IS_ERR(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %66
  %79 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %80 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @PTR_ERR(i8* %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %78
  %88 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %89 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %88, i32 0, i32 1
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %96 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %95, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = call i32 @dev_err(%struct.TYPE_8__* %97, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %124

100:                                              ; preds = %87, %78
  %101 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %102 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %101, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %105 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @PTR_ERR(i8* %106)
  %108 = call i32 @dev_dbg(%struct.TYPE_8__* %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %100, %66
  %110 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %111 = call %struct.TYPE_7__* @mmc_pdata(%struct.omap_hsmmc_host* %110)
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %124

116:                                              ; preds = %109
  %117 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %118 = call i32 @omap_hsmmc_disable_boot_regulators(%struct.omap_hsmmc_host* %117)
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* %4, align 4
  store i32 %122, i32* %2, align 4
  br label %124

123:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %123, %121, %115, %94, %53, %13
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @mmc_regulator_get_supply(%struct.mmc_host*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @devm_regulator_get_optional(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local %struct.TYPE_7__* @mmc_pdata(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @omap_hsmmc_disable_boot_regulators(%struct.omap_hsmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
