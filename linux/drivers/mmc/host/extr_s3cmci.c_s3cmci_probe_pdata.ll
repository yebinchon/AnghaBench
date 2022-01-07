; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_probe_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_probe_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_mci_pdata = type { i64, i64, i64 }
%struct.s3cmci_host = type { %struct.mmc_host*, i32, %struct.platform_device* }
%struct.mmc_host = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.s3c24xx_mci_pdata* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"failed to get gpio %d\0A\00", align 1
@s3cmci_def_pdata = common dso_local global %struct.s3c24xx_mci_pdata zeroinitializer, align 8
@MMC_CAP2_NO_WRITE_PROTECT = common dso_local global i32 0, align 4
@MMC_CAP_NEEDS_POLL = common dso_local global i32 0, align 4
@MMC_CAP2_RO_ACTIVE_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"error requesting GPIO for CD %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wp\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"error requesting GPIO for WP %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3cmci_host*)* @s3cmci_probe_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3cmci_probe_pdata(%struct.s3cmci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s3cmci_host*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca %struct.s3c24xx_mci_pdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s3cmci_host* %0, %struct.s3cmci_host** %3, align 8
  %9 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %10 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %9, i32 0, i32 2
  %11 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  store %struct.platform_device* %11, %struct.platform_device** %4, align 8
  %12 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %13 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %12, i32 0, i32 0
  %14 = load %struct.mmc_host*, %struct.mmc_host** %13, align 8
  store %struct.mmc_host* %14, %struct.mmc_host** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = call %struct.TYPE_4__* @platform_get_device_id(%struct.platform_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %20 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = call i32 @S3C2410_GPE(i32 5)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %54, %1
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @S3C2410_GPE(i32 10)
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_name(%struct.TYPE_5__* %29)
  %31 = call i32 @gpio_request(i32 %27, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %26
  %35 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dev_err(%struct.TYPE_5__* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %48, %34
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @S3C2410_GPE(i32 5)
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @gpio_free(i32 %46)
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %7, align 4
  br label %41

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %133

53:                                               ; preds = %26
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %22

57:                                               ; preds = %22
  %58 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.s3c24xx_mci_pdata*, %struct.s3c24xx_mci_pdata** %60, align 8
  %62 = icmp ne %struct.s3c24xx_mci_pdata* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store %struct.s3c24xx_mci_pdata* @s3cmci_def_pdata, %struct.s3c24xx_mci_pdata** %66, align 8
  br label %67

67:                                               ; preds = %63, %57
  %68 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.s3c24xx_mci_pdata*, %struct.s3c24xx_mci_pdata** %70, align 8
  store %struct.s3c24xx_mci_pdata* %71, %struct.s3c24xx_mci_pdata** %6, align 8
  %72 = load %struct.s3c24xx_mci_pdata*, %struct.s3c24xx_mci_pdata** %6, align 8
  %73 = getelementptr inbounds %struct.s3c24xx_mci_pdata, %struct.s3c24xx_mci_pdata* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %67
  %77 = load i32, i32* @MMC_CAP2_NO_WRITE_PROTECT, align 4
  %78 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %79 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %67
  %83 = load %struct.s3c24xx_mci_pdata*, %struct.s3c24xx_mci_pdata** %6, align 8
  %84 = getelementptr inbounds %struct.s3c24xx_mci_pdata, %struct.s3c24xx_mci_pdata* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %89 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %90 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %82
  %94 = load %struct.s3c24xx_mci_pdata*, %struct.s3c24xx_mci_pdata** %6, align 8
  %95 = getelementptr inbounds %struct.s3c24xx_mci_pdata, %struct.s3c24xx_mci_pdata* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i32, i32* @MMC_CAP2_RO_ACTIVE_HIGH, align 4
  %100 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %101 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %93
  %105 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %106 = call i32 @mmc_gpiod_request_cd(%struct.mmc_host* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32 0, i32* null)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @ENOENT, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @dev_err(%struct.TYPE_5__* %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %2, align 4
  br label %133

117:                                              ; preds = %104
  %118 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %119 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %118, i32 0, i32 0
  %120 = load %struct.mmc_host*, %struct.mmc_host** %119, align 8
  %121 = call i32 @mmc_gpiod_request_ro(%struct.mmc_host* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, i32* null)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @ENOENT, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp ne i32 %122, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %117
  %127 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @dev_err(%struct.TYPE_5__* %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %2, align 4
  br label %133

132:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %126, %111, %51
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.TYPE_4__* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i32 @S3C2410_GPE(i32) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @mmc_gpiod_request_cd(%struct.mmc_host*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @mmc_gpiod_request_ro(%struct.mmc_host*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
