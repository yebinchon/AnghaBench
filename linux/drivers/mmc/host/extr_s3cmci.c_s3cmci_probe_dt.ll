; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_probe_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_probe_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3cmci_host = type { i32, %struct.mmc_host*, %struct.platform_device* }
%struct.mmc_host = type { i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.s3c24xx_mci_pdata* }
%struct.s3c24xx_mci_pdata = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3cmci_host*)* @s3cmci_probe_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3cmci_probe_dt(%struct.s3cmci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s3cmci_host*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.s3c24xx_mci_pdata*, align 8
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca i32, align 4
  store %struct.s3cmci_host* %0, %struct.s3cmci_host** %3, align 8
  %8 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %9 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %8, i32 0, i32 2
  %10 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  store %struct.platform_device* %10, %struct.platform_device** %4, align 8
  %11 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %12 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %11, i32 0, i32 1
  %13 = load %struct.mmc_host*, %struct.mmc_host** %12, align 8
  store %struct.mmc_host* %13, %struct.mmc_host** %6, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i64 @of_device_get_match_data(%struct.TYPE_3__* %15)
  %17 = trunc i64 %16 to i32
  %18 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %19 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %21 = call i32 @mmc_of_parse(%struct.mmc_host* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %41

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.s3c24xx_mci_pdata* @devm_kzalloc(%struct.TYPE_3__* %28, i32 4, i32 %29)
  store %struct.s3c24xx_mci_pdata* %30, %struct.s3c24xx_mci_pdata** %5, align 8
  %31 = load %struct.s3c24xx_mci_pdata*, %struct.s3c24xx_mci_pdata** %5, align 8
  %32 = icmp ne %struct.s3c24xx_mci_pdata* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %41

36:                                               ; preds = %26
  %37 = load %struct.s3c24xx_mci_pdata*, %struct.s3c24xx_mci_pdata** %5, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store %struct.s3c24xx_mci_pdata* %37, %struct.s3c24xx_mci_pdata** %40, align 8
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %36, %33, %24
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_3__*) #1

declare dso_local i32 @mmc_of_parse(%struct.mmc_host*) #1

declare dso_local %struct.s3c24xx_mci_pdata* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
