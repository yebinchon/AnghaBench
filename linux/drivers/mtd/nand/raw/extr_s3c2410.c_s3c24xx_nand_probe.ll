; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_s3c2410.c_s3c24xx_nand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_s3c2410.c_s3c24xx_nand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__, %struct.resource* }
%struct.TYPE_11__ = type { i64 }
%struct.resource = type { i32 }
%struct.s3c2410_platform_nand = type { i32, %struct.s3c2410_nand_set* }
%struct.s3c2410_nand_set = type { i32 }
%struct.s3c2410_nand_info = type { i32, %struct.s3c2410_nand_mtd*, i32, %struct.s3c2410_platform_nand*, %struct.TYPE_11__*, i32, %struct.TYPE_10__ }
%struct.s3c2410_nand_mtd = type { i32 }
%struct.TYPE_10__ = type { i32* }
%struct.mtd_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@s3c24xx_nand_controller_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@CLOCK_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"mapped registers at %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"initialising set %d (%p, info %p)\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to init cpufreq support\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"clock idle support enabled\0A\00", align 1
@CLOCK_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c24xx_nand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_nand_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.s3c2410_platform_nand*, align 8
  %5 = alloca %struct.s3c2410_nand_info*, align 8
  %6 = alloca %struct.s3c2410_nand_mtd*, align 8
  %7 = alloca %struct.s3c2410_nand_set*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mtd_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @devm_kzalloc(%struct.TYPE_11__* %15, i32 56, i32 %16)
  %18 = bitcast i8* %17 to %struct.s3c2410_nand_info*
  store %struct.s3c2410_nand_info* %18, %struct.s3c2410_nand_info** %5, align 8
  %19 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %20 = icmp eq %struct.s3c2410_nand_info* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %227

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %27 = call i32 @platform_set_drvdata(%struct.platform_device* %25, %struct.s3c2410_nand_info* %26)
  %28 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %29 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %28, i32 0, i32 6
  %30 = call i32 @nand_controller_init(%struct.TYPE_10__* %29)
  %31 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %32 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32* @s3c24xx_nand_controller_ops, i32** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @devm_clk_get(%struct.TYPE_11__* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %38 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %40 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %24
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @dev_err(%struct.TYPE_11__* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %227

50:                                               ; preds = %24
  %51 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %52 = load i32, i32* @CLOCK_ENABLE, align 4
  %53 = call i32 @s3c2410_nand_clk_set_state(%struct.s3c2410_nand_info* %51, i32 %52)
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = call i32 @s3c24xx_nand_probe_dt(%struct.platform_device* %60)
  store i32 %61, i32* %9, align 4
  br label %65

62:                                               ; preds = %50
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = call i32 @s3c24xx_nand_probe_pdata(%struct.platform_device* %63)
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %227

69:                                               ; preds = %65
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = call %struct.s3c2410_platform_nand* @to_nand_plat(%struct.platform_device* %70)
  store %struct.s3c2410_platform_nand* %71, %struct.s3c2410_platform_nand** %4, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 1
  %74 = load %struct.resource*, %struct.resource** %73, align 8
  store %struct.resource* %74, %struct.resource** %8, align 8
  %75 = load %struct.resource*, %struct.resource** %8, align 8
  %76 = call i32 @resource_size(%struct.resource* %75)
  store i32 %76, i32* %10, align 4
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %80 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %79, i32 0, i32 4
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %80, align 8
  %81 = load %struct.s3c2410_platform_nand*, %struct.s3c2410_platform_nand** %4, align 8
  %82 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %83 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %82, i32 0, i32 3
  store %struct.s3c2410_platform_nand* %81, %struct.s3c2410_platform_nand** %83, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.resource*, %struct.resource** %8, align 8
  %87 = call i32 @devm_ioremap_resource(%struct.TYPE_11__* %85, %struct.resource* %86)
  %88 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %89 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %91 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @IS_ERR(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %69
  %96 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %97 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @PTR_ERR(i32 %98)
  store i32 %99, i32* %9, align 4
  br label %227

100:                                              ; preds = %69
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %104 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dev_dbg(%struct.TYPE_11__* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load %struct.s3c2410_platform_nand*, %struct.s3c2410_platform_nand** %4, align 8
  %108 = getelementptr inbounds %struct.s3c2410_platform_nand, %struct.s3c2410_platform_nand* %107, i32 0, i32 1
  %109 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %108, align 8
  %110 = icmp ne %struct.s3c2410_nand_set* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %100
  %112 = load %struct.s3c2410_platform_nand*, %struct.s3c2410_platform_nand** %4, align 8
  %113 = getelementptr inbounds %struct.s3c2410_platform_nand, %struct.s3c2410_platform_nand* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %116, label %119

116:                                              ; preds = %111, %100
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  br label %227

119:                                              ; preds = %111
  %120 = load %struct.s3c2410_platform_nand*, %struct.s3c2410_platform_nand** %4, align 8
  %121 = getelementptr inbounds %struct.s3c2410_platform_nand, %struct.s3c2410_platform_nand* %120, i32 0, i32 1
  %122 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %121, align 8
  store %struct.s3c2410_nand_set* %122, %struct.s3c2410_nand_set** %7, align 8
  %123 = load %struct.s3c2410_platform_nand*, %struct.s3c2410_platform_nand** %4, align 8
  %124 = getelementptr inbounds %struct.s3c2410_platform_nand, %struct.s3c2410_platform_nand* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %128 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 4
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %10, align 4
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call i8* @devm_kzalloc(%struct.TYPE_11__* %134, i32 %135, i32 %136)
  %138 = bitcast i8* %137 to %struct.s3c2410_nand_mtd*
  %139 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %140 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %139, i32 0, i32 1
  store %struct.s3c2410_nand_mtd* %138, %struct.s3c2410_nand_mtd** %140, align 8
  %141 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %142 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %141, i32 0, i32 1
  %143 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %142, align 8
  %144 = icmp eq %struct.s3c2410_nand_mtd* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %119
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %9, align 4
  br label %227

148:                                              ; preds = %119
  %149 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %150 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %149, i32 0, i32 1
  %151 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %150, align 8
  store %struct.s3c2410_nand_mtd* %151, %struct.s3c2410_nand_mtd** %6, align 8
  store i32 0, i32* %12, align 4
  br label %152

152:                                              ; preds = %193, %148
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %200

156:                                              ; preds = %152
  %157 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %6, align 8
  %158 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %157, i32 0, i32 0
  %159 = call %struct.mtd_info* @nand_to_mtd(i32* %158)
  store %struct.mtd_info* %159, %struct.mtd_info** %13, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %6, align 8
  %162 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %163 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %160, %struct.s3c2410_nand_mtd* %161, %struct.s3c2410_nand_info* %162)
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %167 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  store %struct.TYPE_11__* %165, %struct.TYPE_11__** %168, align 8
  %169 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %170 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %6, align 8
  %171 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %7, align 8
  %172 = call i32 @s3c2410_nand_init_chip(%struct.s3c2410_nand_info* %169, %struct.s3c2410_nand_mtd* %170, %struct.s3c2410_nand_set* %171)
  %173 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %6, align 8
  %174 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %173, i32 0, i32 0
  %175 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %7, align 8
  %176 = icmp ne %struct.s3c2410_nand_set* %175, null
  br i1 %176, label %177, label %181

177:                                              ; preds = %156
  %178 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %7, align 8
  %179 = getelementptr inbounds %struct.s3c2410_nand_set, %struct.s3c2410_nand_set* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  br label %182

181:                                              ; preds = %156
  br label %182

182:                                              ; preds = %181, %177
  %183 = phi i32 [ %180, %177 ], [ 1, %181 ]
  %184 = call i32 @nand_scan(i32* %174, i32 %183)
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %227

188:                                              ; preds = %182
  %189 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %190 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %6, align 8
  %191 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %7, align 8
  %192 = call i32 @s3c2410_nand_add_partition(%struct.s3c2410_nand_info* %189, %struct.s3c2410_nand_mtd* %190, %struct.s3c2410_nand_set* %191)
  br label %193

193:                                              ; preds = %188
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %12, align 4
  %196 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %6, align 8
  %197 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %196, i32 1
  store %struct.s3c2410_nand_mtd* %197, %struct.s3c2410_nand_mtd** %6, align 8
  %198 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %7, align 8
  %199 = getelementptr inbounds %struct.s3c2410_nand_set, %struct.s3c2410_nand_set* %198, i32 1
  store %struct.s3c2410_nand_set* %199, %struct.s3c2410_nand_set** %7, align 8
  br label %152

200:                                              ; preds = %152
  %201 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %202 = call i32 @s3c2410_nand_inithw(%struct.s3c2410_nand_info* %201)
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  br label %227

206:                                              ; preds = %200
  %207 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %208 = call i32 @s3c2410_nand_cpufreq_register(%struct.s3c2410_nand_info* %207)
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = call i32 @dev_err(%struct.TYPE_11__* %213, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %227

215:                                              ; preds = %206
  %216 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %217 = call i64 @allow_clk_suspend(%struct.s3c2410_nand_info* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %215
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = call i32 @dev_info(%struct.TYPE_11__* %221, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %223 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %224 = load i32, i32* @CLOCK_SUSPEND, align 4
  %225 = call i32 @s3c2410_nand_clk_set_state(%struct.s3c2410_nand_info* %223, i32 %224)
  br label %226

226:                                              ; preds = %219, %215
  store i32 0, i32* %2, align 4
  br label %237

227:                                              ; preds = %211, %205, %187, %145, %116, %95, %68, %44, %21
  %228 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %229 = call i32 @s3c24xx_nand_remove(%struct.platform_device* %228)
  %230 = load i32, i32* %9, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load i32, i32* @EINVAL, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %9, align 4
  br label %235

235:                                              ; preds = %232, %227
  %236 = load i32, i32* %9, align 4
  store i32 %236, i32* %2, align 4
  br label %237

237:                                              ; preds = %235, %226
  %238 = load i32, i32* %2, align 4
  ret i32 %238
}

declare dso_local i8* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.s3c2410_nand_info*) #1

declare dso_local i32 @nand_controller_init(%struct.TYPE_10__*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @s3c2410_nand_clk_set_state(%struct.s3c2410_nand_info*, i32) #1

declare dso_local i32 @s3c24xx_nand_probe_dt(%struct.platform_device*) #1

declare dso_local i32 @s3c24xx_nand_probe_pdata(%struct.platform_device*) #1

declare dso_local %struct.s3c2410_platform_nand* @to_nand_plat(%struct.platform_device*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_info*) #1

declare dso_local i32 @s3c2410_nand_init_chip(%struct.s3c2410_nand_info*, %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_set*) #1

declare dso_local i32 @nand_scan(i32*, i32) #1

declare dso_local i32 @s3c2410_nand_add_partition(%struct.s3c2410_nand_info*, %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_set*) #1

declare dso_local i32 @s3c2410_nand_inithw(%struct.s3c2410_nand_info*) #1

declare dso_local i32 @s3c2410_nand_cpufreq_register(%struct.s3c2410_nand_info*) #1

declare dso_local i64 @allow_clk_suspend(%struct.s3c2410_nand_info*) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @s3c24xx_nand_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
