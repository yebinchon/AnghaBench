; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { i32, i32, %struct.device }
%struct.device = type { %struct.device_node*, %struct.dsa_mv88e6xxx_pdata* }
%struct.device_node = type { i32 }
%struct.dsa_mv88e6xxx_pdata = type { i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32**, i32* }
%struct.mv88e6xxx_info = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.mv88e6xxx_chip = type { i32, %struct.mv88e6xxx_info*, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@DSA_MAX_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"eeprom-length\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdio_device*)* @mv88e6xxx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_probe(%struct.mdio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdio_device*, align 8
  %4 = alloca %struct.dsa_mv88e6xxx_pdata*, align 8
  %5 = alloca %struct.mv88e6xxx_info*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.mv88e6xxx_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mdio_device* %0, %struct.mdio_device** %3, align 8
  %11 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %12 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  %14 = load %struct.dsa_mv88e6xxx_pdata*, %struct.dsa_mv88e6xxx_pdata** %13, align 8
  store %struct.dsa_mv88e6xxx_pdata* %14, %struct.dsa_mv88e6xxx_pdata** %4, align 8
  store %struct.mv88e6xxx_info* null, %struct.mv88e6xxx_info** %5, align 8
  %15 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %16 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %15, i32 0, i32 2
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %7, align 8
  %20 = load %struct.device_node*, %struct.device_node** %7, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.dsa_mv88e6xxx_pdata*, %struct.dsa_mv88e6xxx_pdata** %4, align 8
  %24 = icmp ne %struct.dsa_mv88e6xxx_pdata* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %312

28:                                               ; preds = %22, %1
  %29 = load %struct.device_node*, %struct.device_node** %7, align 8
  %30 = icmp ne %struct.device_node* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call %struct.mv88e6xxx_info* @of_device_get_match_data(%struct.device* %32)
  store %struct.mv88e6xxx_info* %33, %struct.mv88e6xxx_info** %5, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.dsa_mv88e6xxx_pdata*, %struct.dsa_mv88e6xxx_pdata** %4, align 8
  %36 = icmp ne %struct.dsa_mv88e6xxx_pdata* %35, null
  br i1 %36, label %37, label %89

37:                                               ; preds = %34
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call %struct.mv88e6xxx_info* @pdata_device_get_match_data(%struct.device* %38)
  store %struct.mv88e6xxx_info* %39, %struct.mv88e6xxx_info** %5, align 8
  %40 = load %struct.dsa_mv88e6xxx_pdata*, %struct.dsa_mv88e6xxx_pdata** %4, align 8
  %41 = getelementptr inbounds %struct.dsa_mv88e6xxx_pdata, %struct.dsa_mv88e6xxx_pdata* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %312

47:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %85, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @DSA_MAX_PORTS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %88

52:                                               ; preds = %48
  %53 = load %struct.dsa_mv88e6xxx_pdata*, %struct.dsa_mv88e6xxx_pdata** %4, align 8
  %54 = getelementptr inbounds %struct.dsa_mv88e6xxx_pdata, %struct.dsa_mv88e6xxx_pdata* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  br label %85

61:                                               ; preds = %52
  %62 = load %struct.dsa_mv88e6xxx_pdata*, %struct.dsa_mv88e6xxx_pdata** %4, align 8
  %63 = getelementptr inbounds %struct.dsa_mv88e6xxx_pdata, %struct.dsa_mv88e6xxx_pdata* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @strcmp(i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %85

73:                                               ; preds = %61
  %74 = load %struct.dsa_mv88e6xxx_pdata*, %struct.dsa_mv88e6xxx_pdata** %4, align 8
  %75 = getelementptr inbounds %struct.dsa_mv88e6xxx_pdata, %struct.dsa_mv88e6xxx_pdata* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.dsa_mv88e6xxx_pdata*, %struct.dsa_mv88e6xxx_pdata** %4, align 8
  %79 = getelementptr inbounds %struct.dsa_mv88e6xxx_pdata, %struct.dsa_mv88e6xxx_pdata* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  store i32* %77, i32** %84, align 8
  br label %88

85:                                               ; preds = %72, %60
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %48

88:                                               ; preds = %73, %48
  br label %89

89:                                               ; preds = %88, %34
  %90 = load %struct.mv88e6xxx_info*, %struct.mv88e6xxx_info** %5, align 8
  %91 = icmp ne %struct.mv88e6xxx_info* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %312

95:                                               ; preds = %89
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = call %struct.mv88e6xxx_chip* @mv88e6xxx_alloc_chip(%struct.device* %96)
  store %struct.mv88e6xxx_chip* %97, %struct.mv88e6xxx_chip** %8, align 8
  %98 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %99 = icmp ne %struct.mv88e6xxx_chip* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %10, align 4
  br label %302

103:                                              ; preds = %95
  %104 = load %struct.mv88e6xxx_info*, %struct.mv88e6xxx_info** %5, align 8
  %105 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %106 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %105, i32 0, i32 1
  store %struct.mv88e6xxx_info* %104, %struct.mv88e6xxx_info** %106, align 8
  %107 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %108 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %109 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %112 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @mv88e6xxx_smi_init(%struct.mv88e6xxx_chip* %107, i32 %110, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %103
  br label %302

118:                                              ; preds = %103
  %119 = load %struct.device*, %struct.device** %6, align 8
  %120 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %121 = call i64 @devm_gpiod_get_optional(%struct.device* %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %123 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %122, i32 0, i32 3
  store i64 %121, i64* %123, align 8
  %124 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %125 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @IS_ERR(i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %118
  %130 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %131 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @PTR_ERR(i64 %132)
  store i32 %133, i32* %10, align 4
  br label %302

134:                                              ; preds = %118
  %135 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %136 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %141

141:                                              ; preds = %139, %134
  %142 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %143 = call i32 @mv88e6xxx_detect(%struct.mv88e6xxx_chip* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %302

147:                                              ; preds = %141
  %148 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %149 = call i32 @mv88e6xxx_phy_init(%struct.mv88e6xxx_chip* %148)
  %150 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %151 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %150, i32 0, i32 1
  %152 = load %struct.mv88e6xxx_info*, %struct.mv88e6xxx_info** %151, align 8
  %153 = getelementptr inbounds %struct.mv88e6xxx_info, %struct.mv88e6xxx_info* %152, i32 0, i32 1
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %147
  %159 = load %struct.device_node*, %struct.device_node** %7, align 8
  %160 = icmp ne %struct.device_node* %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load %struct.device_node*, %struct.device_node** %7, align 8
  %163 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %164 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %163, i32 0, i32 2
  %165 = call i32 @of_property_read_u32(%struct.device_node* %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %164)
  br label %172

166:                                              ; preds = %158
  %167 = load %struct.dsa_mv88e6xxx_pdata*, %struct.dsa_mv88e6xxx_pdata** %4, align 8
  %168 = getelementptr inbounds %struct.dsa_mv88e6xxx_pdata, %struct.dsa_mv88e6xxx_pdata* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %171 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %166, %161
  br label %173

173:                                              ; preds = %172, %147
  %174 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %175 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %174)
  %176 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %177 = call i32 @mv88e6xxx_switch_reset(%struct.mv88e6xxx_chip* %176)
  store i32 %177, i32* %10, align 4
  %178 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %179 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %178)
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  br label %302

183:                                              ; preds = %173
  %184 = load %struct.device_node*, %struct.device_node** %7, align 8
  %185 = icmp ne %struct.device_node* %184, null
  br i1 %185, label %186, label %202

186:                                              ; preds = %183
  %187 = load %struct.device_node*, %struct.device_node** %7, align 8
  %188 = call i32 @of_irq_get(%struct.device_node* %187, i32 0)
  %189 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %190 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %192 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @EPROBE_DEFER, align 4
  %195 = sub nsw i32 0, %194
  %196 = icmp eq i32 %193, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %186
  %198 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %199 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  store i32 %200, i32* %10, align 4
  br label %302

201:                                              ; preds = %186
  br label %202

202:                                              ; preds = %201, %183
  %203 = load %struct.dsa_mv88e6xxx_pdata*, %struct.dsa_mv88e6xxx_pdata** %4, align 8
  %204 = icmp ne %struct.dsa_mv88e6xxx_pdata* %203, null
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load %struct.dsa_mv88e6xxx_pdata*, %struct.dsa_mv88e6xxx_pdata** %4, align 8
  %207 = getelementptr inbounds %struct.dsa_mv88e6xxx_pdata, %struct.dsa_mv88e6xxx_pdata* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %210 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %205, %202
  %212 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %213 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %212)
  %214 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %215 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %211
  %219 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %220 = call i32 @mv88e6xxx_g1_irq_setup(%struct.mv88e6xxx_chip* %219)
  store i32 %220, i32* %10, align 4
  br label %224

221:                                              ; preds = %211
  %222 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %223 = call i32 @mv88e6xxx_irq_poll_setup(%struct.mv88e6xxx_chip* %222)
  store i32 %223, i32* %10, align 4
  br label %224

224:                                              ; preds = %221, %218
  %225 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %226 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %225)
  %227 = load i32, i32* %10, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  br label %302

230:                                              ; preds = %224
  %231 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %232 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %231, i32 0, i32 1
  %233 = load %struct.mv88e6xxx_info*, %struct.mv88e6xxx_info** %232, align 8
  %234 = getelementptr inbounds %struct.mv88e6xxx_info, %struct.mv88e6xxx_info* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %230
  %238 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %239 = call i32 @mv88e6xxx_g2_irq_setup(%struct.mv88e6xxx_chip* %238)
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* %10, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  br label %290

243:                                              ; preds = %237
  br label %244

244:                                              ; preds = %243, %230
  %245 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %246 = call i32 @mv88e6xxx_g1_atu_prob_irq_setup(%struct.mv88e6xxx_chip* %245)
  store i32 %246, i32* %10, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  br label %279

250:                                              ; preds = %244
  %251 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %252 = call i32 @mv88e6xxx_g1_vtu_prob_irq_setup(%struct.mv88e6xxx_chip* %251)
  store i32 %252, i32* %10, align 4
  %253 = load i32, i32* %10, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  br label %276

256:                                              ; preds = %250
  %257 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %258 = load %struct.device_node*, %struct.device_node** %7, align 8
  %259 = call i32 @mv88e6xxx_mdios_register(%struct.mv88e6xxx_chip* %257, %struct.device_node* %258)
  store i32 %259, i32* %10, align 4
  %260 = load i32, i32* %10, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %256
  br label %273

263:                                              ; preds = %256
  %264 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %265 = call i32 @mv88e6xxx_register_switch(%struct.mv88e6xxx_chip* %264)
  store i32 %265, i32* %10, align 4
  %266 = load i32, i32* %10, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %263
  br label %270

269:                                              ; preds = %263
  store i32 0, i32* %2, align 4
  br label %312

270:                                              ; preds = %268
  %271 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %272 = call i32 @mv88e6xxx_mdios_unregister(%struct.mv88e6xxx_chip* %271)
  br label %273

273:                                              ; preds = %270, %262
  %274 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %275 = call i32 @mv88e6xxx_g1_vtu_prob_irq_free(%struct.mv88e6xxx_chip* %274)
  br label %276

276:                                              ; preds = %273, %255
  %277 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %278 = call i32 @mv88e6xxx_g1_atu_prob_irq_free(%struct.mv88e6xxx_chip* %277)
  br label %279

279:                                              ; preds = %276, %249
  %280 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %281 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %280, i32 0, i32 1
  %282 = load %struct.mv88e6xxx_info*, %struct.mv88e6xxx_info** %281, align 8
  %283 = getelementptr inbounds %struct.mv88e6xxx_info, %struct.mv88e6xxx_info* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp sgt i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %279
  %287 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %288 = call i32 @mv88e6xxx_g2_irq_free(%struct.mv88e6xxx_chip* %287)
  br label %289

289:                                              ; preds = %286, %279
  br label %290

290:                                              ; preds = %289, %242
  %291 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %292 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = icmp sgt i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %290
  %296 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %297 = call i32 @mv88e6xxx_g1_irq_free(%struct.mv88e6xxx_chip* %296)
  br label %301

298:                                              ; preds = %290
  %299 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %300 = call i32 @mv88e6xxx_irq_poll_free(%struct.mv88e6xxx_chip* %299)
  br label %301

301:                                              ; preds = %298, %295
  br label %302

302:                                              ; preds = %301, %229, %197, %182, %146, %129, %117, %100
  %303 = load %struct.dsa_mv88e6xxx_pdata*, %struct.dsa_mv88e6xxx_pdata** %4, align 8
  %304 = icmp ne %struct.dsa_mv88e6xxx_pdata* %303, null
  br i1 %304, label %305, label %310

305:                                              ; preds = %302
  %306 = load %struct.dsa_mv88e6xxx_pdata*, %struct.dsa_mv88e6xxx_pdata** %4, align 8
  %307 = getelementptr inbounds %struct.dsa_mv88e6xxx_pdata, %struct.dsa_mv88e6xxx_pdata* %306, i32 0, i32 2
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %307, align 8
  %309 = call i32 @dev_put(%struct.TYPE_6__* %308)
  br label %310

310:                                              ; preds = %305, %302
  %311 = load i32, i32* %10, align 4
  store i32 %311, i32* %2, align 4
  br label %312

312:                                              ; preds = %310, %269, %92, %44, %25
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

declare dso_local %struct.mv88e6xxx_info* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.mv88e6xxx_info* @pdata_device_get_match_data(%struct.device*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.mv88e6xxx_chip* @mv88e6xxx_alloc_chip(%struct.device*) #1

declare dso_local i32 @mv88e6xxx_smi_init(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i64 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mv88e6xxx_detect(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_phy_init(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_switch_reset(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @of_irq_get(%struct.device_node*, i32) #1

declare dso_local i32 @mv88e6xxx_g1_irq_setup(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_irq_poll_setup(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g2_irq_setup(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_atu_prob_irq_setup(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_prob_irq_setup(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_mdios_register(%struct.mv88e6xxx_chip*, %struct.device_node*) #1

declare dso_local i32 @mv88e6xxx_register_switch(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_mdios_unregister(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_prob_irq_free(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_atu_prob_irq_free(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g2_irq_free(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_irq_free(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_irq_poll_free(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @dev_put(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
