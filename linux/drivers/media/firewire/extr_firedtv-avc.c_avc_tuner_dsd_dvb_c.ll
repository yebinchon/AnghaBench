; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_tuner_dsd_dvb_c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_tuner_dsd_dvb_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i64 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32 }
%struct.avc_command_frame = type { i32*, i32 }

@AVC_OPCODE_DSD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firedtv*, %struct.dtv_frontend_properties*)* @avc_tuner_dsd_dvb_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avc_tuner_dsd_dvb_c(%struct.firedtv* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.firedtv*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.avc_command_frame*, align 8
  store %struct.firedtv* %0, %struct.firedtv** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %6 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %7 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %10, %struct.avc_command_frame** %5, align 8
  %11 = load i32, i32* @AVC_OPCODE_DSD, align 4
  %12 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %13 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %15 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %19 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 210, i32* %21, align 4
  %22 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %23 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 32, i32* %25, align 4
  %26 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %27 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  store i32 0, i32* %29, align 4
  %30 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %31 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  store i32 17, i32* %33, align 4
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 134
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 2, i32 0
  %40 = or i32 24, %39
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 128
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = or i32 %40, %46
  %48 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %49 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  store i32 %47, i32* %51, align 4
  %52 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %53 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  store i32 0, i32* %55, align 4
  %56 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %57 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 7
  store i32 0, i32* %59, align 4
  %60 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %61 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 8
  store i32 0, i32* %63, align 4
  %64 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %65 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 9
  store i32 0, i32* %67, align 4
  %68 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %69 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 10
  store i32 0, i32* %71, align 4
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 4000
  %76 = ashr i32 %75, 16
  %77 = and i32 %76, 255
  %78 = or i32 %77, 128
  %79 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %80 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 11
  store i32 %78, i32* %82, align 4
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %85, 4000
  %87 = ashr i32 %86, 8
  %88 = and i32 %87, 255
  %89 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %90 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 12
  store i32 %88, i32* %92, align 4
  %93 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %94 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = sdiv i32 %95, 4000
  %97 = and i32 %96, 255
  %98 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %99 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 13
  store i32 %97, i32* %101, align 4
  %102 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %103 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %104, 1000
  %106 = ashr i32 %105, 12
  %107 = and i32 %106, 255
  %108 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %109 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 14
  store i32 %107, i32* %111, align 4
  %112 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %113 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = sdiv i32 %114, 1000
  %116 = ashr i32 %115, 4
  %117 = and i32 %116, 255
  %118 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %119 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 15
  store i32 %117, i32* %121, align 4
  %122 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %123 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %124, 1000
  %126 = shl i32 %125, 4
  %127 = and i32 %126, 240
  %128 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %129 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 16
  store i32 %127, i32* %131, align 4
  %132 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %133 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 17
  store i32 0, i32* %135, align 4
  %136 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %137 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  switch i32 %138, label %175 [
    i32 141, label %139
    i32 140, label %144
    i32 139, label %149
    i32 137, label %154
    i32 136, label %159
    i32 135, label %164
    i32 138, label %169
    i32 134, label %174
  ]

139:                                              ; preds = %2
  %140 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %141 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 18
  store i32 1, i32* %143, align 4
  br label %180

144:                                              ; preds = %2
  %145 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %146 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 18
  store i32 2, i32* %148, align 4
  br label %180

149:                                              ; preds = %2
  %150 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %151 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 18
  store i32 3, i32* %153, align 4
  br label %180

154:                                              ; preds = %2
  %155 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %156 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 18
  store i32 4, i32* %158, align 4
  br label %180

159:                                              ; preds = %2
  %160 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %161 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 18
  store i32 5, i32* %163, align 4
  br label %180

164:                                              ; preds = %2
  %165 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %166 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 18
  store i32 6, i32* %168, align 4
  br label %180

169:                                              ; preds = %2
  %170 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %171 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 18
  store i32 8, i32* %173, align 4
  br label %180

174:                                              ; preds = %2
  br label %175

175:                                              ; preds = %2, %174
  %176 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %177 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 18
  store i32 0, i32* %179, align 4
  br label %180

180:                                              ; preds = %175, %169, %164, %159, %154, %149, %144, %139
  %181 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %182 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  switch i32 %183, label %210 [
    i32 132, label %184
    i32 130, label %189
    i32 129, label %194
    i32 133, label %199
    i32 131, label %204
    i32 128, label %209
  ]

184:                                              ; preds = %180
  %185 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %186 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 19
  store i32 8, i32* %188, align 4
  br label %215

189:                                              ; preds = %180
  %190 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %191 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 19
  store i32 16, i32* %193, align 4
  br label %215

194:                                              ; preds = %180
  %195 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %196 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 19
  store i32 24, i32* %198, align 4
  br label %215

199:                                              ; preds = %180
  %200 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %201 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 19
  store i32 32, i32* %203, align 4
  br label %215

204:                                              ; preds = %180
  %205 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %206 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 19
  store i32 40, i32* %208, align 4
  br label %215

209:                                              ; preds = %180
  br label %210

210:                                              ; preds = %180, %209
  %211 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %212 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 19
  store i32 0, i32* %214, align 4
  br label %215

215:                                              ; preds = %210, %204, %199, %194, %189, %184
  %216 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %217 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 20
  store i32 0, i32* %219, align 4
  %220 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %221 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 21
  store i32 0, i32* %223, align 4
  %224 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %225 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %226 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 22
  %229 = call i32 @add_pid_filter(%struct.firedtv* %224, i32* %228)
  %230 = add nsw i32 22, %229
  ret i32 %230
}

declare dso_local i32 @add_pid_filter(%struct.firedtv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
