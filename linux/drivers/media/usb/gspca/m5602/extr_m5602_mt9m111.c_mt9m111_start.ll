; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.cam }
%struct.cam = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.gspca_dev = type { i32 }

@start_mt9m111 = common dso_local global i64** null, align 8
@BRIDGE = common dso_local global i64 0, align 8
@M5602_XB_VSYNC_PARA = common dso_local global i64 0, align 8
@M5602_XB_SIG_INI = common dso_local global i64 0, align 8
@M5602_XB_HSYNC_PARA = common dso_local global i64 0, align 8
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Configuring camera for VGA mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Configuring camera for QVGA mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt9m111_start(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i64], align 16
  %7 = alloca %struct.cam*, align 8
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.sd*, %struct.sd** %3, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.cam* %13, %struct.cam** %7, align 8
  %14 = load %struct.sd*, %struct.sd** %3, align 8
  %15 = bitcast %struct.sd* %14 to %struct.gspca_dev*
  store %struct.gspca_dev* %15, %struct.gspca_dev** %8, align 8
  %16 = load %struct.cam*, %struct.cam** %7, align 8
  %17 = getelementptr inbounds %struct.cam, %struct.cam* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load %struct.sd*, %struct.sd** %3, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load %struct.cam*, %struct.cam** %7, align 8
  %28 = getelementptr inbounds %struct.cam, %struct.cam* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load %struct.sd*, %struct.sd** %3, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %104, %1
  %38 = load i32, i32* %4, align 4
  %39 = load i64**, i64*** @start_mt9m111, align 8
  %40 = call i32 @ARRAY_SIZE(i64** %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i1 [ false, %37 ], [ %45, %42 ]
  br i1 %47, label %48, label %107

48:                                               ; preds = %46
  %49 = load i64**, i64*** @start_mt9m111, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64*, i64** %49, i64 %51
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BRIDGE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %48
  %59 = load %struct.sd*, %struct.sd** %3, align 8
  %60 = load i64**, i64*** @start_mt9m111, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64*, i64** %60, i64 %62
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64**, i64*** @start_mt9m111, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64*, i64** %67, i64 %69
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 2
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @m5602_write_bridge(%struct.sd* %59, i64 %66, i32 %74)
  store i32 %75, i32* %5, align 4
  br label %103

76:                                               ; preds = %48
  %77 = load i64**, i64*** @start_mt9m111, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64*, i64** %77, i64 %79
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 2
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  store i64 %83, i64* %84, align 16
  %85 = load i64**, i64*** @start_mt9m111, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64*, i64** %85, i64 %87
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 3
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  store i64 %91, i64* %92, align 8
  %93 = load %struct.sd*, %struct.sd** %3, align 8
  %94 = load i64**, i64*** @start_mt9m111, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64*, i64** %94, i64 %96
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %102 = call i32 @m5602_write_sensor(%struct.sd* %93, i64 %100, i64* %101, i32 2)
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %76, %58
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %37

107:                                              ; preds = %46
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %234

112:                                              ; preds = %107
  %113 = load %struct.sd*, %struct.sd** %3, align 8
  %114 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %115 = load i32, i32* %10, align 4
  %116 = ashr i32 %115, 8
  %117 = and i32 %116, 255
  %118 = call i32 @m5602_write_bridge(%struct.sd* %113, i64 %114, i32 %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %234

123:                                              ; preds = %112
  %124 = load %struct.sd*, %struct.sd** %3, align 8
  %125 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %126 = load i32, i32* %10, align 4
  %127 = and i32 %126, 255
  %128 = call i32 @m5602_write_bridge(%struct.sd* %124, i64 %125, i32 %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* %2, align 4
  br label %234

133:                                              ; preds = %123
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %147, %133
  %135 = load i32, i32* %4, align 4
  %136 = icmp slt i32 %135, 2
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  br label %141

141:                                              ; preds = %137, %134
  %142 = phi i1 [ false, %134 ], [ %140, %137 ]
  br i1 %142, label %143, label %150

143:                                              ; preds = %141
  %144 = load %struct.sd*, %struct.sd** %3, align 8
  %145 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %146 = call i32 @m5602_write_bridge(%struct.sd* %144, i64 %145, i32 0)
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  br label %134

150:                                              ; preds = %141
  %151 = load i32, i32* %5, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i32, i32* %5, align 4
  store i32 %154, i32* %2, align 4
  br label %234

155:                                              ; preds = %150
  %156 = load %struct.sd*, %struct.sd** %3, align 8
  %157 = load i64, i64* @M5602_XB_SIG_INI, align 8
  %158 = call i32 @m5602_write_bridge(%struct.sd* %156, i64 %157, i32 0)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i32, i32* %5, align 4
  store i32 %162, i32* %2, align 4
  br label %234

163:                                              ; preds = %155
  %164 = load %struct.sd*, %struct.sd** %3, align 8
  %165 = load i64, i64* @M5602_XB_SIG_INI, align 8
  %166 = call i32 @m5602_write_bridge(%struct.sd* %164, i64 %165, i32 2)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %5, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* %5, align 4
  store i32 %170, i32* %2, align 4
  br label %234

171:                                              ; preds = %163
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %185, %171
  %173 = load i32, i32* %4, align 4
  %174 = icmp slt i32 %173, 2
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i32, i32* %5, align 4
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  br label %179

179:                                              ; preds = %175, %172
  %180 = phi i1 [ false, %172 ], [ %178, %175 ]
  br i1 %180, label %181, label %188

181:                                              ; preds = %179
  %182 = load %struct.sd*, %struct.sd** %3, align 8
  %183 = load i64, i64* @M5602_XB_HSYNC_PARA, align 8
  %184 = call i32 @m5602_write_bridge(%struct.sd* %182, i64 %183, i32 0)
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %181
  %186 = load i32, i32* %4, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %4, align 4
  br label %172

188:                                              ; preds = %179
  %189 = load i32, i32* %5, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = load i32, i32* %5, align 4
  store i32 %192, i32* %2, align 4
  br label %234

193:                                              ; preds = %188
  %194 = load %struct.sd*, %struct.sd** %3, align 8
  %195 = load i64, i64* @M5602_XB_HSYNC_PARA, align 8
  %196 = load i32, i32* %9, align 4
  %197 = ashr i32 %196, 8
  %198 = and i32 %197, 255
  %199 = call i32 @m5602_write_bridge(%struct.sd* %194, i64 %195, i32 %198)
  store i32 %199, i32* %5, align 4
  %200 = load i32, i32* %5, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %193
  %203 = load i32, i32* %5, align 4
  store i32 %203, i32* %2, align 4
  br label %234

204:                                              ; preds = %193
  %205 = load %struct.sd*, %struct.sd** %3, align 8
  %206 = load i64, i64* @M5602_XB_HSYNC_PARA, align 8
  %207 = load i32, i32* %9, align 4
  %208 = and i32 %207, 255
  %209 = call i32 @m5602_write_bridge(%struct.sd* %205, i64 %206, i32 %208)
  store i32 %209, i32* %5, align 4
  %210 = load i32, i32* %5, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %204
  %213 = load i32, i32* %5, align 4
  store i32 %213, i32* %2, align 4
  br label %234

214:                                              ; preds = %204
  %215 = load %struct.sd*, %struct.sd** %3, align 8
  %216 = load i64, i64* @M5602_XB_SIG_INI, align 8
  %217 = call i32 @m5602_write_bridge(%struct.sd* %215, i64 %216, i32 0)
  store i32 %217, i32* %5, align 4
  %218 = load i32, i32* %5, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %214
  %221 = load i32, i32* %5, align 4
  store i32 %221, i32* %2, align 4
  br label %234

222:                                              ; preds = %214
  %223 = load i32, i32* %9, align 4
  switch i32 %223, label %232 [
    i32 640, label %224
    i32 320, label %228
  ]

224:                                              ; preds = %222
  %225 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %226 = load i32, i32* @D_CONF, align 4
  %227 = call i32 @gspca_dbg(%struct.gspca_dev* %225, i32 %226, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %232

228:                                              ; preds = %222
  %229 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %230 = load i32, i32* @D_CONF, align 4
  %231 = call i32 @gspca_dbg(%struct.gspca_dev* %229, i32 %230, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %232

232:                                              ; preds = %222, %228, %224
  %233 = load i32, i32* %5, align 4
  store i32 %233, i32* %2, align 4
  br label %234

234:                                              ; preds = %232, %220, %212, %202, %191, %169, %161, %153, %131, %121, %110
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i64, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i64, i64*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
