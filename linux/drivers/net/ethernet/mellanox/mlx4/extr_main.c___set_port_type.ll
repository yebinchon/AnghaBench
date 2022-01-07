; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c___set_port_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c___set_port_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_port_info = type { i64, i32, %struct.mlx4_dev* }
%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32*, i32, i32*, i32 }
%struct.mlx4_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MLX4_MAX_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Requested port type for port %d is not supported on this HCA\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX4_PORT_TYPE_AUTO = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_DPDP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_SENSE_SUPPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [103 x i8] c"Auto sensing is not supported on this HCA. Set only 'eth' or 'ib' for both ports (should be the same)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_port_info*, i32)* @__set_port_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_port_type(%struct.mlx4_port_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_port_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca %struct.mlx4_priv*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_port_info* %0, %struct.mlx4_port_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %14, i32 0, i32 2
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %15, align 8
  store %struct.mlx4_dev* %16, %struct.mlx4_dev** %6, align 8
  %17 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %18 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %17)
  store %struct.mlx4_priv* %18, %struct.mlx4_priv** %7, align 8
  %19 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %4, align 8
  %32 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %26, %35
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %2
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %41 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %4, align 8
  %42 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %40, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %235

47:                                               ; preds = %2
  %48 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %49 = call i32 @mlx4_stop_sense(%struct.mlx4_dev* %48)
  %50 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %51 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %4, align 8
  %55 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %4, align 8
  %57 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %60 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %4, align 8
  %64 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %58, i32* %66, align 4
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %130, %47
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %70 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %133

74:                                               ; preds = %67
  %75 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %76 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %74
  %86 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %87 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  br label %105

95:                                               ; preds = %74
  %96 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %97 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  br label %105

105:                                              ; preds = %95, %85
  %106 = phi i32 [ %94, %85 ], [ %104, %95 ]
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %22, i64 %108
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %22, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MLX4_PORT_TYPE_AUTO, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %105
  %117 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %118 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %22, i64 %127
  store i32 %125, i32* %128, align 4
  br label %129

129:                                              ; preds = %116, %105
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %67

133:                                              ; preds = %67
  %134 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %135 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @MLX4_DEV_CAP_FLAG_DPDP, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %191, label %141

141:                                              ; preds = %133
  %142 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %143 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @MLX4_DEV_CAP_FLAG_SENSE_SUPPORT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %191, label %149

149:                                              ; preds = %141
  store i32 1, i32* %11, align 4
  br label %150

150:                                              ; preds = %187, %149
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %153 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp sle i32 %151, %155
  br i1 %156, label %157, label %190

157:                                              ; preds = %150
  %158 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %159 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @MLX4_PORT_TYPE_AUTO, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %186

168:                                              ; preds = %157
  %169 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %170 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %178 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %176, i32* %183, align 4
  %184 = load i32, i32* @EOPNOTSUPP, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %12, align 4
  br label %186

186:                                              ; preds = %168, %157
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %11, align 4
  br label %150

190:                                              ; preds = %150
  br label %191

191:                                              ; preds = %190, %141, %133
  %192 = load i32, i32* %12, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %196 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %195, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0))
  br label %228

197:                                              ; preds = %191
  %198 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %199 = call i32 @mlx4_do_sense_ports(%struct.mlx4_dev* %198, i32* %25, i32* %22)
  %200 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %201 = call i32 @mlx4_check_port_params(%struct.mlx4_dev* %200, i32* %25)
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  br label %228

205:                                              ; preds = %197
  store i32 0, i32* %11, align 4
  br label %206

206:                                              ; preds = %222, %205
  %207 = load i32, i32* %11, align 4
  %208 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %209 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = icmp slt i32 %207, %211
  br i1 %212, label %213, label %225

213:                                              ; preds = %206
  %214 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %215 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %214, i32 0, i32 1
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = load i32, i32* %11, align 4
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  store i32 0, i32* %221, align 4
  br label %222

222:                                              ; preds = %213
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %11, align 4
  br label %206

225:                                              ; preds = %206
  %226 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %227 = call i32 @mlx4_change_port_types(%struct.mlx4_dev* %226, i32* %25)
  store i32 %227, i32* %12, align 4
  br label %228

228:                                              ; preds = %225, %204, %194
  %229 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %230 = call i32 @mlx4_start_sense(%struct.mlx4_dev* %229)
  %231 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %232 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %231, i32 0, i32 0
  %233 = call i32 @mutex_unlock(i32* %232)
  %234 = load i32, i32* %12, align 4
  store i32 %234, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %235

235:                                              ; preds = %228, %39
  %236 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %236)
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_stop_sense(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_do_sense_ports(%struct.mlx4_dev*, i32*, i32*) #1

declare dso_local i32 @mlx4_check_port_params(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @mlx4_change_port_types(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @mlx4_start_sense(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
