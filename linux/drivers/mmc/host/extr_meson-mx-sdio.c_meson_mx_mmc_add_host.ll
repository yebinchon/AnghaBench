; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_add_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_mx_mmc_host = type { i32, i32, i32, %struct.mmc_host* }
%struct.mmc_host = type { i32, i32, i32*, i8*, i8*, i8*, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"missing 'reg' property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MESON_MX_SDIO_MAX_SLOTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"invalid 'reg' property value %d\0A\00", align 1
@MESON_MX_SDIO_BOUNCE_REQ_SIZE = common dso_local global i32 0, align 4
@MESON_MX_SDIO_SEND_REPEAT_PACKAGE_TIMES_MASK = common dso_local global i32 0, align 4
@MESON_MX_SDIO_EXT_DATA_RW_NUMBER_MASK = common dso_local global i32 0, align 4
@MESON_MX_SDIO_RESPONSE_CRC16_BITS = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@MMC_CAP_ERASE = common dso_local global i32 0, align 4
@MMC_CAP_CMD23 = common dso_local global i32 0, align 4
@meson_mx_mmc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_mx_mmc_host*)* @meson_mx_mmc_add_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_mx_mmc_add_host(%struct.meson_mx_mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meson_mx_mmc_host*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.meson_mx_mmc_host* %0, %struct.meson_mx_mmc_host** %3, align 8
  %7 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %7, i32 0, i32 3
  %9 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  store %struct.mmc_host* %9, %struct.mmc_host** %4, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %11 = call %struct.device* @mmc_dev(%struct.mmc_host* %10)
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %15, i32 0, i32 2
  %17 = call i64 @of_property_read_u32(i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %113

24:                                               ; preds = %1
  %25 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %26 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MESON_MX_SDIO_MAX_SLOTS, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %33 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %113

38:                                               ; preds = %24
  %39 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %40 = call i32 @mmc_regulator_get_supply(%struct.mmc_host* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %113

45:                                               ; preds = %38
  %46 = load i32, i32* @MESON_MX_SDIO_BOUNCE_REQ_SIZE, align 4
  %47 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %48 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %53 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @MESON_MX_SDIO_SEND_REPEAT_PACKAGE_TIMES_MASK, align 4
  %55 = call i8* @FIELD_GET(i32 %54, i32 -1)
  %56 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %57 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @MESON_MX_SDIO_EXT_DATA_RW_NUMBER_MASK, align 4
  %59 = call i8* @FIELD_GET(i32 %58, i32 -1)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %62 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @MESON_MX_SDIO_RESPONSE_CRC16_BITS, align 4
  %64 = mul nsw i32 4, %63
  %65 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %66 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* @BITS_PER_BYTE, align 4
  %70 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %71 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sdiv i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %75 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @clk_round_rate(i32 %76, i32 1)
  %78 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %79 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %81 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %84 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @clk_get_rate(i32 %85)
  %87 = call i8* @clk_round_rate(i32 %82, i32 %86)
  %88 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %89 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @MMC_CAP_ERASE, align 4
  %91 = load i32, i32* @MMC_CAP_CMD23, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %94 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %98 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %97, i32 0, i32 2
  store i32* @meson_mx_mmc_ops, i32** %98, align 8
  %99 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %100 = call i32 @mmc_of_parse(%struct.mmc_host* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %45
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %113

105:                                              ; preds = %45
  %106 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %107 = call i32 @mmc_add_host(%struct.mmc_host* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %113

112:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %110, %103, %43, %30, %19
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.device* @mmc_dev(%struct.mmc_host*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @mmc_regulator_get_supply(%struct.mmc_host*) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

declare dso_local i8* @clk_round_rate(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @mmc_of_parse(%struct.mmc_host*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
