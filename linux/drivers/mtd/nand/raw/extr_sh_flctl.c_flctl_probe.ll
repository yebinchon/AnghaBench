; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_flctl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_flctl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.resource = type { i64 }
%struct.sh_flctl = type { i32, i32, i64, i32, %struct.platform_device*, %struct.nand_chip, i64, i32 }
%struct.nand_chip = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.mtd_info = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.sh_flctl_platform_data = type { i32, i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to get flste irq data: %d\0A\00", align 1
@flctl_handle_flste = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"flste\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"request interrupt failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"no setup data defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STERINTE = common dso_local global i32 0, align 4
@ECERB = common dso_local global i32 0, align 4
@flctl_read_byte = common dso_local global i32 0, align 4
@flctl_write_buf = common dso_local global i32 0, align 4
@flctl_read_buf = common dso_local global i32 0, align 4
@flctl_select_chip = common dso_local global i32 0, align 4
@flctl_cmdfunc = common dso_local global i32 0, align 4
@nand_get_set_features_notsupp = common dso_local global i8* null, align 8
@SEL_16BIT = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NAND_BBM_FIRSTPAGE = common dso_local global i32 0, align 4
@NAND_BBM_SECONDPAGE = common dso_local global i32 0, align 4
@flctl_nand_controller_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @flctl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flctl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.sh_flctl*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca %struct.sh_flctl_platform_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sh_flctl* @devm_kzalloc(%struct.TYPE_16__* %12, i32 112, i32 %13)
  store %struct.sh_flctl* %14, %struct.sh_flctl** %5, align 8
  %15 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %16 = icmp ne %struct.sh_flctl* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %237

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %4, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.resource*, %struct.resource** %4, align 8
  %27 = call i32 @devm_ioremap_resource(%struct.TYPE_16__* %25, %struct.resource* %26)
  %28 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %29 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %31 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %20
  %36 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %37 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %237

40:                                               ; preds = %20
  %41 = load %struct.resource*, %struct.resource** %4, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 36
  %45 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %46 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %45, i32 0, i32 6
  store i64 %44, i64* %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = call i32 @platform_get_irq(%struct.platform_device* %47, i32 0)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %40
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %2, align 4
  br label %237

57:                                               ; preds = %40
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @flctl_handle_flste, align 4
  %62 = load i32, i32* @IRQF_SHARED, align 4
  %63 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %64 = call i32 @devm_request_irq(%struct.TYPE_16__* %59, i32 %60, i32 %61, i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.sh_flctl* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %2, align 4
  br label %237

72:                                               ; preds = %57
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call %struct.sh_flctl_platform_data* @flctl_parse_dt(%struct.TYPE_16__* %80)
  store %struct.sh_flctl_platform_data* %81, %struct.sh_flctl_platform_data** %8, align 8
  br label %86

82:                                               ; preds = %72
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call %struct.sh_flctl_platform_data* @dev_get_platdata(%struct.TYPE_16__* %84)
  store %struct.sh_flctl_platform_data* %85, %struct.sh_flctl_platform_data** %8, align 8
  br label %86

86:                                               ; preds = %82, %78
  %87 = load %struct.sh_flctl_platform_data*, %struct.sh_flctl_platform_data** %8, align 8
  %88 = icmp ne %struct.sh_flctl_platform_data* %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %237

95:                                               ; preds = %86
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %98 = call i32 @platform_set_drvdata(%struct.platform_device* %96, %struct.sh_flctl* %97)
  %99 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %100 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %99, i32 0, i32 5
  store %struct.nand_chip* %100, %struct.nand_chip** %7, align 8
  %101 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %102 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %101)
  store %struct.mtd_info* %102, %struct.mtd_info** %6, align 8
  %103 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @nand_set_flash_node(%struct.nand_chip* %103, i32 %107)
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %112 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  store %struct.TYPE_16__* %110, %struct.TYPE_16__** %113, align 8
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %116 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %115, i32 0, i32 4
  store %struct.platform_device* %114, %struct.platform_device** %116, align 8
  %117 = load %struct.sh_flctl_platform_data*, %struct.sh_flctl_platform_data** %8, align 8
  %118 = getelementptr inbounds %struct.sh_flctl_platform_data, %struct.sh_flctl_platform_data* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %121 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  %122 = load %struct.sh_flctl_platform_data*, %struct.sh_flctl_platform_data** %8, align 8
  %123 = getelementptr inbounds %struct.sh_flctl_platform_data, %struct.sh_flctl_platform_data* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %126 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  %127 = load %struct.sh_flctl_platform_data*, %struct.sh_flctl_platform_data** %8, align 8
  %128 = getelementptr inbounds %struct.sh_flctl_platform_data, %struct.sh_flctl_platform_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %131 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %133 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %95
  %137 = load i32, i32* @STERINTE, align 4
  %138 = load i32, i32* @ECERB, align 4
  %139 = or i32 %137, %138
  br label %142

140:                                              ; preds = %95
  %141 = load i32, i32* @STERINTE, align 4
  br label %142

142:                                              ; preds = %140, %136
  %143 = phi i32 [ %139, %136 ], [ %141, %140 ]
  %144 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %145 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %147 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  store i32 20, i32* %148, align 8
  %149 = load i32, i32* @flctl_read_byte, align 4
  %150 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %151 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 8
  store i32 %149, i32* %152, align 8
  %153 = load i32, i32* @flctl_write_buf, align 4
  %154 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %155 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 7
  store i32 %153, i32* %156, align 4
  %157 = load i32, i32* @flctl_read_buf, align 4
  %158 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %159 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 6
  store i32 %157, i32* %160, align 8
  %161 = load i32, i32* @flctl_select_chip, align 4
  %162 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %163 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 5
  store i32 %161, i32* %164, align 4
  %165 = load i32, i32* @flctl_cmdfunc, align 4
  %166 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %167 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 4
  store i32 %165, i32* %168, align 8
  %169 = load i8*, i8** @nand_get_set_features_notsupp, align 8
  %170 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %171 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 3
  store i8* %169, i8** %172, align 8
  %173 = load i8*, i8** @nand_get_set_features_notsupp, align 8
  %174 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %175 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 2
  store i8* %173, i8** %176, align 8
  %177 = load %struct.sh_flctl_platform_data*, %struct.sh_flctl_platform_data** %8, align 8
  %178 = getelementptr inbounds %struct.sh_flctl_platform_data, %struct.sh_flctl_platform_data* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @SEL_16BIT, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %142
  %184 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %185 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %186 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %183, %142
  %190 = load i32, i32* @NAND_BBM_FIRSTPAGE, align 4
  %191 = load i32, i32* @NAND_BBM_SECONDPAGE, align 4
  %192 = or i32 %190, %191
  %193 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %194 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = call i32 @pm_runtime_enable(%struct.TYPE_16__* %198)
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %200, i32 0, i32 0
  %202 = call i32 @pm_runtime_resume(%struct.TYPE_16__* %201)
  %203 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %204 = call i32 @flctl_setup_dma(%struct.sh_flctl* %203)
  %205 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %206 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  store i32* @flctl_nand_controller_ops, i32** %208, align 8
  %209 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %210 = call i32 @nand_scan(%struct.nand_chip* %209, i32 1)
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %9, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %189
  br label %230

214:                                              ; preds = %189
  %215 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %216 = load %struct.sh_flctl_platform_data*, %struct.sh_flctl_platform_data** %8, align 8
  %217 = getelementptr inbounds %struct.sh_flctl_platform_data, %struct.sh_flctl_platform_data* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.sh_flctl_platform_data*, %struct.sh_flctl_platform_data** %8, align 8
  %220 = getelementptr inbounds %struct.sh_flctl_platform_data, %struct.sh_flctl_platform_data* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @mtd_device_register(%struct.mtd_info* %215, i32 %218, i32 %221)
  store i32 %222, i32* %9, align 4
  %223 = load i32, i32* %9, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %214
  br label %227

226:                                              ; preds = %214
  store i32 0, i32* %2, align 4
  br label %237

227:                                              ; preds = %225
  %228 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %229 = call i32 @nand_cleanup(%struct.nand_chip* %228)
  br label %230

230:                                              ; preds = %227, %213
  %231 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %232 = call i32 @flctl_release_dma(%struct.sh_flctl* %231)
  %233 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %234 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %233, i32 0, i32 0
  %235 = call i32 @pm_runtime_disable(%struct.TYPE_16__* %234)
  %236 = load i32, i32* %9, align 4
  store i32 %236, i32* %2, align 4
  br label %237

237:                                              ; preds = %230, %226, %89, %67, %51, %35, %17
  %238 = load i32, i32* %2, align 4
  ret i32 %238
}

declare dso_local %struct.sh_flctl* @devm_kzalloc(%struct.TYPE_16__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_16__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_16__*, i32, i32, i32, i8*, %struct.sh_flctl*) #1

declare dso_local %struct.sh_flctl_platform_data* @flctl_parse_dt(%struct.TYPE_16__*) #1

declare dso_local %struct.sh_flctl_platform_data* @dev_get_platdata(%struct.TYPE_16__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sh_flctl*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_16__*) #1

declare dso_local i32 @pm_runtime_resume(%struct.TYPE_16__*) #1

declare dso_local i32 @flctl_setup_dma(%struct.sh_flctl*) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

declare dso_local i32 @flctl_release_dma(%struct.sh_flctl*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
