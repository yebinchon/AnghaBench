; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.device_node = type { i32 }
%struct.v4l2_subdev = type { %struct.v4l2_ctrl_handler*, i32 }
%struct.regmap = type { i32 }
%struct.max2175 = type { i32, i32, i32, i64, %struct.v4l2_ctrl_handler, %struct.TYPE_13__*, i32, %struct.v4l2_subdev, i32, i8*, i8*, i8*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.i2c_client*, %struct.regmap* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.clk = type opaque

@.str = private unnamed_addr constant [13 x i8] c"maxim,master\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"maxim,am-hiz-filter\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"maxim,refout-load\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"invalid refout_load %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"cannot get clock %d\0A\00", align 1
@max2175_regmap_config = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"regmap init failed %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"xtal freq %luHz\0A\00", align 1
@max2175_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@max2175_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_RF_TUNER_LNA_GAIN = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@V4L2_CID_RF_TUNER_IF_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_RF_TUNER_PLL_LOCK = common dso_local global i32 0, align 4
@max2175_i2s_en = common dso_local global i32 0, align 4
@max2175_hsls = common dso_local global i32 0, align 4
@MAX2175_EU_XTAL_FREQ = common dso_local global i64 0, align 8
@max2175_eu_rx_mode = common dso_local global i32 0, align 4
@eu_rx_modes = common dso_local global i32 0, align 4
@eu_bands_rf = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@max2175_na_rx_mode = common dso_local global i32 0, align 4
@na_rx_modes = common dso_local global i32 0, align 4
@na_bands_rf = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"register subdev failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @max2175_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2175_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca %struct.fwnode_handle*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.v4l2_subdev*, align 8
  %12 = alloca %struct.regmap*, align 8
  %13 = alloca %struct.max2175*, align 8
  %14 = alloca %struct.clk*, align 8
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.device_node* @of_parse_phandle(i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %20, %struct.device_node** %10, align 8
  %21 = load %struct.device_node*, %struct.device_node** %10, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %24 = load %struct.device_node*, %struct.device_node** %10, align 8
  %25 = call i32 @of_node_put(%struct.device_node* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.fwnode_handle* @of_fwnode_handle(i32 %30)
  store %struct.fwnode_handle* %31, %struct.fwnode_handle** %9, align 8
  %32 = load %struct.fwnode_handle*, %struct.fwnode_handle** %9, align 8
  %33 = call i64 @fwnode_property_present(%struct.fwnode_handle* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %26
  %37 = load %struct.fwnode_handle*, %struct.fwnode_handle** %9, align 8
  %38 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %36
  %41 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @max2175_refout_load_to_bits(%struct.i2c_client* %41, i32 %42, i32* %7)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %263

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = call %struct.regmap* @devm_clk_get(%struct.TYPE_14__* %56, i32* null)
  %58 = bitcast %struct.regmap* %57 to %struct.clk*
  store %struct.clk* %58, %struct.clk** %14, align 8
  %59 = load %struct.clk*, %struct.clk** %14, align 8
  %60 = bitcast %struct.clk* %59 to %struct.regmap*
  %61 = call i64 @IS_ERR(%struct.regmap* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %54
  %64 = load %struct.clk*, %struct.clk** %14, align 8
  %65 = bitcast %struct.clk* %64 to %struct.regmap*
  %66 = call i32 @PTR_ERR(%struct.regmap* %65)
  store i32 %66, i32* %15, align 4
  %67 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = load i32, i32* %15, align 4
  %70 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %2, align 4
  br label %263

72:                                               ; preds = %54
  %73 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %74 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %73, i32* @max2175_regmap_config)
  store %struct.regmap* %74, %struct.regmap** %12, align 8
  %75 = load %struct.regmap*, %struct.regmap** %12, align 8
  %76 = call i64 @IS_ERR(%struct.regmap* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.regmap*, %struct.regmap** %12, align 8
  %80 = call i32 @PTR_ERR(%struct.regmap* %79)
  store i32 %80, i32* %15, align 4
  %81 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = load i32, i32* %15, align 4
  %84 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %263

87:                                               ; preds = %72
  %88 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 0
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call %struct.max2175* @devm_kzalloc(%struct.TYPE_14__* %89, i32 136, i32 %90)
  store %struct.max2175* %91, %struct.max2175** %13, align 8
  %92 = load %struct.max2175*, %struct.max2175** %13, align 8
  %93 = icmp eq %struct.max2175* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %263

97:                                               ; preds = %87
  %98 = load %struct.max2175*, %struct.max2175** %13, align 8
  %99 = getelementptr inbounds %struct.max2175, %struct.max2175* %98, i32 0, i32 7
  store %struct.v4l2_subdev* %99, %struct.v4l2_subdev** %11, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.max2175*, %struct.max2175** %13, align 8
  %102 = getelementptr inbounds %struct.max2175, %struct.max2175* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.max2175*, %struct.max2175** %13, align 8
  %105 = getelementptr inbounds %struct.max2175, %struct.max2175* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.max2175*, %struct.max2175** %13, align 8
  %107 = getelementptr inbounds %struct.max2175, %struct.max2175* %106, i32 0, i32 2
  store i32 0, i32* %107, align 8
  %108 = load %struct.regmap*, %struct.regmap** %12, align 8
  %109 = load %struct.max2175*, %struct.max2175** %13, align 8
  %110 = getelementptr inbounds %struct.max2175, %struct.max2175* %109, i32 0, i32 16
  store %struct.regmap* %108, %struct.regmap** %110, align 8
  %111 = load %struct.clk*, %struct.clk** %14, align 8
  %112 = bitcast %struct.clk* %111 to %struct.regmap*
  %113 = call i64 @clk_get_rate(%struct.regmap* %112)
  %114 = load %struct.max2175*, %struct.max2175** %13, align 8
  %115 = getelementptr inbounds %struct.max2175, %struct.max2175* %114, i32 0, i32 3
  store i64 %113, i64* %115, align 8
  %116 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = load %struct.max2175*, %struct.max2175** %13, align 8
  %119 = getelementptr inbounds %struct.max2175, %struct.max2175* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @dev_info(%struct.TYPE_14__* %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 %120)
  %122 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %123 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %124 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %122, %struct.i2c_client* %123, i32* @max2175_ops)
  %125 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %126 = load %struct.max2175*, %struct.max2175** %13, align 8
  %127 = getelementptr inbounds %struct.max2175, %struct.max2175* %126, i32 0, i32 15
  store %struct.i2c_client* %125, %struct.i2c_client** %127, align 8
  %128 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %129 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %130 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.max2175*, %struct.max2175** %13, align 8
  %134 = getelementptr inbounds %struct.max2175, %struct.max2175* %133, i32 0, i32 4
  store %struct.v4l2_ctrl_handler* %134, %struct.v4l2_ctrl_handler** %8, align 8
  %135 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %136 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %135, i32 7)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %97
  %140 = load i32, i32* %15, align 4
  store i32 %140, i32* %2, align 4
  br label %263

141:                                              ; preds = %97
  %142 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %143 = load i32, i32* @V4L2_CID_RF_TUNER_LNA_GAIN, align 4
  %144 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %142, i32* @max2175_ctrl_ops, i32 %143, i32 0, i32 63, i32 1, i32 0)
  %145 = bitcast i8* %144 to %struct.TYPE_10__*
  %146 = load %struct.max2175*, %struct.max2175** %13, align 8
  %147 = getelementptr inbounds %struct.max2175, %struct.max2175* %146, i32 0, i32 14
  store %struct.TYPE_10__* %145, %struct.TYPE_10__** %147, align 8
  %148 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %149 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.max2175*, %struct.max2175** %13, align 8
  %152 = getelementptr inbounds %struct.max2175, %struct.max2175* %151, i32 0, i32 14
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %150
  store i32 %156, i32* %154, align 4
  %157 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %158 = load i32, i32* @V4L2_CID_RF_TUNER_IF_GAIN, align 4
  %159 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %157, i32* @max2175_ctrl_ops, i32 %158, i32 0, i32 31, i32 1, i32 0)
  %160 = bitcast i8* %159 to %struct.TYPE_11__*
  %161 = load %struct.max2175*, %struct.max2175** %13, align 8
  %162 = getelementptr inbounds %struct.max2175, %struct.max2175* %161, i32 0, i32 13
  store %struct.TYPE_11__* %160, %struct.TYPE_11__** %162, align 8
  %163 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %164 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %165 = or i32 %163, %164
  %166 = load %struct.max2175*, %struct.max2175** %13, align 8
  %167 = getelementptr inbounds %struct.max2175, %struct.max2175* %166, i32 0, i32 13
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %165
  store i32 %171, i32* %169, align 4
  %172 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %173 = load i32, i32* @V4L2_CID_RF_TUNER_PLL_LOCK, align 4
  %174 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %172, i32* @max2175_ctrl_ops, i32 %173, i32 0, i32 1, i32 1, i32 0)
  %175 = bitcast i8* %174 to %struct.TYPE_12__*
  %176 = load %struct.max2175*, %struct.max2175** %13, align 8
  %177 = getelementptr inbounds %struct.max2175, %struct.max2175* %176, i32 0, i32 12
  store %struct.TYPE_12__* %175, %struct.TYPE_12__** %177, align 8
  %178 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %179 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.max2175*, %struct.max2175** %13, align 8
  %182 = getelementptr inbounds %struct.max2175, %struct.max2175* %181, i32 0, i32 12
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %180
  store i32 %186, i32* %184, align 4
  %187 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %188 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %187, i32* @max2175_i2s_en, i32* null)
  %189 = load %struct.max2175*, %struct.max2175** %13, align 8
  %190 = getelementptr inbounds %struct.max2175, %struct.max2175* %189, i32 0, i32 11
  store i8* %188, i8** %190, align 8
  %191 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %192 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %191, i32* @max2175_hsls, i32* null)
  %193 = load %struct.max2175*, %struct.max2175** %13, align 8
  %194 = getelementptr inbounds %struct.max2175, %struct.max2175* %193, i32 0, i32 10
  store i8* %192, i8** %194, align 8
  %195 = load %struct.max2175*, %struct.max2175** %13, align 8
  %196 = getelementptr inbounds %struct.max2175, %struct.max2175* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @MAX2175_EU_XTAL_FREQ, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %210

200:                                              ; preds = %141
  %201 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %202 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %201, i32* @max2175_eu_rx_mode, i32* null)
  %203 = load %struct.max2175*, %struct.max2175** %13, align 8
  %204 = getelementptr inbounds %struct.max2175, %struct.max2175* %203, i32 0, i32 9
  store i8* %202, i8** %204, align 8
  %205 = load i32, i32* @eu_rx_modes, align 4
  %206 = load %struct.max2175*, %struct.max2175** %13, align 8
  %207 = getelementptr inbounds %struct.max2175, %struct.max2175* %206, i32 0, i32 8
  store i32 %205, i32* %207, align 8
  %208 = load %struct.max2175*, %struct.max2175** %13, align 8
  %209 = getelementptr inbounds %struct.max2175, %struct.max2175* %208, i32 0, i32 5
  store %struct.TYPE_13__* @eu_bands_rf, %struct.TYPE_13__** %209, align 8
  br label %220

210:                                              ; preds = %141
  %211 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %212 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %211, i32* @max2175_na_rx_mode, i32* null)
  %213 = load %struct.max2175*, %struct.max2175** %13, align 8
  %214 = getelementptr inbounds %struct.max2175, %struct.max2175* %213, i32 0, i32 9
  store i8* %212, i8** %214, align 8
  %215 = load i32, i32* @na_rx_modes, align 4
  %216 = load %struct.max2175*, %struct.max2175** %13, align 8
  %217 = getelementptr inbounds %struct.max2175, %struct.max2175* %216, i32 0, i32 8
  store i32 %215, i32* %217, align 8
  %218 = load %struct.max2175*, %struct.max2175** %13, align 8
  %219 = getelementptr inbounds %struct.max2175, %struct.max2175* %218, i32 0, i32 5
  store %struct.TYPE_13__* @na_bands_rf, %struct.TYPE_13__** %219, align 8
  br label %220

220:                                              ; preds = %210, %200
  %221 = load %struct.max2175*, %struct.max2175** %13, align 8
  %222 = getelementptr inbounds %struct.max2175, %struct.max2175* %221, i32 0, i32 4
  %223 = load %struct.max2175*, %struct.max2175** %13, align 8
  %224 = getelementptr inbounds %struct.max2175, %struct.max2175* %223, i32 0, i32 7
  %225 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %224, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %222, %struct.v4l2_ctrl_handler** %225, align 8
  %226 = load %struct.max2175*, %struct.max2175** %13, align 8
  %227 = getelementptr inbounds %struct.max2175, %struct.max2175* %226, i32 0, i32 5
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.max2175*, %struct.max2175** %13, align 8
  %232 = getelementptr inbounds %struct.max2175, %struct.max2175* %231, i32 0, i32 6
  store i32 %230, i32* %232, align 8
  %233 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %234 = call i32 @v4l2_async_register_subdev(%struct.v4l2_subdev* %233)
  store i32 %234, i32* %15, align 4
  %235 = load i32, i32* %15, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %220
  %238 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %239 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %238, i32 0, i32 0
  %240 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %239, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %258

241:                                              ; preds = %220
  %242 = load %struct.max2175*, %struct.max2175** %13, align 8
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @max2175_core_init(%struct.max2175* %242, i32 %243)
  store i32 %244, i32* %15, align 4
  %245 = load i32, i32* %15, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %241
  br label %255

248:                                              ; preds = %241
  %249 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %250 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %249)
  store i32 %250, i32* %15, align 4
  %251 = load i32, i32* %15, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  br label %255

254:                                              ; preds = %248
  store i32 0, i32* %2, align 4
  br label %263

255:                                              ; preds = %253, %247
  %256 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %257 = call i32 @v4l2_async_unregister_subdev(%struct.v4l2_subdev* %256)
  br label %258

258:                                              ; preds = %255, %237
  %259 = load %struct.max2175*, %struct.max2175** %13, align 8
  %260 = getelementptr inbounds %struct.max2175, %struct.max2175* %259, i32 0, i32 4
  %261 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %260)
  %262 = load i32, i32* %15, align 4
  store i32 %262, i32* %2, align 4
  br label %263

263:                                              ; preds = %258, %254, %139, %94, %78, %63, %46
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.fwnode_handle* @of_fwnode_handle(i32) #1

declare dso_local i64 @fwnode_property_present(%struct.fwnode_handle*, i8*) #1

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i32*) #1

declare dso_local i32 @max2175_refout_load_to_bits(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local %struct.regmap* @devm_clk_get(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local %struct.max2175* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @clk_get_rate(%struct.regmap*) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*, i64) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, i32*, i32*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @max2175_core_init(%struct.max2175*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_async_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
