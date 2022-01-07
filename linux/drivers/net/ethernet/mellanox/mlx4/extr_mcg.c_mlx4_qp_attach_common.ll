; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mcg.c_mlx4_qp_attach_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mcg.c_mlx4_qp_attach_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx4_qp = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_mgm* }
%struct.mlx4_mgm = type { i8*, i8*, i8**, i32 }

@.str = private unnamed_addr constant [22 x i8] c"No AMGM entries left\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"MGM at index %x is full\0A\00", align 1
@MGM_QPN_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"QP %06x already a member of MGM\0A\00", align 1
@MGM_BLCK_LB_BIT = common dso_local global i32 0, align 4
@MLX4_PROT_ETH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Got AMGM index %d < %d\0A\00", align 1
@MLX4_USE_RR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_qp_attach_common(%struct.mlx4_dev* %0, %struct.mlx4_qp* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca %struct.mlx4_qp*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_priv*, align 8
  %15 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %16 = alloca %struct.mlx4_mgm*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store %struct.mlx4_qp* %1, %struct.mlx4_qp** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %26 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %25)
  store %struct.mlx4_priv* %26, %struct.mlx4_priv** %14, align 8
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %31 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %30)
  store %struct.mlx4_cmd_mailbox* %31, %struct.mlx4_cmd_mailbox** %15, align 8
  %32 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %15, align 8
  %33 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %15, align 8
  %37 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %36)
  store i32 %37, i32* %7, align 4
  br label %296

38:                                               ; preds = %6
  %39 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %15, align 8
  %40 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %39, i32 0, i32 0
  %41 = load %struct.mlx4_mgm*, %struct.mlx4_mgm** %40, align 8
  store %struct.mlx4_mgm* %41, %struct.mlx4_mgm** %16, align 8
  %42 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %43 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %47 = load i32, i32* %23, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %15, align 8
  %51 = call i32 @find_entry(%struct.mlx4_dev* %46, i32 %47, i32* %48, i32 %49, %struct.mlx4_cmd_mailbox* %50, i32* %19, i32* %18)
  store i32 %51, i32* %22, align 4
  %52 = load i32, i32* %22, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  br label %221

55:                                               ; preds = %38
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load %struct.mlx4_mgm*, %struct.mlx4_mgm** %16, align 8
  %60 = getelementptr inbounds %struct.mlx4_mgm, %struct.mlx4_mgm* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @be32_to_cpu(i8* %61)
  %63 = and i32 %62, 16777215
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  store i32 1, i32* %24, align 4
  %66 = load %struct.mlx4_mgm*, %struct.mlx4_mgm** %16, align 8
  %67 = getelementptr inbounds %struct.mlx4_mgm, %struct.mlx4_mgm* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @memcpy(i32 %68, i32* %69, i32 16)
  br label %71

71:                                               ; preds = %65, %58
  br label %98

72:                                               ; preds = %55
  store i32 1, i32* %20, align 4
  %73 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %74 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = call i32 @mlx4_bitmap_alloc(i32* %75)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %81 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %22, align 4
  br label %221

84:                                               ; preds = %72
  %85 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %86 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %18, align 4
  store i32 1, i32* %24, align 4
  %91 = load %struct.mlx4_mgm*, %struct.mlx4_mgm** %16, align 8
  %92 = call i32 @memset(%struct.mlx4_mgm* %91, i32 0, i32 32)
  %93 = load %struct.mlx4_mgm*, %struct.mlx4_mgm** %16, align 8
  %94 = getelementptr inbounds %struct.mlx4_mgm, %struct.mlx4_mgm* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @memcpy(i32 %95, i32* %96, i32 16)
  br label %98

98:                                               ; preds = %84, %71
  %99 = load %struct.mlx4_mgm*, %struct.mlx4_mgm** %16, align 8
  %100 = getelementptr inbounds %struct.mlx4_mgm, %struct.mlx4_mgm* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @be32_to_cpu(i8* %101)
  %103 = and i32 %102, 16777215
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %106 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %104, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %98
  %111 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %112 = load i32, i32* %18, align 4
  %113 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %22, align 4
  br label %221

116:                                              ; preds = %98
  store i32 0, i32* %21, align 4
  br label %117

117:                                              ; preds = %143, %116
  %118 = load i32, i32* %21, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %146

121:                                              ; preds = %117
  %122 = load %struct.mlx4_mgm*, %struct.mlx4_mgm** %16, align 8
  %123 = getelementptr inbounds %struct.mlx4_mgm, %struct.mlx4_mgm* %122, i32 0, i32 2
  %124 = load i8**, i8*** %123, align 8
  %125 = load i32, i32* %21, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @be32_to_cpu(i8* %128)
  %130 = load i32, i32* @MGM_QPN_MASK, align 4
  %131 = and i32 %129, %130
  %132 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %133 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %121
  %137 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %138 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %139 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @mlx4_dbg(%struct.mlx4_dev* %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  store i32 0, i32* %22, align 4
  br label %221

142:                                              ; preds = %121
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %21, align 4
  br label %117

146:                                              ; preds = %117
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %146
  %150 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %151 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @MGM_QPN_MASK, align 4
  %154 = and i32 %152, %153
  %155 = load i32, i32* @MGM_BLCK_LB_BIT, align 4
  %156 = shl i32 1, %155
  %157 = or i32 %154, %156
  %158 = call i8* @cpu_to_be32(i32 %157)
  %159 = load %struct.mlx4_mgm*, %struct.mlx4_mgm** %16, align 8
  %160 = getelementptr inbounds %struct.mlx4_mgm, %struct.mlx4_mgm* %159, i32 0, i32 2
  %161 = load i8**, i8*** %160, align 8
  %162 = load i32, i32* %17, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %17, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8*, i8** %161, i64 %164
  store i8* %158, i8** %165, align 8
  br label %180

166:                                              ; preds = %146
  %167 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %168 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @MGM_QPN_MASK, align 4
  %171 = and i32 %169, %170
  %172 = call i8* @cpu_to_be32(i32 %171)
  %173 = load %struct.mlx4_mgm*, %struct.mlx4_mgm** %16, align 8
  %174 = getelementptr inbounds %struct.mlx4_mgm, %struct.mlx4_mgm* %173, i32 0, i32 2
  %175 = load i8**, i8*** %174, align 8
  %176 = load i32, i32* %17, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %17, align 4
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8*, i8** %175, i64 %178
  store i8* %172, i8** %179, align 8
  br label %180

180:                                              ; preds = %166, %149
  %181 = load i32, i32* %17, align 4
  %182 = load i32, i32* %12, align 4
  %183 = shl i32 %182, 30
  %184 = or i32 %181, %183
  %185 = call i8* @cpu_to_be32(i32 %184)
  %186 = load %struct.mlx4_mgm*, %struct.mlx4_mgm** %16, align 8
  %187 = getelementptr inbounds %struct.mlx4_mgm, %struct.mlx4_mgm* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  %188 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %189 = load i32, i32* %18, align 4
  %190 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %15, align 8
  %191 = call i32 @mlx4_WRITE_ENTRY(%struct.mlx4_dev* %188, i32 %189, %struct.mlx4_cmd_mailbox* %190)
  store i32 %191, i32* %22, align 4
  %192 = load i32, i32* %22, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %180
  br label %221

195:                                              ; preds = %180
  %196 = load i32, i32* %20, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  br label %221

199:                                              ; preds = %195
  %200 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %201 = load i32, i32* %19, align 4
  %202 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %15, align 8
  %203 = call i32 @mlx4_READ_ENTRY(%struct.mlx4_dev* %200, i32 %201, %struct.mlx4_cmd_mailbox* %202)
  store i32 %203, i32* %22, align 4
  %204 = load i32, i32* %22, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %221

207:                                              ; preds = %199
  %208 = load i32, i32* %18, align 4
  %209 = shl i32 %208, 6
  %210 = call i8* @cpu_to_be32(i32 %209)
  %211 = load %struct.mlx4_mgm*, %struct.mlx4_mgm** %16, align 8
  %212 = getelementptr inbounds %struct.mlx4_mgm, %struct.mlx4_mgm* %211, i32 0, i32 0
  store i8* %210, i8** %212, align 8
  %213 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %214 = load i32, i32* %19, align 4
  %215 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %15, align 8
  %216 = call i32 @mlx4_WRITE_ENTRY(%struct.mlx4_dev* %213, i32 %214, %struct.mlx4_cmd_mailbox* %215)
  store i32 %216, i32* %22, align 4
  %217 = load i32, i32* %22, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %207
  br label %221

220:                                              ; preds = %207
  br label %221

221:                                              ; preds = %220, %219, %206, %198, %194, %136, %110, %79, %54
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* @MLX4_PROT_ETH, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %250

225:                                              ; preds = %221
  %226 = load i32, i32* %18, align 4
  %227 = icmp ne i32 %226, -1
  br i1 %227, label %228, label %250

228:                                              ; preds = %225
  %229 = load i32, i32* %24, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %240

231:                                              ; preds = %228
  %232 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %233 = load i32, i32* %23, align 4
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* %18, align 4
  %236 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %237 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @new_steering_entry(%struct.mlx4_dev* %232, i32 %233, i32 %234, i32 %235, i32 %238)
  store i32 %239, i32* %22, align 4
  br label %249

240:                                              ; preds = %228
  %241 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %242 = load i32, i32* %23, align 4
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %18, align 4
  %245 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %246 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @existing_steering_entry(%struct.mlx4_dev* %241, i32 %242, i32 %243, i32 %244, i32 %247)
  store i32 %248, i32* %22, align 4
  br label %249

249:                                              ; preds = %240, %231
  br label %250

250:                                              ; preds = %249, %225, %221
  %251 = load i32, i32* %22, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %287

253:                                              ; preds = %250
  %254 = load i32, i32* %20, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %287

256:                                              ; preds = %253
  %257 = load i32, i32* %18, align 4
  %258 = icmp ne i32 %257, -1
  br i1 %258, label %259, label %287

259:                                              ; preds = %256
  %260 = load i32, i32* %18, align 4
  %261 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %262 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp slt i32 %260, %264
  br i1 %265, label %266, label %274

266:                                              ; preds = %259
  %267 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %268 = load i32, i32* %18, align 4
  %269 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %270 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @mlx4_warn(%struct.mlx4_dev* %267, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %268, i32 %272)
  br label %286

274:                                              ; preds = %259
  %275 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %276 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 1
  %278 = load i32, i32* %18, align 4
  %279 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %280 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = sub nsw i32 %278, %282
  %284 = load i32, i32* @MLX4_USE_RR, align 4
  %285 = call i32 @mlx4_bitmap_free(i32* %277, i32 %283, i32 %284)
  br label %286

286:                                              ; preds = %274, %266
  br label %287

287:                                              ; preds = %286, %256, %253, %250
  %288 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %289 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 0
  %291 = call i32 @mutex_unlock(i32* %290)
  %292 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %293 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %15, align 8
  %294 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %292, %struct.mlx4_cmd_mailbox* %293)
  %295 = load i32, i32* %22, align 4
  store i32 %295, i32* %7, align 4
  br label %296

296:                                              ; preds = %287, %35
  %297 = load i32, i32* %7, align 4
  ret i32 %297
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_entry(%struct.mlx4_dev*, i32, i32*, i32, %struct.mlx4_cmd_mailbox*, i32*, i32*) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mlx4_bitmap_alloc(i32*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @memset(%struct.mlx4_mgm*, i32, i32) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_WRITE_ENTRY(%struct.mlx4_dev*, i32, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_READ_ENTRY(%struct.mlx4_dev*, i32, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @new_steering_entry(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @existing_steering_entry(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32, i32) #1

declare dso_local i32 @mlx4_bitmap_free(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
