; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_gphy_fw_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_gphy_fw_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gswip_priv = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.gswip_gphy_fw = type { i32, i32, i32, i32 }
%struct.firmware = type { i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"failed to load firmware: %s, error: %i\0A\00", align 1
@XRX200_GPHY_FW_ALIGN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to alloc firmware memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gswip_priv*, %struct.gswip_gphy_fw*)* @gswip_gphy_fw_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_gphy_fw_load(%struct.gswip_priv* %0, %struct.gswip_gphy_fw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gswip_priv*, align 8
  %5 = alloca %struct.gswip_gphy_fw*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.gswip_priv* %0, %struct.gswip_priv** %4, align 8
  store %struct.gswip_gphy_fw* %1, %struct.gswip_gphy_fw** %5, align 8
  %13 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %14 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %13, i32 0, i32 1
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %5, align 8
  %17 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_prepare_enable(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %3, align 4
  br label %99

24:                                               ; preds = %2
  %25 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %5, align 8
  %26 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @reset_control_assert(i32 %27)
  %29 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %5, align 8
  %30 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 @request_firmware(%struct.firmware** %7, i32 %31, %struct.device* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %24
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %5, align 8
  %39 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %3, align 4
  br label %99

44:                                               ; preds = %24
  %45 = load %struct.firmware*, %struct.firmware** %7, align 8
  %46 = getelementptr inbounds %struct.firmware, %struct.firmware* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @XRX200_GPHY_FW_ALIGN, align 8
  %49 = add i64 %47, %48
  store i64 %49, i64* %11, align 8
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @dmam_alloc_coherent(%struct.device* %50, i64 %51, i32* %9, i32 %52)
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %44
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* @XRX200_GPHY_FW_ALIGN, align 8
  %59 = call i8* @PTR_ALIGN(i8* %57, i64 %58)
  store i8* %59, i8** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i64, i64* @XRX200_GPHY_FW_ALIGN, align 8
  %62 = call i32 @ALIGN(i32 %60, i64 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.firmware*, %struct.firmware** %7, align 8
  %65 = getelementptr inbounds %struct.firmware, %struct.firmware* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.firmware*, %struct.firmware** %7, align 8
  %68 = getelementptr inbounds %struct.firmware, %struct.firmware* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @memcpy(i8* %63, i32 %66, i64 %69)
  br label %78

71:                                               ; preds = %44
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.firmware*, %struct.firmware** %7, align 8
  %75 = call i32 @release_firmware(%struct.firmware* %74)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %99

78:                                               ; preds = %56
  %79 = load %struct.firmware*, %struct.firmware** %7, align 8
  %80 = call i32 @release_firmware(%struct.firmware* %79)
  %81 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %82 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %5, align 8
  %85 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @regmap_write(i32 %83, i32 %86, i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %3, align 4
  br label %99

93:                                               ; preds = %78
  %94 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %5, align 8
  %95 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @reset_control_deassert(i32 %96)
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %93, %91, %71, %36, %22
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @dmam_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i8* @PTR_ALIGN(i8*, i64) #1

declare dso_local i32 @ALIGN(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
