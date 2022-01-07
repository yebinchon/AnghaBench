; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_get_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_get_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i32*, i32, i32, i32, i32 }
%struct.dst_types = type { i64, i8*, i32, i32, i32, i32 }
%struct.tuner_types = type { i8*, i32, i32 }

@dst_get_device_id.device_type = internal global [8 x i32] [i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255], align 16
@FIXED_COMM = common dso_local global i32 0, align 4
@GET_ACK = common dso_local global i32 0, align 4
@ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Write not Acknowledged! [Reply=0x%02x]\0A\00", align 1
@DEVICE_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Checksum failure!\0A\00", align 1
@dst_tlist = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Recognise [%s]\0A\00", align 1
@TUNER_TYPE_MULTI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Unsupported\0A\00", align 1
@TUNER_TYPE_MB86A15 = common dso_local global i32 0, align 4
@tuner_list = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"[%s] has a [%s]\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Unable to recognize %s or %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"please email linux-dvb@linuxtv.org with this type in\00", align 1
@DST_TYPE_HAS_SYMDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_get_device_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_get_device_id(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dst_types*, align 8
  %8 = alloca %struct.tuner_types*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  store %struct.dst_types* null, %struct.dst_types** %7, align 8
  store %struct.tuner_types* null, %struct.tuner_types** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %12 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = call i32 @dst_check_sum(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dst_get_device_id.device_type, i64 0, i64 0), i32 7)
  store i32 %13, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dst_get_device_id.device_type, i64 0, i64 7), align 4
  %14 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %15 = load i32, i32* @FIXED_COMM, align 4
  %16 = call i64 @write_dst(%struct.dst_state* %14, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dst_get_device_id.device_type, i64 0, i64 0), i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %227

19:                                               ; preds = %1
  %20 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %21 = call i64 @dst_pio_disable(%struct.dst_state* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %227

24:                                               ; preds = %19
  %25 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %26 = load i32, i32* @GET_ACK, align 4
  %27 = call i64 @read_dst(%struct.dst_state* %25, i32* %4, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %227

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @ACK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %2, align 4
  br label %227

37:                                               ; preds = %30
  %38 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %39 = load i32, i32* @DEVICE_INIT, align 4
  %40 = call i32 @dst_wait_dst_ready(%struct.dst_state* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  br label %227

43:                                               ; preds = %37
  %44 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %45 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %46 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @FIXED_COMM, align 4
  %49 = call i64 @read_dst(%struct.dst_state* %44, i32* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 -1, i32* %2, align 4
  br label %227

52:                                               ; preds = %43
  %53 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %54 = call i64 @dst_pio_disable(%struct.dst_state* %53)
  %55 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %56 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 7
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %61 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @dst_check_sum(i32* %62, i32 7)
  %64 = icmp ne i32 %59, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %227

67:                                               ; preds = %52
  %68 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %69 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 7
  store i32 0, i32* %71, align 4
  store i32 0, i32* %5, align 4
  %72 = load i8*, i8** @dst_tlist, align 8
  %73 = bitcast i8* %72 to %struct.dst_types*
  store %struct.dst_types* %73, %struct.dst_types** %7, align 8
  br label %74

74:                                               ; preds = %193, %67
  %75 = load i32, i32* %5, align 4
  %76 = load i8*, i8** @dst_tlist, align 8
  %77 = call i32 @ARRAY_SIZE(i8* %76)
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %198

79:                                               ; preds = %74
  %80 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %81 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %84 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = bitcast i32* %86 to i8*
  %88 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %89 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %92 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strlen(i8* %93)
  %95 = call i32 @strncmp(i8* %87, i8* %90, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %192, label %97

97:                                               ; preds = %79
  %98 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %99 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %10, align 4
  %101 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %102 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %9, align 4
  %104 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %105 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %108 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %110 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %111)
  %113 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %114 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %117 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @strscpy(i32 %115, i8* %118, i32 4)
  %120 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %121 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @TUNER_TYPE_MULTI, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %97
  %127 = load i32, i32* %9, align 4
  switch i32 %127, label %138 [
    i32 128, label %128
  ]

128:                                              ; preds = %126
  %129 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %130 = call i32 @dst_check_stv0299(%struct.dst_state* %129)
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i32, i32* @TUNER_TYPE_MB86A15, align 4
  %135 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %136 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %132, %128
  br label %139

138:                                              ; preds = %126
  br label %139

139:                                              ; preds = %138, %137
  %140 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %141 = call i64 @dst_check_mb86a15(%struct.dst_state* %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %139
  br label %152

146:                                              ; preds = %97
  %147 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %148 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %151 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %146, %145
  store i32 0, i32* %6, align 4
  %153 = load i8*, i8** @tuner_list, align 8
  %154 = bitcast i8* %153 to %struct.tuner_types*
  store %struct.tuner_types* %154, %struct.tuner_types** %8, align 8
  br label %155

155:                                              ; preds = %186, %152
  %156 = load i32, i32* %6, align 4
  %157 = load i8*, i8** @tuner_list, align 8
  %158 = call i32 @ARRAY_SIZE(i8* %157)
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %160, label %191

160:                                              ; preds = %155
  %161 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %162 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.tuner_types*, %struct.tuner_types** %8, align 8
  %165 = getelementptr inbounds %struct.tuner_types, %struct.tuner_types* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @strncmp(i8* %163, i8* %166, i32 7)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %185, label %169

169:                                              ; preds = %160
  %170 = load %struct.tuner_types*, %struct.tuner_types** %8, align 8
  %171 = getelementptr inbounds %struct.tuner_types, %struct.tuner_types* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %174 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %172, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %169
  %178 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %179 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.tuner_types*, %struct.tuner_types** %8, align 8
  %182 = getelementptr inbounds %struct.tuner_types, %struct.tuner_types* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %180, i32 %183)
  br label %185

185:                                              ; preds = %177, %169, %160
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %6, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %6, align 4
  %189 = load %struct.tuner_types*, %struct.tuner_types** %8, align 8
  %190 = getelementptr inbounds %struct.tuner_types, %struct.tuner_types* %189, i32 1
  store %struct.tuner_types* %190, %struct.tuner_types** %8, align 8
  br label %155

191:                                              ; preds = %155
  br label %198

192:                                              ; preds = %79
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %5, align 4
  %196 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %197 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %196, i32 1
  store %struct.dst_types* %197, %struct.dst_types** %7, align 8
  br label %74

198:                                              ; preds = %191, %74
  %199 = load i32, i32* %5, align 4
  %200 = load i8*, i8** @dst_tlist, align 8
  %201 = call i32 @ARRAY_SIZE(i8* %200)
  %202 = icmp sge i32 %199, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %198
  %204 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %205 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %209 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32* %207, i32* %211)
  %213 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  store i32 128, i32* %9, align 4
  %214 = load i32, i32* @DST_TYPE_HAS_SYMDIV, align 4
  store i32 %214, i32* %10, align 4
  br label %215

215:                                              ; preds = %203, %198
  %216 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @dst_type_print(%struct.dst_state* %216, i32 %217)
  %219 = load i32, i32* %10, align 4
  %220 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %221 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %224 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %226 = call i32 @dst_type_flags_print(%struct.dst_state* %225)
  store i32 0, i32* %2, align 4
  br label %227

227:                                              ; preds = %215, %65, %51, %42, %34, %29, %23, %18
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local i32 @dst_check_sum(i32*, i32) #1

declare dso_local i64 @write_dst(%struct.dst_state*, i32*, i32) #1

declare dso_local i64 @dst_pio_disable(%struct.dst_state*) #1

declare dso_local i64 @read_dst(%struct.dst_state*, i32*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @dst_wait_dst_ready(%struct.dst_state*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @dst_check_stv0299(%struct.dst_state*) #1

declare dso_local i64 @dst_check_mb86a15(%struct.dst_state*) #1

declare dso_local i32 @dst_type_print(%struct.dst_state*, i32) #1

declare dso_local i32 @dst_type_flags_print(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
