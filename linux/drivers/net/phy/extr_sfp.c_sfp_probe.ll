; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sff_data = type { i32 }
%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.sfp = type { i32, i32, i32, %struct.TYPE_13__*, %struct.sfp**, i32, i64*, i32, i32, %struct.sff_data* }
%struct.of_device_id = type { %struct.sff_data* }
%struct.acpi_device = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.fwnode_reference_args = type { i32 }
%struct.acpi_handle = type { i32 }

@sfp_cleanup = common dso_local global i32 0, align 4
@sfp_data = common dso_local global %struct.sff_data zeroinitializer, align 4
@sfp_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"i2c-bus\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"missing 'i2c-bus' property\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GPIO_MAX = common dso_local global i32 0, align 4
@gpio_of_names = common dso_local global i32* null, align 8
@gpio_flags = common dso_local global i64* null, align 8
@sfp_gpio_get_state = common dso_local global i32 0, align 4
@sfp_gpio_set_state = common dso_local global i32 0, align 4
@GPIO_MODDEF0 = common dso_local global i64 0, align 8
@sff_gpio_get_state = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"maximum-power-milliwatt\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Host maximum power %u.%uW\0A\00", align 1
@SFP_F_TX_DISABLE = common dso_local global i32 0, align 4
@GPIO_RATE_SELECT = common dso_local global i64 0, align 8
@SFP_F_RATE_SELECT = common dso_local global i32 0, align 4
@GPIOD_IN = common dso_local global i64 0, align 8
@sfp_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4
@poll_jiffies = common dso_local global i32 0, align 4
@GPIO_TX_DISABLE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [57 x i8] c"No tx_disable pin: SFP modules will always be emitting.\0A\00", align 1
@sfp_module_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sfp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sff_data*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.sfp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.of_device_id*, align 8
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca %struct.acpi_device*, align 8
  %14 = alloca %struct.fwnode_handle*, align 8
  %15 = alloca %struct.fwnode_reference_args, align 4
  %16 = alloca %struct.acpi_handle*, align 8
  %17 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call %struct.sfp* @sfp_alloc(%struct.TYPE_13__* %19)
  store %struct.sfp* %20, %struct.sfp** %6, align 8
  %21 = load %struct.sfp*, %struct.sfp** %6, align 8
  %22 = call i64 @IS_ERR(%struct.sfp* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.sfp*, %struct.sfp** %6, align 8
  %26 = call i32 @PTR_ERR(%struct.sfp* %25)
  store i32 %26, i32* %2, align 4
  br label %398

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.sfp*, %struct.sfp** %6, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.sfp* %29)
  %31 = load %struct.sfp*, %struct.sfp** %6, align 8
  %32 = getelementptr inbounds %struct.sfp, %struct.sfp* %31, i32 0, i32 3
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = load i32, i32* @sfp_cleanup, align 4
  %35 = load %struct.sfp*, %struct.sfp** %6, align 8
  %36 = call i32 @devm_add_action(%struct.TYPE_13__* %33, i32 %34, %struct.sfp* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %2, align 4
  br label %398

41:                                               ; preds = %27
  %42 = load %struct.sfp*, %struct.sfp** %6, align 8
  %43 = getelementptr inbounds %struct.sfp, %struct.sfp* %42, i32 0, i32 9
  store %struct.sff_data* @sfp_data, %struct.sff_data** %43, align 8
  store %struct.sff_data* @sfp_data, %struct.sff_data** %4, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.device_node*, %struct.device_node** %46, align 8
  %48 = icmp ne %struct.device_node* %47, null
  br i1 %48, label %49, label %88

49:                                               ; preds = %41
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load %struct.device_node*, %struct.device_node** %52, align 8
  store %struct.device_node* %53, %struct.device_node** %10, align 8
  %54 = load i32, i32* @sfp_of_match, align 4
  %55 = load %struct.device_node*, %struct.device_node** %10, align 8
  %56 = call %struct.of_device_id* @of_match_node(i32 %54, %struct.device_node* %55)
  store %struct.of_device_id* %56, %struct.of_device_id** %11, align 8
  %57 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %58 = icmp ne %struct.of_device_id* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @WARN_ON(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %398

66:                                               ; preds = %49
  %67 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %68 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %67, i32 0, i32 0
  %69 = load %struct.sff_data*, %struct.sff_data** %68, align 8
  %70 = load %struct.sfp*, %struct.sfp** %6, align 8
  %71 = getelementptr inbounds %struct.sfp, %struct.sfp* %70, i32 0, i32 9
  store %struct.sff_data* %69, %struct.sff_data** %71, align 8
  store %struct.sff_data* %69, %struct.sff_data** %4, align 8
  %72 = load %struct.device_node*, %struct.device_node** %10, align 8
  %73 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %73, %struct.device_node** %12, align 8
  %74 = load %struct.device_node*, %struct.device_node** %12, align 8
  %75 = icmp ne %struct.device_node* %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %66
  %77 = load %struct.sfp*, %struct.sfp** %6, align 8
  %78 = getelementptr inbounds %struct.sfp, %struct.sfp* %77, i32 0, i32 3
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = call i32 @dev_err(%struct.TYPE_13__* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %398

83:                                               ; preds = %66
  %84 = load %struct.device_node*, %struct.device_node** %12, align 8
  %85 = call %struct.i2c_adapter* @of_find_i2c_adapter_by_node(%struct.device_node* %84)
  store %struct.i2c_adapter* %85, %struct.i2c_adapter** %5, align 8
  %86 = load %struct.device_node*, %struct.device_node** %12, align 8
  %87 = call i32 @of_node_put(%struct.device_node* %86)
  br label %124

88:                                               ; preds = %41
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i64 @has_acpi_companion(%struct.TYPE_13__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %120

93:                                               ; preds = %88
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call %struct.acpi_device* @ACPI_COMPANION(%struct.TYPE_13__* %95)
  store %struct.acpi_device* %96, %struct.acpi_device** %13, align 8
  %97 = load %struct.acpi_device*, %struct.acpi_device** %13, align 8
  %98 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %97)
  store %struct.fwnode_handle* %98, %struct.fwnode_handle** %14, align 8
  %99 = load %struct.fwnode_handle*, %struct.fwnode_handle** %14, align 8
  %100 = call i32 @acpi_node_get_property_reference(%struct.fwnode_handle* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, %struct.fwnode_reference_args* %15)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %15, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @is_acpi_device_node(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %103, %93
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 @dev_err(%struct.TYPE_13__* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %398

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %15, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call %struct.acpi_handle* @ACPI_HANDLE_FWNODE(i32 %116)
  store %struct.acpi_handle* %117, %struct.acpi_handle** %16, align 8
  %118 = load %struct.acpi_handle*, %struct.acpi_handle** %16, align 8
  %119 = call %struct.i2c_adapter* @i2c_acpi_find_adapter_by_handle(%struct.acpi_handle* %118)
  store %struct.i2c_adapter* %119, %struct.i2c_adapter** %5, align 8
  br label %123

120:                                              ; preds = %88
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %398

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %83
  %125 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %126 = icmp ne %struct.i2c_adapter* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* @EPROBE_DEFER, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %398

130:                                              ; preds = %124
  %131 = load %struct.sfp*, %struct.sfp** %6, align 8
  %132 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %133 = call i32 @sfp_i2c_configure(%struct.sfp* %131, %struct.i2c_adapter* %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %138 = call i32 @i2c_put_adapter(%struct.i2c_adapter* %137)
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %2, align 4
  br label %398

140:                                              ; preds = %130
  store i32 0, i32* %9, align 4
  br label %141

141:                                              ; preds = %194, %140
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @GPIO_MAX, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %197

145:                                              ; preds = %141
  %146 = load %struct.sff_data*, %struct.sff_data** %4, align 8
  %147 = getelementptr inbounds %struct.sff_data, %struct.sff_data* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @BIT(i32 %149)
  %151 = and i32 %148, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %193

153:                                              ; preds = %145
  %154 = load %struct.sfp*, %struct.sfp** %6, align 8
  %155 = getelementptr inbounds %struct.sfp, %struct.sfp* %154, i32 0, i32 3
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = load i32*, i32** @gpio_of_names, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i64*, i64** @gpio_flags, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = call %struct.sfp* @devm_gpiod_get_optional(%struct.TYPE_13__* %156, i32 %161, i64 %166)
  %168 = load %struct.sfp*, %struct.sfp** %6, align 8
  %169 = getelementptr inbounds %struct.sfp, %struct.sfp* %168, i32 0, i32 4
  %170 = load %struct.sfp**, %struct.sfp*** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.sfp*, %struct.sfp** %170, i64 %172
  store %struct.sfp* %167, %struct.sfp** %173, align 8
  %174 = load %struct.sfp*, %struct.sfp** %6, align 8
  %175 = getelementptr inbounds %struct.sfp, %struct.sfp* %174, i32 0, i32 4
  %176 = load %struct.sfp**, %struct.sfp*** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.sfp*, %struct.sfp** %176, i64 %178
  %180 = load %struct.sfp*, %struct.sfp** %179, align 8
  %181 = call i64 @IS_ERR(%struct.sfp* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %153
  %184 = load %struct.sfp*, %struct.sfp** %6, align 8
  %185 = getelementptr inbounds %struct.sfp, %struct.sfp* %184, i32 0, i32 4
  %186 = load %struct.sfp**, %struct.sfp*** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.sfp*, %struct.sfp** %186, i64 %188
  %190 = load %struct.sfp*, %struct.sfp** %189, align 8
  %191 = call i32 @PTR_ERR(%struct.sfp* %190)
  store i32 %191, i32* %2, align 4
  br label %398

192:                                              ; preds = %153
  br label %193

193:                                              ; preds = %192, %145
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %9, align 4
  br label %141

197:                                              ; preds = %141
  %198 = load i32, i32* @sfp_gpio_get_state, align 4
  %199 = load %struct.sfp*, %struct.sfp** %6, align 8
  %200 = getelementptr inbounds %struct.sfp, %struct.sfp* %199, i32 0, i32 7
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* @sfp_gpio_set_state, align 4
  %202 = load %struct.sfp*, %struct.sfp** %6, align 8
  %203 = getelementptr inbounds %struct.sfp, %struct.sfp* %202, i32 0, i32 8
  store i32 %201, i32* %203, align 4
  %204 = load %struct.sfp*, %struct.sfp** %6, align 8
  %205 = getelementptr inbounds %struct.sfp, %struct.sfp* %204, i32 0, i32 4
  %206 = load %struct.sfp**, %struct.sfp*** %205, align 8
  %207 = load i64, i64* @GPIO_MODDEF0, align 8
  %208 = getelementptr inbounds %struct.sfp*, %struct.sfp** %206, i64 %207
  %209 = load %struct.sfp*, %struct.sfp** %208, align 8
  %210 = icmp ne %struct.sfp* %209, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %197
  %212 = load i32, i32* @sff_gpio_get_state, align 4
  %213 = load %struct.sfp*, %struct.sfp** %6, align 8
  %214 = getelementptr inbounds %struct.sfp, %struct.sfp* %213, i32 0, i32 7
  store i32 %212, i32* %214, align 8
  br label %215

215:                                              ; preds = %211, %197
  %216 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %217 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %216, i32 0, i32 0
  %218 = load %struct.sfp*, %struct.sfp** %6, align 8
  %219 = getelementptr inbounds %struct.sfp, %struct.sfp* %218, i32 0, i32 0
  %220 = call i32 @device_property_read_u32(%struct.TYPE_13__* %217, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %219)
  %221 = load %struct.sfp*, %struct.sfp** %6, align 8
  %222 = getelementptr inbounds %struct.sfp, %struct.sfp* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %215
  %226 = load %struct.sfp*, %struct.sfp** %6, align 8
  %227 = getelementptr inbounds %struct.sfp, %struct.sfp* %226, i32 0, i32 0
  store i32 1000, i32* %227, align 8
  br label %228

228:                                              ; preds = %225, %215
  %229 = load %struct.sfp*, %struct.sfp** %6, align 8
  %230 = getelementptr inbounds %struct.sfp, %struct.sfp* %229, i32 0, i32 3
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %230, align 8
  %232 = load %struct.sfp*, %struct.sfp** %6, align 8
  %233 = getelementptr inbounds %struct.sfp, %struct.sfp* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = sdiv i32 %234, 1000
  %236 = load %struct.sfp*, %struct.sfp** %6, align 8
  %237 = getelementptr inbounds %struct.sfp, %struct.sfp* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = sdiv i32 %238, 100
  %240 = srem i32 %239, 10
  %241 = call i32 @dev_info(%struct.TYPE_13__* %231, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %235, i32 %240)
  %242 = load %struct.sfp*, %struct.sfp** %6, align 8
  %243 = call i32 @sfp_get_state(%struct.sfp* %242)
  %244 = load i32, i32* @SFP_F_TX_DISABLE, align 4
  %245 = or i32 %243, %244
  %246 = load %struct.sfp*, %struct.sfp** %6, align 8
  %247 = getelementptr inbounds %struct.sfp, %struct.sfp* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  %248 = load %struct.sfp*, %struct.sfp** %6, align 8
  %249 = getelementptr inbounds %struct.sfp, %struct.sfp* %248, i32 0, i32 4
  %250 = load %struct.sfp**, %struct.sfp*** %249, align 8
  %251 = load i64, i64* @GPIO_RATE_SELECT, align 8
  %252 = getelementptr inbounds %struct.sfp*, %struct.sfp** %250, i64 %251
  %253 = load %struct.sfp*, %struct.sfp** %252, align 8
  %254 = icmp ne %struct.sfp* %253, null
  br i1 %254, label %255, label %270

255:                                              ; preds = %228
  %256 = load %struct.sfp*, %struct.sfp** %6, align 8
  %257 = getelementptr inbounds %struct.sfp, %struct.sfp* %256, i32 0, i32 4
  %258 = load %struct.sfp**, %struct.sfp*** %257, align 8
  %259 = load i64, i64* @GPIO_RATE_SELECT, align 8
  %260 = getelementptr inbounds %struct.sfp*, %struct.sfp** %258, i64 %259
  %261 = load %struct.sfp*, %struct.sfp** %260, align 8
  %262 = call i64 @gpiod_get_value_cansleep(%struct.sfp* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %255
  %265 = load i32, i32* @SFP_F_RATE_SELECT, align 4
  %266 = load %struct.sfp*, %struct.sfp** %6, align 8
  %267 = getelementptr inbounds %struct.sfp, %struct.sfp* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 4
  br label %270

270:                                              ; preds = %264, %255, %228
  %271 = load %struct.sfp*, %struct.sfp** %6, align 8
  %272 = load %struct.sfp*, %struct.sfp** %6, align 8
  %273 = getelementptr inbounds %struct.sfp, %struct.sfp* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @sfp_set_state(%struct.sfp* %271, i32 %274)
  %276 = load %struct.sfp*, %struct.sfp** %6, align 8
  %277 = call i32 @sfp_module_tx_disable(%struct.sfp* %276)
  store i32 0, i32* %9, align 4
  br label %278

278:                                              ; preds = %357, %270
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* @GPIO_MAX, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %360

282:                                              ; preds = %278
  %283 = load i64*, i64** @gpio_flags, align 8
  %284 = load i32, i32* %9, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @GPIOD_IN, align 8
  %289 = icmp ne i64 %287, %288
  br i1 %289, label %299, label %290

290:                                              ; preds = %282
  %291 = load %struct.sfp*, %struct.sfp** %6, align 8
  %292 = getelementptr inbounds %struct.sfp, %struct.sfp* %291, i32 0, i32 4
  %293 = load %struct.sfp**, %struct.sfp*** %292, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.sfp*, %struct.sfp** %293, i64 %295
  %297 = load %struct.sfp*, %struct.sfp** %296, align 8
  %298 = icmp ne %struct.sfp* %297, null
  br i1 %298, label %300, label %299

299:                                              ; preds = %290, %282
  br label %357

300:                                              ; preds = %290
  %301 = load %struct.sfp*, %struct.sfp** %6, align 8
  %302 = getelementptr inbounds %struct.sfp, %struct.sfp* %301, i32 0, i32 4
  %303 = load %struct.sfp**, %struct.sfp*** %302, align 8
  %304 = load i32, i32* %9, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.sfp*, %struct.sfp** %303, i64 %305
  %307 = load %struct.sfp*, %struct.sfp** %306, align 8
  %308 = call i64 @gpiod_to_irq(%struct.sfp* %307)
  %309 = load %struct.sfp*, %struct.sfp** %6, align 8
  %310 = getelementptr inbounds %struct.sfp, %struct.sfp* %309, i32 0, i32 6
  %311 = load i64*, i64** %310, align 8
  %312 = load i32, i32* %9, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i64, i64* %311, i64 %313
  store i64 %308, i64* %314, align 8
  %315 = load %struct.sfp*, %struct.sfp** %6, align 8
  %316 = getelementptr inbounds %struct.sfp, %struct.sfp* %315, i32 0, i32 6
  %317 = load i64*, i64** %316, align 8
  %318 = load i32, i32* %9, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i64, i64* %317, i64 %319
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %300
  store i32 1, i32* %7, align 4
  br label %357

324:                                              ; preds = %300
  %325 = load %struct.sfp*, %struct.sfp** %6, align 8
  %326 = getelementptr inbounds %struct.sfp, %struct.sfp* %325, i32 0, i32 3
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %326, align 8
  %328 = load %struct.sfp*, %struct.sfp** %6, align 8
  %329 = getelementptr inbounds %struct.sfp, %struct.sfp* %328, i32 0, i32 6
  %330 = load i64*, i64** %329, align 8
  %331 = load i32, i32* %9, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i64, i64* %330, i64 %332
  %334 = load i64, i64* %333, align 8
  %335 = load i32, i32* @sfp_irq, align 4
  %336 = load i32, i32* @IRQF_ONESHOT, align 4
  %337 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %338 = or i32 %336, %337
  %339 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %340 = or i32 %338, %339
  %341 = load %struct.sfp*, %struct.sfp** %6, align 8
  %342 = getelementptr inbounds %struct.sfp, %struct.sfp* %341, i32 0, i32 3
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %342, align 8
  %344 = call i32 @dev_name(%struct.TYPE_13__* %343)
  %345 = load %struct.sfp*, %struct.sfp** %6, align 8
  %346 = call i32 @devm_request_threaded_irq(%struct.TYPE_13__* %327, i64 %334, i32* null, i32 %335, i32 %340, i32 %344, %struct.sfp* %345)
  store i32 %346, i32* %8, align 4
  %347 = load i32, i32* %8, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %356

349:                                              ; preds = %324
  %350 = load %struct.sfp*, %struct.sfp** %6, align 8
  %351 = getelementptr inbounds %struct.sfp, %struct.sfp* %350, i32 0, i32 6
  %352 = load i64*, i64** %351, align 8
  %353 = load i32, i32* %9, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i64, i64* %352, i64 %354
  store i64 0, i64* %355, align 8
  store i32 1, i32* %7, align 4
  br label %356

356:                                              ; preds = %349, %324
  br label %357

357:                                              ; preds = %356, %323, %299
  %358 = load i32, i32* %9, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %9, align 4
  br label %278

360:                                              ; preds = %278
  %361 = load i32, i32* %7, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %360
  %364 = load i32, i32* @system_wq, align 4
  %365 = load %struct.sfp*, %struct.sfp** %6, align 8
  %366 = getelementptr inbounds %struct.sfp, %struct.sfp* %365, i32 0, i32 5
  %367 = load i32, i32* @poll_jiffies, align 4
  %368 = call i32 @mod_delayed_work(i32 %364, i32* %366, i32 %367)
  br label %369

369:                                              ; preds = %363, %360
  %370 = load %struct.sfp*, %struct.sfp** %6, align 8
  %371 = getelementptr inbounds %struct.sfp, %struct.sfp* %370, i32 0, i32 4
  %372 = load %struct.sfp**, %struct.sfp*** %371, align 8
  %373 = load i64, i64* @GPIO_TX_DISABLE, align 8
  %374 = getelementptr inbounds %struct.sfp*, %struct.sfp** %372, i64 %373
  %375 = load %struct.sfp*, %struct.sfp** %374, align 8
  %376 = icmp ne %struct.sfp* %375, null
  br i1 %376, label %382, label %377

377:                                              ; preds = %369
  %378 = load %struct.sfp*, %struct.sfp** %6, align 8
  %379 = getelementptr inbounds %struct.sfp, %struct.sfp* %378, i32 0, i32 3
  %380 = load %struct.TYPE_13__*, %struct.TYPE_13__** %379, align 8
  %381 = call i32 @dev_warn(%struct.TYPE_13__* %380, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  br label %382

382:                                              ; preds = %377, %369
  %383 = load %struct.sfp*, %struct.sfp** %6, align 8
  %384 = getelementptr inbounds %struct.sfp, %struct.sfp* %383, i32 0, i32 3
  %385 = load %struct.TYPE_13__*, %struct.TYPE_13__** %384, align 8
  %386 = load %struct.sfp*, %struct.sfp** %6, align 8
  %387 = call i32 @sfp_register_socket(%struct.TYPE_13__* %385, %struct.sfp* %386, i32* @sfp_module_ops)
  %388 = load %struct.sfp*, %struct.sfp** %6, align 8
  %389 = getelementptr inbounds %struct.sfp, %struct.sfp* %388, i32 0, i32 2
  store i32 %387, i32* %389, align 8
  %390 = load %struct.sfp*, %struct.sfp** %6, align 8
  %391 = getelementptr inbounds %struct.sfp, %struct.sfp* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %382
  %395 = load i32, i32* @ENOMEM, align 4
  %396 = sub nsw i32 0, %395
  store i32 %396, i32* %2, align 4
  br label %398

397:                                              ; preds = %382
  store i32 0, i32* %2, align 4
  br label %398

398:                                              ; preds = %397, %394, %183, %136, %127, %120, %108, %76, %63, %39, %24
  %399 = load i32, i32* %2, align 4
  ret i32 %399
}

declare dso_local %struct.sfp* @sfp_alloc(%struct.TYPE_13__*) #1

declare dso_local i64 @IS_ERR(%struct.sfp*) #1

declare dso_local i32 @PTR_ERR(%struct.sfp*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sfp*) #1

declare dso_local i32 @devm_add_action(%struct.TYPE_13__*, i32, %struct.sfp*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.i2c_adapter* @of_find_i2c_adapter_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @has_acpi_companion(%struct.TYPE_13__*) #1

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.TYPE_13__*) #1

declare dso_local %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device*) #1

declare dso_local i32 @acpi_node_get_property_reference(%struct.fwnode_handle*, i8*, i32, %struct.fwnode_reference_args*) #1

declare dso_local i32 @is_acpi_device_node(i32) #1

declare dso_local %struct.acpi_handle* @ACPI_HANDLE_FWNODE(i32) #1

declare dso_local %struct.i2c_adapter* @i2c_acpi_find_adapter_by_handle(%struct.acpi_handle*) #1

declare dso_local i32 @sfp_i2c_configure(%struct.sfp*, %struct.i2c_adapter*) #1

declare dso_local i32 @i2c_put_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.sfp* @devm_gpiod_get_optional(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i32 @device_property_read_u32(%struct.TYPE_13__*, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*, i32, i32) #1

declare dso_local i32 @sfp_get_state(%struct.sfp*) #1

declare dso_local i64 @gpiod_get_value_cansleep(%struct.sfp*) #1

declare dso_local i32 @sfp_set_state(%struct.sfp*, i32) #1

declare dso_local i32 @sfp_module_tx_disable(%struct.sfp*) #1

declare dso_local i64 @gpiod_to_irq(%struct.sfp*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_13__*, i64, i32*, i32, i32, i32, %struct.sfp*) #1

declare dso_local i32 @dev_name(%struct.TYPE_13__*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @sfp_register_socket(%struct.TYPE_13__*, %struct.sfp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
