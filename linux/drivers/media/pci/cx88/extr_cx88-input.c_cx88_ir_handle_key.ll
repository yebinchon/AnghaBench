; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-input.c_cx88_ir_handle_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-input.c_cx88_ir_handle_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_IR = type { i32, i32, i32, i32, %struct.cx88_core*, i64, i32, i32 }
%struct.cx88_core = type { i32 }

@MO_GP1_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"irq gpio=0x%x code=%d | %s%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" down\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" up\00", align 1
@CX88_BOARD_NORWOOD_MICRO = common dso_local global i64 0, align 8
@MO_GP0_IO = common dso_local global i32 0, align 4
@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@CX88_BOARD_PROLINK_PLAYTVPVR = common dso_local global i64 0, align 8
@CX88_BOARD_PIXELVIEW_PLAYTV_ULTRA_PRO = common dso_local global i64 0, align 8
@RC_PROTO_NECX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx88_IR*)* @cx88_ir_handle_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx88_ir_handle_key(%struct.cx88_IR* %0) #0 {
  %2 = alloca %struct.cx88_IR*, align 8
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cx88_IR* %0, %struct.cx88_IR** %2, align 8
  %11 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %12 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %11, i32 0, i32 4
  %13 = load %struct.cx88_core*, %struct.cx88_core** %12, align 8
  store %struct.cx88_core* %13, %struct.cx88_core** %3, align 8
  %14 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %15 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cx_read(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %19 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %38 [
    i32 135, label %21
    i32 134, label %29
    i32 133, label %29
    i32 132, label %29
    i32 131, label %29
    i32 130, label %29
    i32 129, label %29
    i32 128, label %29
  ]

21:                                               ; preds = %1
  %22 = load i32, i32* @MO_GP1_IO, align 4
  %23 = call i32 @cx_read(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 2045
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 239
  %28 = add nsw i32 %25, %27
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 1791
  %32 = load i32, i32* @MO_GP1_IO, align 4
  %33 = call i32 @cx_read(i32 %32)
  %34 = shl i32 %33, 8
  %35 = and i32 %34, 2304
  %36 = or i32 %31, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %6, align 4
  br label %40

38:                                               ; preds = %1
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %29, %21
  %41 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %42 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %47 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %221

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %55 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %40
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %59 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ir_extract_bits(i32 %57, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %65 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %72 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %80 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %86 = call i32 @ir_dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i8* %69, i8* %77, i8* %85)
  %87 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %88 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %87, i32 0, i32 4
  %89 = load %struct.cx88_core*, %struct.cx88_core** %88, align 8
  %90 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @CX88_BOARD_NORWOOD_MICRO, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %56
  %96 = load i32, i32* @MO_GP0_IO, align 4
  %97 = call i32 @cx_read(i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %5, align 4
  %99 = shl i32 %98, 4
  %100 = load i32, i32* %7, align 4
  %101 = and i32 %100, 240
  %102 = ashr i32 %101, 4
  %103 = or i32 %99, %102
  store i32 %103, i32* %5, align 4
  %104 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %105 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @rc_keydown(i32 %106, i32 %107, i32 %108, i32 0)
  br label %221

110:                                              ; preds = %56
  %111 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %112 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %111, i32 0, i32 4
  %113 = load %struct.cx88_core*, %struct.cx88_core** %112, align 8
  %114 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* @CX88_BOARD_PROLINK_PLAYTVPVR, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %128, label %119

119:                                              ; preds = %110
  %120 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %121 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %120, i32 0, i32 4
  %122 = load %struct.cx88_core*, %struct.cx88_core** %121, align 8
  %123 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* @CX88_BOARD_PIXELVIEW_PLAYTV_ULTRA_PRO, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %157

128:                                              ; preds = %119, %110
  %129 = load i32, i32* %5, align 4
  %130 = ashr i32 %129, 8
  %131 = and i32 %130, 65535
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %5, align 4
  %133 = ashr i32 %132, 0
  %134 = and i32 %133, 255
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @RC_SCANCODE_NECX(i32 %135, i32 %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %4, align 4
  %139 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %140 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %138, %141
  %143 = icmp eq i32 0, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %128
  %145 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %146 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @RC_PROTO_NECX, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @rc_keydown_notimeout(i32 %147, i32 %148, i32 %149, i32 0)
  br label %156

151:                                              ; preds = %128
  %152 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %153 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @rc_keyup(i32 %154)
  br label %156

156:                                              ; preds = %151, %144
  br label %220

157:                                              ; preds = %119
  %158 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %159 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %182

162:                                              ; preds = %157
  %163 = load i32, i32* %4, align 4
  %164 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %165 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %163, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %162
  %170 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %171 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @rc_keydown_notimeout(i32 %172, i32 %173, i32 %174, i32 0)
  br label %181

176:                                              ; preds = %162
  %177 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %178 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @rc_keyup(i32 %179)
  br label %181

181:                                              ; preds = %176, %169
  br label %219

182:                                              ; preds = %157
  %183 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %184 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %207

187:                                              ; preds = %182
  %188 = load i32, i32* %4, align 4
  %189 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %190 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = and i32 %188, %191
  %193 = icmp eq i32 0, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %187
  %195 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %196 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @rc_keydown_notimeout(i32 %197, i32 %198, i32 %199, i32 0)
  br label %206

201:                                              ; preds = %187
  %202 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %203 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @rc_keyup(i32 %204)
  br label %206

206:                                              ; preds = %201, %194
  br label %218

207:                                              ; preds = %182
  %208 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %209 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %212 = load i32, i32* %5, align 4
  %213 = call i32 @rc_keydown_notimeout(i32 %210, i32 %211, i32 %212, i32 0)
  %214 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %215 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @rc_keyup(i32 %216)
  br label %218

218:                                              ; preds = %207, %206
  br label %219

219:                                              ; preds = %218, %181
  br label %220

220:                                              ; preds = %219, %156
  br label %221

221:                                              ; preds = %51, %220, %95
  ret void
}

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @ir_extract_bits(i32, i32) #1

declare dso_local i32 @ir_dprintk(i8*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @rc_keydown(i32, i32, i32, i32) #1

declare dso_local i32 @RC_SCANCODE_NECX(i32, i32) #1

declare dso_local i32 @rc_keydown_notimeout(i32, i32, i32, i32) #1

declare dso_local i32 @rc_keyup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
