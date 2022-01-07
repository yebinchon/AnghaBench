; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_execute_tpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_execute_tpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r592_device = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"BUG: tpc execution without request!\00", align 1
@MS_TPC_SET_RW_REG_ADRS = common dso_local global i32 0, align 4
@R592_LFIFO_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"IO: hardware doesn't support TPCs longer that 512\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@R592_REG_MSC = common dso_local global i32 0, align 4
@R592_REG_MSC_PRSNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"IO: refusing to send TPC because card is absent\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"IO: executing %s LEN=%d\00", align 1
@R592_IO = common dso_local global i32 0, align 4
@R592_IO_DIRECTION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@R592_TPC_EXEC_LEN_SHIFT = common dso_local global i32 0, align 4
@R592_TPC_EXEC_TPC_SHIFT = common dso_local global i32 0, align 4
@R592_TPC_EXEC_BIG_FIFO = common dso_local global i32 0, align 4
@R592_TPC_EXEC = common dso_local global i32 0, align 4
@R592_STATUS_RDY = common dso_local global i32 0, align 4
@R592_STATUS_CED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"card didn't respond\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"IO error\00", align 1
@R592_STATUS = common dso_local global i32 0, align 4
@R592_STATUS_P_CMDNACK = common dso_local global i32 0, align 4
@MEMSTICK_INT_CMDNAK = common dso_local global i32 0, align 4
@R592_STATUS_P_BREQ = common dso_local global i32 0, align 4
@MEMSTICK_INT_BREQ = common dso_local global i32 0, align 4
@R592_STATUS_P_INTERR = common dso_local global i32 0, align 4
@MEMSTICK_INT_ERR = common dso_local global i32 0, align 4
@R592_STATUS_P_CED = common dso_local global i32 0, align 4
@MEMSTICK_INT_CED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"FIFO read error\00", align 1
@R592_REG_MSC_LED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r592_device*)* @r592_execute_tpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r592_execute_tpc(%struct.r592_device* %0) #0 {
  %2 = alloca %struct.r592_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.r592_device* %0, %struct.r592_device** %2, align 8
  %8 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %9 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @message(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %254

14:                                               ; preds = %1
  %15 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %16 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MS_TPC_SET_RW_REG_ADRS, align 4
  %21 = icmp sge i32 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  %23 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %24 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %14
  %30 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %31 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  br label %42

36:                                               ; preds = %14
  %37 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %38 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  br label %42

42:                                               ; preds = %36, %29
  %43 = phi i32 [ %35, %29 ], [ %41, %36 ]
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @R592_LFIFO_SIZE, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = call i32 @message(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ENOSYS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %244

51:                                               ; preds = %42
  %52 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %53 = load i32, i32* @R592_REG_MSC, align 4
  %54 = call i32 @r592_read_reg(%struct.r592_device* %52, i32 %53)
  %55 = load i32, i32* @R592_REG_MSC_PRSNT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %244

62:                                               ; preds = %51
  %63 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %64 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @memstick_debug_get_tpc_name(i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %75 = load i32, i32* @R592_IO, align 4
  %76 = load i32, i32* @R592_IO_DIRECTION, align 4
  %77 = call i32 @r592_set_reg_mask(%struct.r592_device* %74, i32 %75, i32 %76)
  br label %83

78:                                               ; preds = %62
  %79 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %80 = load i32, i32* @R592_IO, align 4
  %81 = load i32, i32* @R592_IO_DIRECTION, align 4
  %82 = call i32 @r592_clear_reg_mask(%struct.r592_device* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %73
  %84 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %85 = call i32 @r592_test_fifo_empty(%struct.r592_device* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %244

89:                                               ; preds = %83
  %90 = load i32, i32* %3, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %94 = call i32 @r592_transfer_fifo_dma(%struct.r592_device* %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %101 = call i32 @r592_transfer_fifo_pio(%struct.r592_device* %100)
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %99, %92
  br label %103

103:                                              ; preds = %102, %89
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %244

107:                                              ; preds = %103
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @R592_TPC_EXEC_LEN_SHIFT, align 4
  %110 = shl i32 %108, %109
  %111 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %112 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @R592_TPC_EXEC_TPC_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = or i32 %110, %117
  %119 = load i32, i32* @R592_TPC_EXEC_BIG_FIFO, align 4
  %120 = or i32 %118, %119
  store i32 %120, i32* %7, align 4
  %121 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %122 = load i32, i32* @R592_TPC_EXEC, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @r592_write_reg(%struct.r592_device* %121, i32 %122, i32 %123)
  %125 = load i32, i32* @R592_STATUS_RDY, align 4
  store i32 %125, i32* %6, align 4
  %126 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %127 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %107
  %133 = load i32, i32* @R592_STATUS_CED, align 4
  %134 = load i32, i32* %6, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %132, %107
  %137 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @r592_wait_status(%struct.r592_device* %137, i32 %138, i32 %139)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = call i32 @message(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %244

145:                                              ; preds = %136
  %146 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %147 = call i32 @r592_test_io_error(%struct.r592_device* %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %244

152:                                              ; preds = %145
  %153 = load i32, i32* %3, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %152
  %156 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %157 = call i32 @r592_transfer_fifo_dma(%struct.r592_device* %156)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %164 = call i32 @r592_transfer_fifo_pio(%struct.r592_device* %163)
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %162, %155
  br label %166

166:                                              ; preds = %165, %152
  %167 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %168 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %238

171:                                              ; preds = %166
  %172 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %173 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %172, i32 0, i32 0
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %238

178:                                              ; preds = %171
  %179 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %180 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %179, i32 0, i32 0
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 3
  store i32 0, i32* %182, align 4
  %183 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %184 = load i32, i32* @R592_STATUS, align 4
  %185 = call i32 @r592_read_reg(%struct.r592_device* %183, i32 %184)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @R592_STATUS_P_CMDNACK, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %178
  %191 = load i32, i32* @MEMSTICK_INT_CMDNAK, align 4
  %192 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %193 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %192, i32 0, i32 0
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %191
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %190, %178
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* @R592_STATUS_P_BREQ, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %198
  %204 = load i32, i32* @MEMSTICK_INT_BREQ, align 4
  %205 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %206 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %205, i32 0, i32 0
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %204
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %203, %198
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* @R592_STATUS_P_INTERR, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %211
  %217 = load i32, i32* @MEMSTICK_INT_ERR, align 4
  %218 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %219 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %218, i32 0, i32 0
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %217
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %216, %211
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* @R592_STATUS_P_CED, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %224
  %230 = load i32, i32* @MEMSTICK_INT_CED, align 4
  %231 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %232 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %231, i32 0, i32 0
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, %230
  store i32 %236, i32* %234, align 4
  br label %237

237:                                              ; preds = %229, %224
  br label %238

238:                                              ; preds = %237, %171, %166
  %239 = load i32, i32* %5, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %243

243:                                              ; preds = %241, %238
  br label %244

244:                                              ; preds = %243, %150, %143, %106, %88, %58, %47
  %245 = load i32, i32* %5, align 4
  %246 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %247 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %246, i32 0, i32 0
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 2
  store i32 %245, i32* %249, align 8
  %250 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %251 = load i32, i32* @R592_REG_MSC, align 4
  %252 = load i32, i32* @R592_REG_MSC_LED, align 4
  %253 = call i32 @r592_clear_reg_mask(%struct.r592_device* %250, i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %244, %12
  ret void
}

declare dso_local i32 @message(i8*) #1

declare dso_local i32 @r592_read_reg(%struct.r592_device*, i32) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @memstick_debug_get_tpc_name(i32) #1

declare dso_local i32 @r592_set_reg_mask(%struct.r592_device*, i32, i32) #1

declare dso_local i32 @r592_clear_reg_mask(%struct.r592_device*, i32, i32) #1

declare dso_local i32 @r592_test_fifo_empty(%struct.r592_device*) #1

declare dso_local i32 @r592_transfer_fifo_dma(%struct.r592_device*) #1

declare dso_local i32 @r592_transfer_fifo_pio(%struct.r592_device*) #1

declare dso_local i32 @r592_write_reg(%struct.r592_device*, i32, i32) #1

declare dso_local i32 @r592_wait_status(%struct.r592_device*, i32, i32) #1

declare dso_local i32 @r592_test_io_error(%struct.r592_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
