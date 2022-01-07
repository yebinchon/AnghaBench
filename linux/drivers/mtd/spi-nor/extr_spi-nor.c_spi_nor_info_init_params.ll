; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_info_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_info_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.flash_info*, %struct.spi_nor_flash_parameter }
%struct.flash_info = type { i32, i32, i32, i32 }
%struct.spi_nor_flash_parameter = type { i32, i32*, %struct.TYPE_2__, i32*, i32, i32, i32, i32, %struct.spi_nor_erase_map }
%struct.TYPE_2__ = type { i32 }
%struct.spi_nor_erase_map = type { i32* }
%struct.device_node = type { i32 }

@spansion_quad_enable = common dso_local global i32 0, align 4
@spansion_set_4byte = common dso_local global i32 0, align 4
@spi_nor_default_setup = common dso_local global i32 0, align 4
@SPI_NOR_NO_FR = common dso_local global i32 0, align 4
@SNOR_HWCAPS_READ_FAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"m25p,fast-read\00", align 1
@SNOR_HWCAPS_READ = common dso_local global i32 0, align 4
@SNOR_CMD_READ = common dso_local global i64 0, align 8
@SPINOR_OP_READ = common dso_local global i32 0, align 4
@SNOR_PROTO_1_1_1 = common dso_local global i32 0, align 4
@SNOR_CMD_READ_FAST = common dso_local global i64 0, align 8
@SPINOR_OP_READ_FAST = common dso_local global i32 0, align 4
@SPI_NOR_DUAL_READ = common dso_local global i32 0, align 4
@SNOR_HWCAPS_READ_1_1_2 = common dso_local global i32 0, align 4
@SNOR_CMD_READ_1_1_2 = common dso_local global i64 0, align 8
@SPINOR_OP_READ_1_1_2 = common dso_local global i32 0, align 4
@SNOR_PROTO_1_1_2 = common dso_local global i32 0, align 4
@SPI_NOR_QUAD_READ = common dso_local global i32 0, align 4
@SNOR_HWCAPS_READ_1_1_4 = common dso_local global i32 0, align 4
@SNOR_CMD_READ_1_1_4 = common dso_local global i64 0, align 8
@SPINOR_OP_READ_1_1_4 = common dso_local global i32 0, align 4
@SNOR_PROTO_1_1_4 = common dso_local global i32 0, align 4
@SPI_NOR_OCTAL_READ = common dso_local global i32 0, align 4
@SNOR_HWCAPS_READ_1_1_8 = common dso_local global i32 0, align 4
@SNOR_CMD_READ_1_1_8 = common dso_local global i64 0, align 8
@SPINOR_OP_READ_1_1_8 = common dso_local global i32 0, align 4
@SNOR_PROTO_1_1_8 = common dso_local global i32 0, align 4
@SNOR_HWCAPS_PP = common dso_local global i32 0, align 4
@SNOR_CMD_PP = common dso_local global i64 0, align 8
@SPINOR_OP_PP = common dso_local global i32 0, align 4
@SECT_4K_PMC = common dso_local global i32 0, align 4
@SPINOR_OP_BE_4K_PMC = common dso_local global i32 0, align 4
@SECT_4K = common dso_local global i32 0, align 4
@SPINOR_OP_BE_4K = common dso_local global i32 0, align 4
@SPINOR_OP_SE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_nor*)* @spi_nor_info_init_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_nor_info_init_params(%struct.spi_nor* %0) #0 {
  %2 = alloca %struct.spi_nor*, align 8
  %3 = alloca %struct.spi_nor_flash_parameter*, align 8
  %4 = alloca %struct.spi_nor_erase_map*, align 8
  %5 = alloca %struct.flash_info*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %2, align 8
  %9 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %10 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %9, i32 0, i32 1
  store %struct.spi_nor_flash_parameter* %10, %struct.spi_nor_flash_parameter** %3, align 8
  %11 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %12 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %11, i32 0, i32 8
  store %struct.spi_nor_erase_map* %12, %struct.spi_nor_erase_map** %4, align 8
  %13 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %14 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %13, i32 0, i32 0
  %15 = load %struct.flash_info*, %struct.flash_info** %14, align 8
  store %struct.flash_info* %15, %struct.flash_info** %5, align 8
  %16 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %17 = call %struct.device_node* @spi_nor_get_flash_node(%struct.spi_nor* %16)
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  %18 = load i32, i32* @spansion_quad_enable, align 4
  %19 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %20 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @spansion_set_4byte, align 4
  %22 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %23 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @spi_nor_default_setup, align 4
  %25 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %26 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %28 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %31 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %35 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %37 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %40 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %42 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SPI_NOR_NO_FR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %69, label %47

47:                                               ; preds = %1
  %48 = load i32, i32* @SNOR_HWCAPS_READ_FAST, align 4
  %49 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %50 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 8
  %54 = load %struct.device_node*, %struct.device_node** %6, align 8
  %55 = icmp ne %struct.device_node* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %47
  %57 = load %struct.device_node*, %struct.device_node** %6, align 8
  %58 = call i32 @of_property_read_bool(%struct.device_node* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @SNOR_HWCAPS_READ_FAST, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %64 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %62
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %60, %56, %47
  br label %69

69:                                               ; preds = %68, %1
  %70 = load i32, i32* @SNOR_HWCAPS_READ, align 4
  %71 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %72 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 8
  %76 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %77 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @SNOR_CMD_READ, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* @SPINOR_OP_READ, align 4
  %82 = load i32, i32* @SNOR_PROTO_1_1_1, align 4
  %83 = call i32 @spi_nor_set_read_settings(i32* %80, i32 0, i32 0, i32 %81, i32 %82)
  %84 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %85 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SNOR_HWCAPS_READ_FAST, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %69
  %92 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %93 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @SNOR_CMD_READ_FAST, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* @SPINOR_OP_READ_FAST, align 4
  %98 = load i32, i32* @SNOR_PROTO_1_1_1, align 4
  %99 = call i32 @spi_nor_set_read_settings(i32* %96, i32 0, i32 8, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %91, %69
  %101 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %102 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @SPI_NOR_DUAL_READ, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %100
  %108 = load i32, i32* @SNOR_HWCAPS_READ_1_1_2, align 4
  %109 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %110 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %108
  store i32 %113, i32* %111, align 8
  %114 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %115 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @SNOR_CMD_READ_1_1_2, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* @SPINOR_OP_READ_1_1_2, align 4
  %120 = load i32, i32* @SNOR_PROTO_1_1_2, align 4
  %121 = call i32 @spi_nor_set_read_settings(i32* %118, i32 0, i32 8, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %107, %100
  %123 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %124 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @SPI_NOR_QUAD_READ, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %122
  %130 = load i32, i32* @SNOR_HWCAPS_READ_1_1_4, align 4
  %131 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %132 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %130
  store i32 %135, i32* %133, align 8
  %136 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %137 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @SNOR_CMD_READ_1_1_4, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* @SPINOR_OP_READ_1_1_4, align 4
  %142 = load i32, i32* @SNOR_PROTO_1_1_4, align 4
  %143 = call i32 @spi_nor_set_read_settings(i32* %140, i32 0, i32 8, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %129, %122
  %145 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %146 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @SPI_NOR_OCTAL_READ, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %144
  %152 = load i32, i32* @SNOR_HWCAPS_READ_1_1_8, align 4
  %153 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %154 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %152
  store i32 %157, i32* %155, align 8
  %158 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %159 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* @SNOR_CMD_READ_1_1_8, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* @SPINOR_OP_READ_1_1_8, align 4
  %164 = load i32, i32* @SNOR_PROTO_1_1_8, align 4
  %165 = call i32 @spi_nor_set_read_settings(i32* %162, i32 0, i32 8, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %151, %144
  %167 = load i32, i32* @SNOR_HWCAPS_PP, align 4
  %168 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %169 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %167
  store i32 %172, i32* %170, align 8
  %173 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %174 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* @SNOR_CMD_PP, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* @SPINOR_OP_PP, align 4
  %179 = load i32, i32* @SNOR_PROTO_1_1_1, align 4
  %180 = call i32 @spi_nor_set_pp_settings(i32* %177, i32 %178, i32 %179)
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %181 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %182 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @SECT_4K_PMC, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %166
  %188 = load i64, i64* %7, align 8
  %189 = call i64 @BIT(i64 %188)
  %190 = load i64, i64* %8, align 8
  %191 = or i64 %190, %189
  store i64 %191, i64* %8, align 8
  %192 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %4, align 8
  %193 = getelementptr inbounds %struct.spi_nor_erase_map, %struct.spi_nor_erase_map* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* %7, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* @SPINOR_OP_BE_4K_PMC, align 4
  %198 = call i32 @spi_nor_set_erase_type(i32* %196, i32 4096, i32 %197)
  %199 = load i64, i64* %7, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %7, align 8
  br label %223

201:                                              ; preds = %166
  %202 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %203 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @SECT_4K, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %201
  %209 = load i64, i64* %7, align 8
  %210 = call i64 @BIT(i64 %209)
  %211 = load i64, i64* %8, align 8
  %212 = or i64 %211, %210
  store i64 %212, i64* %8, align 8
  %213 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %4, align 8
  %214 = getelementptr inbounds %struct.spi_nor_erase_map, %struct.spi_nor_erase_map* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i64, i64* %7, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i32, i32* @SPINOR_OP_BE_4K, align 4
  %219 = call i32 @spi_nor_set_erase_type(i32* %217, i32 4096, i32 %218)
  %220 = load i64, i64* %7, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %7, align 8
  br label %222

222:                                              ; preds = %208, %201
  br label %223

223:                                              ; preds = %222, %187
  %224 = load i64, i64* %7, align 8
  %225 = call i64 @BIT(i64 %224)
  %226 = load i64, i64* %8, align 8
  %227 = or i64 %226, %225
  store i64 %227, i64* %8, align 8
  %228 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %4, align 8
  %229 = getelementptr inbounds %struct.spi_nor_erase_map, %struct.spi_nor_erase_map* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load i64, i64* %7, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  %233 = load %struct.flash_info*, %struct.flash_info** %5, align 8
  %234 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @SPINOR_OP_SE, align 4
  %237 = call i32 @spi_nor_set_erase_type(i32* %232, i32 %235, i32 %236)
  %238 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %4, align 8
  %239 = load i64, i64* %8, align 8
  %240 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %3, align 8
  %241 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @spi_nor_init_uniform_erase_map(%struct.spi_nor_erase_map* %238, i64 %239, i32 %242)
  ret void
}

declare dso_local %struct.device_node* @spi_nor_get_flash_node(%struct.spi_nor*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @spi_nor_set_read_settings(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @spi_nor_set_pp_settings(i32*, i32, i32) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @spi_nor_set_erase_type(i32*, i32, i32) #1

declare dso_local i32 @spi_nor_init_uniform_erase_map(%struct.spi_nor_erase_map*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
