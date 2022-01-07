; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_queue_chk_transition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_queue_chk_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_queue_sp_obj = type { i32, i32, i32, i32, i32 }
%struct.bnx2x_queue_state_params = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.bnx2x_queue_update_params }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2x_queue_update_params = type { i32 }

@BNX2X_Q_STATE_MAX = common dso_local global i32 0, align 4
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Blocking transition since pending was %lx\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BNX2X_Q_CMD_INIT = common dso_local global i32 0, align 4
@BNX2X_Q_CMD_SETUP = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_ACTIVE = common dso_local global i32 0, align 4
@BNX2X_Q_CMD_DEACTIVATE = common dso_local global i32 0, align 4
@BNX2X_Q_CMD_EMPTY = common dso_local global i32 0, align 4
@BNX2X_Q_CMD_UPDATE_TPA = common dso_local global i32 0, align 4
@BNX2X_Q_CMD_SETUP_TX_ONLY = common dso_local global i32 0, align 4
@BNX2X_Q_CMD_HALT = common dso_local global i32 0, align 4
@BNX2X_Q_CMD_UPDATE = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_ACTIVATE_CHNG = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_ACTIVATE = common dso_local global i32 0, align 4
@BNX2X_Q_CMD_TERMINATE = common dso_local global i32 0, align 4
@BNX2X_Q_CMD_CFC_DEL = common dso_local global i32 0, align 4
@BNX2X_Q_CMD_ACTIVATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Illegal state: %d\0A\00", align 1
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Good state transition: %d(%d)->%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Bad state transition request: %d %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_state_params*)* @bnx2x_queue_chk_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_queue_chk_transition(%struct.bnx2x* %0, %struct.bnx2x_queue_sp_obj* %1, %struct.bnx2x_queue_state_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_queue_sp_obj*, align 8
  %7 = alloca %struct.bnx2x_queue_state_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bnx2x_queue_update_params*, align 8
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_queue_sp_obj* %1, %struct.bnx2x_queue_sp_obj** %6, align 8
  store %struct.bnx2x_queue_state_params* %2, %struct.bnx2x_queue_state_params** %7, align 8
  %13 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %14 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @BNX2X_Q_STATE_MAX, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %7, align 8
  %18 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %7, align 8
  %21 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store %struct.bnx2x_queue_update_params* %22, %struct.bnx2x_queue_update_params** %11, align 8
  %23 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %24 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %27 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %7, align 8
  %28 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %27, i32 0, i32 2
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %33 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %32, i32 0, i32 2
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* @BNX2X_Q_STATE_MAX, align 4
  %35 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %36 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %3
  %38 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %39 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %44 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %269

49:                                               ; preds = %37
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %243 [
    i32 130, label %51
    i32 133, label %57
    i32 135, label %73
    i32 131, label %121
    i32 132, label %167
    i32 134, label %182
    i32 129, label %231
    i32 128, label %237
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @BNX2X_Q_CMD_INIT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 133, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %51
  br label %246

57:                                               ; preds = %49
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @BNX2X_Q_CMD_SETUP, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i32, i32* @BNX2X_Q_FLG_ACTIVE, align 4
  %63 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %7, align 8
  %64 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i64 @test_bit(i32 %62, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 135, i32* %9, align 4
  br label %71

70:                                               ; preds = %61
  store i32 134, i32* %9, align 4
  br label %71

71:                                               ; preds = %70, %69
  br label %72

72:                                               ; preds = %71, %57
  br label %246

73:                                               ; preds = %49
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @BNX2X_Q_CMD_DEACTIVATE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 134, i32* %9, align 4
  br label %120

78:                                               ; preds = %73
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @BNX2X_Q_CMD_EMPTY, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @BNX2X_Q_CMD_UPDATE_TPA, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %78
  store i32 135, i32* %9, align 4
  br label %119

87:                                               ; preds = %82
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @BNX2X_Q_CMD_SETUP_TX_ONLY, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 131, i32* %9, align 4
  store i32 1, i32* %12, align 4
  br label %118

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @BNX2X_Q_CMD_HALT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 129, i32* %9, align 4
  br label %117

97:                                               ; preds = %92
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @BNX2X_Q_CMD_UPDATE, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %97
  %102 = load i32, i32* @BNX2X_Q_UPDATE_ACTIVATE_CHNG, align 4
  %103 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %11, align 8
  %104 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %103, i32 0, i32 0
  %105 = call i64 @test_bit(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load i32, i32* @BNX2X_Q_UPDATE_ACTIVATE, align 4
  %109 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %11, align 8
  %110 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %109, i32 0, i32 0
  %111 = call i64 @test_bit(i32 %108, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %107
  store i32 134, i32* %9, align 4
  br label %115

114:                                              ; preds = %107, %101
  store i32 135, i32* %9, align 4
  br label %115

115:                                              ; preds = %114, %113
  br label %116

116:                                              ; preds = %115, %97
  br label %117

117:                                              ; preds = %116, %96
  br label %118

118:                                              ; preds = %117, %91
  br label %119

119:                                              ; preds = %118, %86
  br label %120

120:                                              ; preds = %119, %77
  br label %246

121:                                              ; preds = %49
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @BNX2X_Q_CMD_TERMINATE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i32 132, i32* %9, align 4
  br label %166

126:                                              ; preds = %121
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @BNX2X_Q_CMD_SETUP_TX_ONLY, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  store i32 131, i32* %9, align 4
  %131 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %132 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %165

135:                                              ; preds = %126
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @BNX2X_Q_CMD_EMPTY, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @BNX2X_Q_CMD_UPDATE_TPA, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139, %135
  store i32 131, i32* %9, align 4
  br label %164

144:                                              ; preds = %139
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @BNX2X_Q_CMD_UPDATE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = load i32, i32* @BNX2X_Q_UPDATE_ACTIVATE_CHNG, align 4
  %150 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %11, align 8
  %151 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %150, i32 0, i32 0
  %152 = call i64 @test_bit(i32 %149, i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %148
  %155 = load i32, i32* @BNX2X_Q_UPDATE_ACTIVATE, align 4
  %156 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %11, align 8
  %157 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %156, i32 0, i32 0
  %158 = call i64 @test_bit(i32 %155, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %154
  store i32 134, i32* %9, align 4
  br label %162

161:                                              ; preds = %154, %148
  store i32 131, i32* %9, align 4
  br label %162

162:                                              ; preds = %161, %160
  br label %163

163:                                              ; preds = %162, %144
  br label %164

164:                                              ; preds = %163, %143
  br label %165

165:                                              ; preds = %164, %130
  br label %166

166:                                              ; preds = %165, %125
  br label %246

167:                                              ; preds = %49
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @BNX2X_Q_CMD_CFC_DEL, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %167
  %172 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %173 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %174, 1
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %12, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  store i32 135, i32* %9, align 4
  br label %180

179:                                              ; preds = %171
  store i32 131, i32* %9, align 4
  br label %180

180:                                              ; preds = %179, %178
  br label %181

181:                                              ; preds = %180, %167
  br label %246

182:                                              ; preds = %49
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @BNX2X_Q_CMD_ACTIVATE, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  store i32 135, i32* %9, align 4
  br label %230

187:                                              ; preds = %182
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @BNX2X_Q_CMD_EMPTY, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %195, label %191

191:                                              ; preds = %187
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @BNX2X_Q_CMD_UPDATE_TPA, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %191, %187
  store i32 134, i32* %9, align 4
  br label %229

196:                                              ; preds = %191
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @BNX2X_Q_CMD_HALT, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  store i32 129, i32* %9, align 4
  br label %228

201:                                              ; preds = %196
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* @BNX2X_Q_CMD_UPDATE, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %227

205:                                              ; preds = %201
  %206 = load i32, i32* @BNX2X_Q_UPDATE_ACTIVATE_CHNG, align 4
  %207 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %11, align 8
  %208 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %207, i32 0, i32 0
  %209 = call i64 @test_bit(i32 %206, i32* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %225

211:                                              ; preds = %205
  %212 = load i32, i32* @BNX2X_Q_UPDATE_ACTIVATE, align 4
  %213 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %11, align 8
  %214 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %213, i32 0, i32 0
  %215 = call i64 @test_bit(i32 %212, i32* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %211
  %218 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %219 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  store i32 135, i32* %9, align 4
  br label %224

223:                                              ; preds = %217
  store i32 131, i32* %9, align 4
  br label %224

224:                                              ; preds = %223, %222
  br label %226

225:                                              ; preds = %211, %205
  store i32 134, i32* %9, align 4
  br label %226

226:                                              ; preds = %225, %224
  br label %227

227:                                              ; preds = %226, %201
  br label %228

228:                                              ; preds = %227, %200
  br label %229

229:                                              ; preds = %228, %195
  br label %230

230:                                              ; preds = %229, %186
  br label %246

231:                                              ; preds = %49
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* @BNX2X_Q_CMD_TERMINATE, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  store i32 128, i32* %9, align 4
  br label %236

236:                                              ; preds = %235, %231
  br label %246

237:                                              ; preds = %49
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* @BNX2X_Q_CMD_CFC_DEL, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  store i32 130, i32* %9, align 4
  br label %242

242:                                              ; preds = %241, %237
  br label %246

243:                                              ; preds = %49
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %243, %242, %236, %230, %181, %166, %120, %72, %56
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* @BNX2X_Q_STATE_MAX, align 4
  %249 = icmp ne i32 %247, %248
  br i1 %249, label %250, label %262

250:                                              ; preds = %246
  %251 = load i32, i32* @BNX2X_MSG_SP, align 4
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* %10, align 4
  %254 = load i32, i32* %9, align 4
  %255 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %251, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %252, i32 %253, i32 %254)
  %256 = load i32, i32* %9, align 4
  %257 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %258 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %257, i32 0, i32 3
  store i32 %256, i32* %258, align 4
  %259 = load i32, i32* %12, align 4
  %260 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %261 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %260, i32 0, i32 4
  store i32 %259, i32* %261, align 4
  store i32 0, i32* %4, align 4
  br label %269

262:                                              ; preds = %246
  %263 = load i32, i32* @BNX2X_MSG_SP, align 4
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* %10, align 4
  %266 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %263, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %264, i32 %265)
  %267 = load i32, i32* @EINVAL, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %4, align 4
  br label %269

269:                                              ; preds = %262, %250, %42
  %270 = load i32, i32* %4, align 4
  ret i32 %270
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
