; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-i2c.c_saa7134_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-i2c.c_saa7134_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"start xfer\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"i2c xfer:\00", align 1
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"send address\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c" [%02x quirk]\00", align 1
@START = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c" < %02x\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"read bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" =\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c" ?\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"write bytes\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@CONTINUE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"xfer done\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c" >\00", align 1
@STOP = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@i2c_debug = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c" ERROR: %s\0A\00", align 1
@str_i2c_status = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @saa7134_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa7134_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 0
  %18 = load %struct.saa7134_dev*, %struct.saa7134_dev** %17, align 8
  store %struct.saa7134_dev* %18, %struct.saa7134_dev** %8, align 8
  %19 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %20 = call i32 @i2c_get_status(%struct.saa7134_dev* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @i2c_is_idle(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %26 = call i32 @i2c_reset(%struct.saa7134_dev* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %275

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %3
  %33 = call i32 @i2c_dbg(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @i2c_dbg(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %234, %32
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %237

39:                                               ; preds = %35
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i64 %42
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @I2C_M_NOSTART, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 0, %50
  br i1 %51, label %52, label %132

52:                                               ; preds = %49, %39
  %53 = call i32 @i2c_dbg(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i64 %56
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 1
  store i32 %60, i32* %11, align 4
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i64 %63
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @I2C_M_RD, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %52
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %70, %52
  %74 = load i32, i32* %13, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %120

76:                                               ; preds = %73
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i64 %79
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @I2C_M_RD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %120

86:                                               ; preds = %76
  %87 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %87, i64 %89
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 64
  br i1 %93, label %94, label %120

94:                                               ; preds = %86
  %95 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %95, i64 %97
  %99 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 65
  br i1 %101, label %102, label %120

102:                                              ; preds = %94
  %103 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %103, i64 %105
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 25
  br i1 %109, label %110, label %120

110:                                              ; preds = %102
  store i32 254, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = call i32 (i32, i8*, ...) @i2c_cont(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %114 = load i32, i32* @START, align 4
  %115 = load i32, i32* %15, align 4
  %116 = trunc i32 %115 to i8
  %117 = call i32 @i2c_send_byte(%struct.saa7134_dev* %113, i32 %114, i8 zeroext %116)
  %118 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %119 = call i32 @i2c_recv_byte(%struct.saa7134_dev* %118)
  br label %120

120:                                              ; preds = %110, %102, %94, %86, %76, %73
  %121 = load i32, i32* %11, align 4
  %122 = call i32 (i32, i8*, ...) @i2c_cont(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  %123 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %124 = load i32, i32* @START, align 4
  %125 = load i32, i32* %11, align 4
  %126 = trunc i32 %125 to i8
  %127 = call i32 @i2c_send_byte(%struct.saa7134_dev* %123, i32 %124, i8 zeroext %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %260

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %49
  %133 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %133, i64 %135
  %137 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @I2C_M_RD, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %195

142:                                              ; preds = %132
  %143 = call i32 @i2c_dbg(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %144

144:                                              ; preds = %173, %142
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %146, i64 %148
  %150 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %145, %151
  br i1 %152, label %153, label %176

153:                                              ; preds = %144
  %154 = call i32 (i32, i8*, ...) @i2c_cont(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %155 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %156 = call i32 @i2c_recv_byte(%struct.saa7134_dev* %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %260

160:                                              ; preds = %153
  %161 = load i32, i32* %12, align 4
  %162 = call i32 (i32, i8*, ...) @i2c_cont(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %12, align 4
  %164 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %164, i64 %166
  %168 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %163, i32* %172, align 4
  br label %173

173:                                              ; preds = %160
  %174 = load i32, i32* %14, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %14, align 4
  br label %144

176:                                              ; preds = %144
  %177 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %177, i64 %179
  %181 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 25, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %176
  %185 = call i32 (i32, i8*, ...) @i2c_cont(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %186 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %187 = call i32 @i2c_recv_byte(%struct.saa7134_dev* %186)
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %260

191:                                              ; preds = %184
  %192 = load i32, i32* %12, align 4
  %193 = call i32 (i32, i8*, ...) @i2c_cont(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %192)
  br label %194

194:                                              ; preds = %191, %176
  br label %233

195:                                              ; preds = %132
  %196 = call i32 @i2c_dbg(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %197

197:                                              ; preds = %229, %195
  %198 = load i32, i32* %14, align 4
  %199 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %199, i64 %201
  %203 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %198, %204
  br i1 %205, label %206, label %232

206:                                              ; preds = %197
  %207 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %207, i64 %209
  %211 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* %10, align 1
  %218 = load i8, i8* %10, align 1
  %219 = zext i8 %218 to i32
  %220 = call i32 (i32, i8*, ...) @i2c_cont(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %219)
  %221 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %222 = load i32, i32* @CONTINUE, align 4
  %223 = load i8, i8* %10, align 1
  %224 = call i32 @i2c_send_byte(%struct.saa7134_dev* %221, i32 %222, i8 zeroext %223)
  store i32 %224, i32* %12, align 4
  %225 = load i32, i32* %12, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %206
  br label %260

228:                                              ; preds = %206
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %14, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %14, align 4
  br label %197

232:                                              ; preds = %197
  br label %233

233:                                              ; preds = %232, %194
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %13, align 4
  br label %35

237:                                              ; preds = %35
  %238 = call i32 @i2c_dbg(i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %239 = call i32 (i32, i8*, ...) @i2c_cont(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %240 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %241 = load i32, i32* @STOP, align 4
  %242 = call i32 @i2c_set_attr(%struct.saa7134_dev* %240, i32 %241)
  %243 = load i32, i32* @EIO, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %12, align 4
  %245 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %246 = call i32 @i2c_is_busy_wait(%struct.saa7134_dev* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %237
  br label %260

249:                                              ; preds = %237
  %250 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %251 = call i32 @i2c_get_status(%struct.saa7134_dev* %250)
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %9, align 4
  %253 = call i64 @i2c_is_error(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %249
  br label %260

256:                                              ; preds = %249
  %257 = call i32 @msleep(i32 1)
  %258 = call i32 (i32, i8*, ...) @i2c_cont(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %259 = load i32, i32* %7, align 4
  store i32 %259, i32* %4, align 4
  br label %275

260:                                              ; preds = %255, %248, %227, %190, %159, %130
  %261 = load i32, i32* @i2c_debug, align 4
  %262 = icmp eq i32 1, %261
  br i1 %262, label %263, label %273

263:                                              ; preds = %260
  %264 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %265 = call i32 @i2c_get_status(%struct.saa7134_dev* %264)
  store i32 %265, i32* %9, align 4
  %266 = load i8*, i8** @str_i2c_status, align 8
  %267 = load i32, i32* %9, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = call i32 (i32, i8*, ...) @i2c_cont(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %263, %260
  %274 = load i32, i32* %12, align 4
  store i32 %274, i32* %4, align 4
  br label %275

275:                                              ; preds = %273, %256, %28
  %276 = load i32, i32* %4, align 4
  ret i32 %276
}

declare dso_local i32 @i2c_get_status(%struct.saa7134_dev*) #1

declare dso_local i32 @i2c_is_idle(i32) #1

declare dso_local i32 @i2c_reset(%struct.saa7134_dev*) #1

declare dso_local i32 @i2c_dbg(i32, i8*) #1

declare dso_local i32 @i2c_cont(i32, i8*, ...) #1

declare dso_local i32 @i2c_send_byte(%struct.saa7134_dev*, i32, i8 zeroext) #1

declare dso_local i32 @i2c_recv_byte(%struct.saa7134_dev*) #1

declare dso_local i32 @i2c_set_attr(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @i2c_is_busy_wait(%struct.saa7134_dev*) #1

declare dso_local i64 @i2c_is_error(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
