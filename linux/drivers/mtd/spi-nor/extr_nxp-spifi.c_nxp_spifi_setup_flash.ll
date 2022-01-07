; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_nxp-spifi.c_nxp_spifi_setup_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_nxp-spifi.c_nxp_spifi_setup_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxp_spifi = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, %struct.nxp_spifi*, i32 }
%struct.device_node = type { i32 }
%struct.spi_nor_hwcaps = type { i32 }

@SNOR_HWCAPS_READ = common dso_local global i32 0, align 4
@SNOR_HWCAPS_READ_FAST = common dso_local global i32 0, align 4
@SNOR_HWCAPS_PP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"spi-rx-bus-width\00", align 1
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unsupported rx-bus-width\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"spi-cpha\00", align 1
@SPI_CPHA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"spi-cpol\00", align 1
@SPI_CPOL = common dso_local global i32 0, align 4
@SPIFI_CTRL_FBCLK = common dso_local global i32 0, align 4
@SPIFI_CTRL_DUAL = common dso_local global i32 0, align 4
@SNOR_HWCAPS_READ_1_1_2 = common dso_local global i32 0, align 4
@SNOR_HWCAPS_READ_1_1_4 = common dso_local global i32 0, align 4
@SPIFI_CTRL_MODE3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"only mode 0 and 3 supported\0A\00", align 1
@SPIFI_CTRL = common dso_local global i64 0, align 8
@nxp_spifi_read = common dso_local global i32 0, align 4
@nxp_spifi_write = common dso_local global i32 0, align 4
@nxp_spifi_erase = common dso_local global i32 0, align 4
@nxp_spifi_read_reg = common dso_local global i32 0, align 4
@nxp_spifi_write_reg = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"device scan failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"memory command setup failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"mtd device parse failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxp_spifi*, %struct.device_node*)* @nxp_spifi_setup_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_spifi_setup_flash(%struct.nxp_spifi* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nxp_spifi*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.spi_nor_hwcaps, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nxp_spifi* %0, %struct.nxp_spifi** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %11 = getelementptr inbounds %struct.spi_nor_hwcaps, %struct.spi_nor_hwcaps* %6, i32 0, i32 0
  %12 = load i32, i32* @SNOR_HWCAPS_READ, align 4
  %13 = load i32, i32* @SNOR_HWCAPS_READ_FAST, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SNOR_HWCAPS_PP, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = call i32 @of_property_read_u32(%struct.device_node* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %31 [
    i32 1, label %22
    i32 2, label %23
    i32 4, label %27
  ]

22:                                               ; preds = %20
  br label %38

23:                                               ; preds = %20
  %24 = load i32, i32* @SPI_RX_DUAL, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %38

27:                                               ; preds = %20
  %28 = load i32, i32* @SPI_RX_QUAD, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %38

31:                                               ; preds = %20
  %32 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %33 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %195

38:                                               ; preds = %27, %23, %22
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = call i64 @of_find_property(%struct.device_node* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @SPI_CPHA, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.device_node*, %struct.device_node** %5, align 8
  %49 = call i64 @of_find_property(%struct.device_node* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @SPI_CPOL, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = call i32 @SPIFI_CTRL_TIMEOUT(i32 1000)
  %57 = call i32 @SPIFI_CTRL_CSHIGH(i32 15)
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SPIFI_CTRL_FBCLK, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @SPI_RX_DUAL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load i32, i32* @SPIFI_CTRL_DUAL, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @SNOR_HWCAPS_READ_1_1_2, align 4
  %70 = getelementptr inbounds %struct.spi_nor_hwcaps, %struct.spi_nor_hwcaps* %6, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %92

73:                                               ; preds = %55
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @SPI_RX_QUAD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i32, i32* @SPIFI_CTRL_DUAL, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* @SNOR_HWCAPS_READ_1_1_4, align 4
  %84 = getelementptr inbounds %struct.spi_nor_hwcaps, %struct.spi_nor_hwcaps* %6, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %91

87:                                               ; preds = %73
  %88 = load i32, i32* @SPIFI_CTRL_DUAL, align 4
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %87, %78
  br label %92

92:                                               ; preds = %91, %65
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @SPI_CPHA, align 4
  %95 = load i32, i32* @SPI_CPOL, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  switch i32 %97, label %107 [
    i32 129, label %98
    i32 128, label %103
  ]

98:                                               ; preds = %92
  %99 = load i32, i32* @SPIFI_CTRL_MODE3, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %7, align 4
  br label %114

103:                                              ; preds = %92
  %104 = load i32, i32* @SPIFI_CTRL_MODE3, align 4
  %105 = load i32, i32* %7, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %7, align 4
  br label %114

107:                                              ; preds = %92
  %108 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %109 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %195

114:                                              ; preds = %103, %98
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %117 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SPIFI_CTRL, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel(i32 %115, i64 %120)
  %122 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %123 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %126 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 7
  store i32 %124, i32* %127, align 8
  %128 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %129 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %128, i32 0, i32 1
  %130 = load %struct.device_node*, %struct.device_node** %5, align 8
  %131 = call i32 @spi_nor_set_flash_node(%struct.TYPE_4__* %129, %struct.device_node* %130)
  %132 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %133 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %134 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 6
  store %struct.nxp_spifi* %132, %struct.nxp_spifi** %135, align 8
  %136 = load i32, i32* @nxp_spifi_read, align 4
  %137 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %138 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 5
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* @nxp_spifi_write, align 4
  %141 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %142 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 4
  store i32 %140, i32* %143, align 8
  %144 = load i32, i32* @nxp_spifi_erase, align 4
  %145 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %146 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* @nxp_spifi_read_reg, align 4
  %149 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %150 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  store i32 %148, i32* %151, align 8
  %152 = load i32, i32* @nxp_spifi_write_reg, align 4
  %153 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %154 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 4
  %156 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %157 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %156, i32 0, i32 1
  %158 = call i32 @nxp_spifi_dummy_id_read(%struct.TYPE_4__* %157)
  %159 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %160 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %159, i32 0, i32 1
  %161 = call i32 @spi_nor_scan(%struct.TYPE_4__* %160, i32* null, %struct.spi_nor_hwcaps* %6)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %114
  %165 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %166 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @dev_err(i32 %167, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* %3, align 4
  br label %195

170:                                              ; preds = %114
  %171 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %172 = call i32 @nxp_spifi_setup_memory_cmd(%struct.nxp_spifi* %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %177 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @dev_err(i32 %178, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %3, align 4
  br label %195

181:                                              ; preds = %170
  %182 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %183 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = call i32 @mtd_device_register(i32* %184, i32* null, i32 0)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %181
  %189 = load %struct.nxp_spifi*, %struct.nxp_spifi** %4, align 8
  %190 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @dev_err(i32 %191, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %193 = load i32, i32* %10, align 4
  store i32 %193, i32* %3, align 4
  br label %195

194:                                              ; preds = %181
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %194, %188, %175, %164, %107, %31
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @SPIFI_CTRL_TIMEOUT(i32) #1

declare dso_local i32 @SPIFI_CTRL_CSHIGH(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spi_nor_set_flash_node(%struct.TYPE_4__*, %struct.device_node*) #1

declare dso_local i32 @nxp_spifi_dummy_id_read(%struct.TYPE_4__*) #1

declare dso_local i32 @spi_nor_scan(%struct.TYPE_4__*, i32*, %struct.spi_nor_hwcaps*) #1

declare dso_local i32 @nxp_spifi_setup_memory_cmd(%struct.nxp_spifi*) #1

declare dso_local i32 @mtd_device_register(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
