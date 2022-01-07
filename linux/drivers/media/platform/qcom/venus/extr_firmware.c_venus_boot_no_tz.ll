; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_firmware.c_venus_boot_no_tz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_firmware.c_venus_boot_no_tz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.iommu_domain*, %struct.device* }
%struct.iommu_domain = type { i32 }
%struct.device = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@VENUS_FW_START_ADDR = common dso_local global i32 0, align 4
@IOMMU_READ = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@IOMMU_PRIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not map video firmware region\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_core*, i32, i64)* @venus_boot_no_tz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_boot_no_tz(%struct.venus_core* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.venus_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.iommu_domain*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %12 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %9, align 8
  %15 = load %struct.device*, %struct.device** %9, align 8
  %16 = icmp ne %struct.device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EPROBE_DEFER, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %48

20:                                               ; preds = %3
  %21 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %22 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.iommu_domain*, %struct.iommu_domain** %23, align 8
  store %struct.iommu_domain* %24, %struct.iommu_domain** %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %27 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load %struct.iommu_domain*, %struct.iommu_domain** %8, align 8
  %30 = load i32, i32* @VENUS_FW_START_ADDR, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* @IOMMU_READ, align 4
  %34 = load i32, i32* @IOMMU_WRITE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @IOMMU_PRIV, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @iommu_map(%struct.iommu_domain* %29, i32 %30, i32 %31, i64 %32, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %20
  %42 = load %struct.device*, %struct.device** %9, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %48

45:                                               ; preds = %20
  %46 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %47 = call i32 @venus_reset_cpu(%struct.venus_core* %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %41, %17
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @iommu_map(%struct.iommu_domain*, i32, i32, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @venus_reset_cpu(%struct.venus_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
