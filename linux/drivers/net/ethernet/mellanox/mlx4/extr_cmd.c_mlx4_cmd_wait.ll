; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_cmd_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_cmd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_cmd = type { i64, i32, i32, %struct.mlx4_cmd_context*, i64 }
%struct.mlx4_cmd_context = type { i64, i64, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.mlx4_cmd }

@.str = private unnamed_addr constant [65 x i8] c"response expected while output mailbox is NULL for command 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX4_CMD_SENSE_PORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"command 0x%x timed out (go bit not cleared)\0A\00", align 1
@MLX4_CMD_NOP = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i64 0, align 8
@MLX4_SET_PORT_IB_OPCODE = common dso_local global i64 0, align 8
@CMD_STAT_BAD_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"command 0x%x failed: fw status = 0x%x\0A\00", align 1
@MLX4_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i64, i64*, i32, i32, i64, i64, i64)* @mlx4_cmd_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_cmd_wait(%struct.mlx4_dev* %0, i64 %1, i64* %2, i32 %3, i32 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.mlx4_cmd*, align 8
  %18 = alloca %struct.mlx4_cmd_context*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %22 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.mlx4_cmd* %23, %struct.mlx4_cmd** %17, align 8
  store i32 0, i32* %20, align 4
  %24 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %25 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %24, i32 0, i32 1
  %26 = call i32 @down(i32* %25)
  %27 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %28 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %27, i32 0, i32 2
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %31 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %37 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %36, i32 0, i32 3
  %38 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %37, align 8
  %39 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %40 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %38, i64 %41
  store %struct.mlx4_cmd_context* %42, %struct.mlx4_cmd_context** %18, align 8
  %43 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %44 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %48 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %54 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %57 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %59 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %58, i32 0, i32 2
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %8
  %64 = load i64*, i64** %11, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i32 (%struct.mlx4_dev*, i8*, i64, ...) @mlx4_err(%struct.mlx4_dev* %67, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %20, align 4
  br label %221

72:                                               ; preds = %63, %8
  %73 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %74 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %73, i32 0, i32 4
  %75 = call i32 @reinit_completion(i32* %74)
  %76 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64*, i64** %11, align 8
  %79 = icmp ne i64* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i64*, i64** %11, align 8
  %82 = load i64, i64* %81, align 8
  br label %84

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %80
  %85 = phi i64 [ %82, %80 ], [ 0, %83 ]
  %86 = load i32, i32* %13, align 4
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %15, align 8
  %89 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %90 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @mlx4_cmd_post(%struct.mlx4_dev* %76, i64 %77, i64 %85, i32 %86, i64 %87, i64 %88, i32 %91, i32 1)
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* %20, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %211

96:                                               ; preds = %84
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* @MLX4_CMD_SENSE_PORT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %96
  %101 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %102 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %101, i32 0, i32 4
  %103 = load i64, i64* %16, align 8
  %104 = call i32 @msecs_to_jiffies(i64 %103)
  %105 = call i64 @wait_for_completion_interruptible_timeout(i32* %102, i32 %104)
  store i64 %105, i64* %19, align 8
  %106 = load i64, i64* %19, align 8
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %110 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %112 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %111, i32 0, i32 3
  store i64 0, i64* %112, align 8
  %113 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %114 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %113, i32 0, i32 2
  store i32 0, i32* %114, align 8
  br label %115

115:                                              ; preds = %108, %100
  br label %122

116:                                              ; preds = %96
  %117 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %118 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %117, i32 0, i32 4
  %119 = load i64, i64* %16, align 8
  %120 = call i32 @msecs_to_jiffies(i64 %119)
  %121 = call i64 @wait_for_completion_timeout(i32* %118, i32 %120)
  store i64 %121, i64* %19, align 8
  br label %122

122:                                              ; preds = %116, %115
  %123 = load i64, i64* %19, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %138, label %125

125:                                              ; preds = %122
  %126 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %127 = load i64, i64* %15, align 8
  %128 = call i32 @mlx4_warn(%struct.mlx4_dev* %126, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %127)
  %129 = load i64, i64* %15, align 8
  %130 = load i64, i64* @MLX4_CMD_NOP, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i32, i32* @EBUSY, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %20, align 4
  br label %221

135:                                              ; preds = %125
  %136 = load i32, i32* @EIO, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %20, align 4
  br label %211

138:                                              ; preds = %122
  %139 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %140 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %20, align 4
  %142 = load i32, i32* %20, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %202

144:                                              ; preds = %138
  %145 = load i64, i64* %15, align 8
  %146 = load i64, i64* @MLX4_CMD_SET_PORT, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %171

148:                                              ; preds = %144
  %149 = load i32, i32* %13, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %13, align 4
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %171

154:                                              ; preds = %151, %148
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* @MLX4_SET_PORT_IB_OPCODE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %154
  %159 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %160 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @CMD_STAT_BAD_SIZE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %158
  %165 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %166 = load i64, i64* %15, align 8
  %167 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %168 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @mlx4_dbg(%struct.mlx4_dev* %165, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %166, i64 %169)
  br label %178

171:                                              ; preds = %158, %154, %151, %144
  %172 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %173 = load i64, i64* %15, align 8
  %174 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %175 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i32 (%struct.mlx4_dev*, i8*, i64, ...) @mlx4_err(%struct.mlx4_dev* %172, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %173, i64 %176)
  br label %178

178:                                              ; preds = %171, %164
  %179 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %180 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %179, i32 0, i32 0
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @MLX4_DEVICE_STATE_INTERNAL_ERROR, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %178
  %188 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %189 = load i64, i64* %15, align 8
  %190 = load i64, i64* %14, align 8
  %191 = call i32 @mlx4_internal_err_ret_value(%struct.mlx4_dev* %188, i64 %189, i64 %190)
  store i32 %191, i32* %20, align 4
  br label %201

192:                                              ; preds = %178
  %193 = load i64, i64* %15, align 8
  %194 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %195 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @mlx4_closing_cmd_fatal_error(i64 %193, i64 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  br label %211

200:                                              ; preds = %192
  br label %201

201:                                              ; preds = %200, %187
  br label %221

202:                                              ; preds = %138
  %203 = load i32, i32* %12, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %202
  %206 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %207 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = load i64*, i64** %11, align 8
  store i64 %208, i64* %209, align 8
  br label %210

210:                                              ; preds = %205, %202
  br label %211

211:                                              ; preds = %210, %199, %135, %95
  %212 = load i32, i32* %20, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %216 = load i64, i64* %15, align 8
  %217 = load i64, i64* %14, align 8
  %218 = load i32, i32* %20, align 4
  %219 = call i32 @mlx4_cmd_reset_flow(%struct.mlx4_dev* %215, i64 %216, i64 %217, i32 %218)
  store i32 %219, i32* %20, align 4
  br label %220

220:                                              ; preds = %214, %211
  br label %221

221:                                              ; preds = %220, %201, %132, %66
  %222 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %223 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %222, i32 0, i32 2
  %224 = call i32 @spin_lock(i32* %223)
  %225 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %226 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %229 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %228, i32 0, i32 0
  store i64 %227, i64* %229, align 8
  %230 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %231 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %232 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %231, i32 0, i32 3
  %233 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %232, align 8
  %234 = ptrtoint %struct.mlx4_cmd_context* %230 to i64
  %235 = ptrtoint %struct.mlx4_cmd_context* %233 to i64
  %236 = sub i64 %234, %235
  %237 = sdiv exact i64 %236, 40
  %238 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %239 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %238, i32 0, i32 0
  store i64 %237, i64* %239, align 8
  %240 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %241 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %240, i32 0, i32 2
  %242 = call i32 @spin_unlock(i32* %241)
  %243 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %244 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %243, i32 0, i32 1
  %245 = call i32 @up(i32* %244)
  %246 = load i32, i32* %20, align 4
  ret i32 %246
}

declare dso_local %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i64, ...) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @mlx4_cmd_post(%struct.mlx4_dev*, i64, i64, i32, i64, i64, i32, i32) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i64) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i64, i64) #1

declare dso_local i32 @mlx4_internal_err_ret_value(%struct.mlx4_dev*, i64, i64) #1

declare dso_local i64 @mlx4_closing_cmd_fatal_error(i64, i64) #1

declare dso_local i32 @mlx4_cmd_reset_flow(%struct.mlx4_dev*, i64, i64, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
