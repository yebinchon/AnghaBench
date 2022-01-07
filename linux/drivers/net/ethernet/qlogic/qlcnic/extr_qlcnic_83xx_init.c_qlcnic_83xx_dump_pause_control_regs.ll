; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_dump_pause_control_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_dump_pause_control_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QLC_83XX_SRE_SHIM_REG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SRE-Shim Ctrl:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Port 0 RxB Pause Threshold Regs[TC7..TC0]:\00", align 1
@QLC_83XX_PORT0_THRESHOLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Port 1 RxB Pause Threshold Regs[TC7..TC0]:\00", align 1
@QLC_83XX_PORT1_THRESHOLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"0x%x  \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Port 0 RxB TC Max Cell Registers[4..1]:\00", align 1
@QLC_83XX_PORT0_TC_MC_REG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Port 1 RxB TC Max Cell Registers[4..1]:\00", align 1
@QLC_83XX_PORT1_TC_MC_REG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Port 0 RxB Rx TC Stats[TC7..TC0]:\00", align 1
@QLC_83XX_PORT0_TC_STATS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Port 1 RxB Rx TC Stats[TC7..TC0]:\00", align 1
@QLC_83XX_PORT1_TC_STATS = common dso_local global i32 0, align 4
@QLC_83XX_PORT2_IFB_THRESHOLD = common dso_local global i32 0, align 4
@QLC_83XX_PORT3_IFB_THRESHOLD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"IFB-Pause Thresholds: Port 2:0x%x, Port 3:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*)* @qlcnic_83xx_dump_pause_control_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_dump_pause_control_regs(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %10 = load i32, i32* @QLC_83XX_SRE_SHIM_REG, align 4
  %11 = call i32 @QLCRD32(%struct.qlcnic_adapter* %9, i32 %10, i32* %8)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %244

17:                                               ; preds = %1
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32*, i8*, ...) @dev_info(i32* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %80, %17
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %83

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_info(i32* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @QLC_83XX_PORT0_THRESHOLD, align 4
  store i32 %36, i32* %7, align 4
  br label %48

37:                                               ; preds = %27
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @dev_info(i32* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @QLC_83XX_PORT1_THRESHOLD, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %40, %37
  br label %48

48:                                               ; preds = %47, %30
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %71, %48
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 8
  br i1 %51, label %52, label %74

52:                                               ; preds = %49
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %3, align 4
  %56 = mul nsw i32 %55, 4
  %57 = add nsw i32 %54, %56
  %58 = call i32 @QLCRD32(%struct.qlcnic_adapter* %53, i32 %57, i32* %8)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %244

64:                                               ; preds = %52
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (i32*, i8*, ...) @dev_info(i32* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %49

74:                                               ; preds = %49
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 (i32*, i8*, ...) @dev_info(i32* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %24

83:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %140, %83
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 2
  br i1 %86, label %87, label %143

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = call i32 (i32*, i8*, ...) @dev_info(i32* %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* @QLC_83XX_PORT0_TC_MC_REG, align 4
  store i32 %96, i32* %7, align 4
  br label %108

97:                                               ; preds = %87
  %98 = load i32, i32* %4, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = call i32 (i32*, i8*, ...) @dev_info(i32* %104, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %106 = load i32, i32* @QLC_83XX_PORT1_TC_MC_REG, align 4
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %100, %97
  br label %108

108:                                              ; preds = %107, %90
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %131, %108
  %110 = load i32, i32* %3, align 4
  %111 = icmp slt i32 %110, 4
  br i1 %111, label %112, label %134

112:                                              ; preds = %109
  %113 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %3, align 4
  %116 = mul nsw i32 %115, 4
  %117 = add nsw i32 %114, %116
  %118 = call i32 @QLCRD32(%struct.qlcnic_adapter* %113, i32 %117, i32* %8)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  br label %244

124:                                              ; preds = %112
  %125 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %126 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %5, align 4
  %130 = call i32 (i32*, i8*, ...) @dev_info(i32* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %124
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %3, align 4
  br label %109

134:                                              ; preds = %109
  %135 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %136 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = call i32 (i32*, i8*, ...) @dev_info(i32* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %140

140:                                              ; preds = %134
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %84

143:                                              ; preds = %84
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %215, %143
  %145 = load i32, i32* %4, align 4
  %146 = icmp slt i32 %145, 2
  br i1 %146, label %147, label %218

147:                                              ; preds = %144
  %148 = load i32, i32* %4, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %152 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %151, i32 0, i32 0
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = call i32 (i32*, i8*, ...) @dev_info(i32* %154, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %156 = load i32, i32* @QLC_83XX_PORT0_TC_STATS, align 4
  store i32 %156, i32* %7, align 4
  br label %168

157:                                              ; preds = %147
  %158 = load i32, i32* %4, align 4
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %162 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %161, i32 0, i32 0
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = call i32 (i32*, i8*, ...) @dev_info(i32* %164, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %166 = load i32, i32* @QLC_83XX_PORT1_TC_STATS, align 4
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %160, %157
  br label %168

168:                                              ; preds = %167, %150
  store i32 7, i32* %3, align 4
  br label %169

169:                                              ; preds = %206, %168
  %170 = load i32, i32* %3, align 4
  %171 = icmp sge i32 %170, 0
  br i1 %171, label %172, label %209

172:                                              ; preds = %169
  %173 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @QLCRD32(%struct.qlcnic_adapter* %173, i32 %174, i32* %8)
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @EIO, align 4
  %178 = sub nsw i32 0, %177
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  br label %244

181:                                              ; preds = %172
  %182 = load i32, i32* %5, align 4
  %183 = and i32 %182, 536870911
  store i32 %183, i32* %5, align 4
  %184 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* %3, align 4
  %188 = shl i32 %187, 29
  %189 = or i32 %186, %188
  %190 = call i32 @QLCWR32(%struct.qlcnic_adapter* %184, i32 %185, i32 %189)
  %191 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @QLCRD32(%struct.qlcnic_adapter* %191, i32 %192, i32* %8)
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @EIO, align 4
  %196 = sub nsw i32 0, %195
  %197 = icmp eq i32 %194, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %181
  br label %244

199:                                              ; preds = %181
  %200 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %201 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %200, i32 0, i32 0
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32, i32* %5, align 4
  %205 = call i32 (i32*, i8*, ...) @dev_info(i32* %203, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %199
  %207 = load i32, i32* %3, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %3, align 4
  br label %169

209:                                              ; preds = %169
  %210 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %211 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %210, i32 0, i32 0
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = call i32 (i32*, i8*, ...) @dev_info(i32* %213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %215

215:                                              ; preds = %209
  %216 = load i32, i32* %4, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %4, align 4
  br label %144

218:                                              ; preds = %144
  %219 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %220 = load i32, i32* @QLC_83XX_PORT2_IFB_THRESHOLD, align 4
  %221 = call i32 @QLCRD32(%struct.qlcnic_adapter* %219, i32 %220, i32* %8)
  store i32 %221, i32* %5, align 4
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* @EIO, align 4
  %224 = sub nsw i32 0, %223
  %225 = icmp eq i32 %222, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  br label %244

227:                                              ; preds = %218
  %228 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %229 = load i32, i32* @QLC_83XX_PORT3_IFB_THRESHOLD, align 4
  %230 = call i32 @QLCRD32(%struct.qlcnic_adapter* %228, i32 %229, i32* %8)
  store i32 %230, i32* %6, align 4
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* @EIO, align 4
  %233 = sub nsw i32 0, %232
  %234 = icmp eq i32 %231, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %227
  br label %244

236:                                              ; preds = %227
  %237 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %238 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %237, i32 0, i32 0
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* %6, align 4
  %243 = call i32 (i32*, i8*, ...) @dev_info(i32* %240, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %236, %235, %226, %198, %180, %123, %63, %16
  ret void
}

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @QLCWR32(%struct.qlcnic_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
