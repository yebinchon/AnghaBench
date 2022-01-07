; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32, i32, i32*, i32* }
%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.fdp1_dev = type { i32, i32, %struct.clk*, %struct.TYPE_14__*, i32, %struct.video_device, i32, %struct.clk*, %struct.clk*, i32, i32, i32, %struct.TYPE_13__*, i32, i32 }
%struct.clk = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cannot find IRQ\0A\00", align 1
@fdp1_irq_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot claim IRQ %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"renesas,fcp\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"FCP not found (%ld)\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@m2m_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to init mem2mem device\0A\00", align 1
@fdp1_videodev = common dso_local global %struct.video_device zeroinitializer, align 8
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Device registered as /dev/video%d\0A\00", align 1
@FD1_IP_INTDATA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"FDP1 Version R-Car H3 ES1\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"FDP1 Version R-Car M3-W\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"FDP1 Version R-Car H3\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"FDP1 Version R-Car M3N\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"FDP1 Version R-Car E3\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"FDP1 Unidentifiable (0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fdp1_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdp1_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fdp1_dev*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.fdp1_dev* @devm_kzalloc(%struct.TYPE_14__* %13, i32 112, i32 %14)
  store %struct.fdp1_dev* %15, %struct.fdp1_dev** %4, align 8
  %16 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %17 = icmp ne %struct.fdp1_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %286

21:                                               ; preds = %1
  %22 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %23 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %22, i32 0, i32 11
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %26 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %25, i32 0, i32 14
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %29 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %28, i32 0, i32 13
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %49, %21
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %34 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %33, i32 0, i32 12
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %35)
  %37 = icmp ult i32 %32, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %40 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %39, i32 0, i32 12
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %47 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %46, i32 0, i32 11
  %48 = call i32 @list_add(i32* %45, i32* %47)
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %31

52:                                               ; preds = %31
  %53 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %54 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %53, i32 0, i32 4
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %57 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %56, i32 0, i32 10
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %60 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %59, i32 0, i32 9
  %61 = call i32 @spin_lock_init(i32* %60)
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %65 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %64, i32 0, i32 3
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %65, align 8
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %68 = call i32 @platform_set_drvdata(%struct.platform_device* %66, %struct.fdp1_dev* %67)
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = load i32, i32* @IORESOURCE_MEM, align 4
  %71 = call %struct.resource* @platform_get_resource(%struct.platform_device* %69, i32 %70, i32 0)
  store %struct.resource* %71, %struct.resource** %7, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.resource*, %struct.resource** %7, align 8
  %75 = call %struct.clk* @devm_ioremap_resource(%struct.TYPE_14__* %73, %struct.resource* %74)
  %76 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %77 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %76, i32 0, i32 8
  store %struct.clk* %75, %struct.clk** %77, align 8
  %78 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %79 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %78, i32 0, i32 8
  %80 = load %struct.clk*, %struct.clk** %79, align 8
  %81 = call i64 @IS_ERR(%struct.clk* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %52
  %84 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %85 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %84, i32 0, i32 8
  %86 = load %struct.clk*, %struct.clk** %85, align 8
  %87 = call i32 @PTR_ERR(%struct.clk* %86)
  store i32 %87, i32* %2, align 4
  br label %286

88:                                               ; preds = %52
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = call i32 @platform_get_irq(%struct.platform_device* %89, i32 0)
  store i32 %90, i32* %10, align 4
  %91 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %92 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %2, align 4
  br label %286

100:                                              ; preds = %88
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %104 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @fdp1_irq_handler, align 4
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i32 @dev_name(%struct.TYPE_14__* %108)
  %110 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %111 = call i32 @devm_request_irq(%struct.TYPE_14__* %102, i32 %105, i32 %106, i32 0, i32 %109, %struct.fdp1_dev* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %100
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %118 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %2, align 4
  br label %286

122:                                              ; preds = %100
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call %struct.device_node* @of_parse_phandle(i32 %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %127, %struct.device_node** %6, align 8
  %128 = load %struct.device_node*, %struct.device_node** %6, align 8
  %129 = icmp ne %struct.device_node* %128, null
  br i1 %129, label %130, label %155

130:                                              ; preds = %122
  %131 = load %struct.device_node*, %struct.device_node** %6, align 8
  %132 = call %struct.clk* @rcar_fcp_get(%struct.device_node* %131)
  %133 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %134 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %133, i32 0, i32 7
  store %struct.clk* %132, %struct.clk** %134, align 8
  %135 = load %struct.device_node*, %struct.device_node** %6, align 8
  %136 = call i32 @of_node_put(%struct.device_node* %135)
  %137 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %138 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %137, i32 0, i32 7
  %139 = load %struct.clk*, %struct.clk** %138, align 8
  %140 = call i64 @IS_ERR(%struct.clk* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %130
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %146 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %145, i32 0, i32 7
  %147 = load %struct.clk*, %struct.clk** %146, align 8
  %148 = call i32 @PTR_ERR(%struct.clk* %147)
  %149 = call i32 @dev_dbg(%struct.TYPE_14__* %144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  %150 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %151 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %150, i32 0, i32 7
  %152 = load %struct.clk*, %struct.clk** %151, align 8
  %153 = call i32 @PTR_ERR(%struct.clk* %152)
  store i32 %153, i32* %2, align 4
  br label %286

154:                                              ; preds = %130
  br label %155

155:                                              ; preds = %154, %122
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call %struct.clk* @clk_get(%struct.TYPE_14__* %157, i32* null)
  store %struct.clk* %158, %struct.clk** %8, align 8
  %159 = load %struct.clk*, %struct.clk** %8, align 8
  %160 = call i64 @IS_ERR(%struct.clk* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load %struct.clk*, %struct.clk** %8, align 8
  %164 = call i32 @PTR_ERR(%struct.clk* %163)
  store i32 %164, i32* %2, align 4
  br label %286

165:                                              ; preds = %155
  %166 = load %struct.clk*, %struct.clk** %8, align 8
  %167 = call i32 @clk_get_rate(%struct.clk* %166)
  %168 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %169 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %168, i32 0, i32 6
  store i32 %167, i32* %169, align 8
  %170 = load %struct.clk*, %struct.clk** %8, align 8
  %171 = call i32 @clk_put(%struct.clk* %170)
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %175 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %174, i32 0, i32 1
  %176 = call i32 @v4l2_device_register(%struct.TYPE_14__* %173, i32* %175)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %165
  %180 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %181 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %180, i32 0, i32 1
  %182 = call i32 @v4l2_err(i32* %181, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %183 = load i32, i32* %10, align 4
  store i32 %183, i32* %2, align 4
  br label %286

184:                                              ; preds = %165
  %185 = call %struct.clk* @v4l2_m2m_init(i32* @m2m_ops)
  %186 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %187 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %186, i32 0, i32 2
  store %struct.clk* %185, %struct.clk** %187, align 8
  %188 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %189 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %188, i32 0, i32 2
  %190 = load %struct.clk*, %struct.clk** %189, align 8
  %191 = call i64 @IS_ERR(%struct.clk* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %184
  %194 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %195 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %194, i32 0, i32 1
  %196 = call i32 @v4l2_err(i32* %195, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %197 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %198 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %197, i32 0, i32 2
  %199 = load %struct.clk*, %struct.clk** %198, align 8
  %200 = call i32 @PTR_ERR(%struct.clk* %199)
  store i32 %200, i32* %10, align 4
  br label %281

201:                                              ; preds = %184
  %202 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %203 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %202, i32 0, i32 5
  %204 = bitcast %struct.video_device* %203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %204, i8* align 8 bitcast (%struct.video_device* @fdp1_videodev to i8*), i64 24, i1 false)
  %205 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %206 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %205, i32 0, i32 5
  store %struct.video_device* %206, %struct.video_device** %5, align 8
  %207 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %208 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %207, i32 0, i32 4
  %209 = load %struct.video_device*, %struct.video_device** %5, align 8
  %210 = getelementptr inbounds %struct.video_device, %struct.video_device* %209, i32 0, i32 3
  store i32* %208, i32** %210, align 8
  %211 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %212 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %211, i32 0, i32 1
  %213 = load %struct.video_device*, %struct.video_device** %5, align 8
  %214 = getelementptr inbounds %struct.video_device, %struct.video_device* %213, i32 0, i32 2
  store i32* %212, i32** %214, align 8
  %215 = load %struct.video_device*, %struct.video_device** %5, align 8
  %216 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %217 = call i32 @video_set_drvdata(%struct.video_device* %215, %struct.fdp1_dev* %216)
  %218 = load %struct.video_device*, %struct.video_device** %5, align 8
  %219 = getelementptr inbounds %struct.video_device, %struct.video_device* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* getelementptr inbounds (%struct.video_device, %struct.video_device* @fdp1_videodev, i32 0, i32 1), align 4
  %222 = call i32 @strscpy(i32 %220, i32 %221, i32 4)
  %223 = load %struct.video_device*, %struct.video_device** %5, align 8
  %224 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %225 = call i32 @video_register_device(%struct.video_device* %223, i32 %224, i32 0)
  store i32 %225, i32* %10, align 4
  %226 = load i32, i32* %10, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %201
  %229 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %230 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %229, i32 0, i32 1
  %231 = call i32 @v4l2_err(i32* %230, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %276

232:                                              ; preds = %201
  %233 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %234 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %233, i32 0, i32 1
  %235 = load %struct.video_device*, %struct.video_device** %5, align 8
  %236 = getelementptr inbounds %struct.video_device, %struct.video_device* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @v4l2_info(i32* %234, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %237)
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %239, i32 0, i32 0
  %241 = call i32 @pm_runtime_enable(%struct.TYPE_14__* %240)
  %242 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %243 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %242, i32 0, i32 3
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %243, align 8
  %245 = call i32 @pm_runtime_get_sync(%struct.TYPE_14__* %244)
  %246 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %247 = load i32, i32* @FD1_IP_INTDATA, align 4
  %248 = call i32 @fdp1_read(%struct.fdp1_dev* %246, i32 %247)
  store i32 %248, i32* %11, align 4
  %249 = load i32, i32* %11, align 4
  switch i32 %249, label %265 [
    i32 130, label %250
    i32 128, label %253
    i32 131, label %256
    i32 129, label %259
    i32 132, label %262
  ]

250:                                              ; preds = %232
  %251 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %252 = call i32 @dprintk(%struct.fdp1_dev* %251, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %271

253:                                              ; preds = %232
  %254 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %255 = call i32 @dprintk(%struct.fdp1_dev* %254, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %271

256:                                              ; preds = %232
  %257 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %258 = call i32 @dprintk(%struct.fdp1_dev* %257, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %271

259:                                              ; preds = %232
  %260 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %261 = call i32 @dprintk(%struct.fdp1_dev* %260, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %271

262:                                              ; preds = %232
  %263 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %264 = call i32 @dprintk(%struct.fdp1_dev* %263, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %271

265:                                              ; preds = %232
  %266 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %267 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %266, i32 0, i32 3
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %267, align 8
  %269 = load i32, i32* %11, align 4
  %270 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %268, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %265, %262, %259, %256, %253, %250
  %272 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %273 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %272, i32 0, i32 3
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %273, align 8
  %275 = call i32 @pm_runtime_put(%struct.TYPE_14__* %274)
  store i32 0, i32* %2, align 4
  br label %286

276:                                              ; preds = %228
  %277 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %278 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %277, i32 0, i32 2
  %279 = load %struct.clk*, %struct.clk** %278, align 8
  %280 = call i32 @v4l2_m2m_release(%struct.clk* %279)
  br label %281

281:                                              ; preds = %276, %193
  %282 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %283 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %282, i32 0, i32 1
  %284 = call i32 @v4l2_device_unregister(i32* %283)
  %285 = load i32, i32* %10, align 4
  store i32 %285, i32* %2, align 4
  br label %286

286:                                              ; preds = %281, %271, %179, %162, %142, %114, %95, %83, %18
  %287 = load i32, i32* %2, align 4
  ret i32 %287
}

declare dso_local %struct.fdp1_dev* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fdp1_dev*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.TYPE_14__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_14__*, i32, i32, i32, i32, %struct.fdp1_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_14__*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.clk* @rcar_fcp_get(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local %struct.clk* @clk_get(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @v4l2_device_register(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local %struct.clk* @v4l2_m2m_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.fdp1_dev*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_14__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_14__*) #1

declare dso_local i32 @fdp1_read(%struct.fdp1_dev*, i32) #1

declare dso_local i32 @dprintk(%struct.fdp1_dev*, i8*) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_14__*) #1

declare dso_local i32 @v4l2_m2m_release(%struct.clk*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
