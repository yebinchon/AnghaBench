; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_channel_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_channel_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpif_device = type { %struct.channel_obj** }
%struct.channel_obj = type { i32, i32, %struct.TYPE_7__, %struct.common_obj* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.common_obj = type { i64, i64, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@vpif_obj = common dso_local global %struct.vpif_device zeroinitializer, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@VPIF_NUMBER_OF_OBJECTS = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@channel_first_int = common dso_local global i64** null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vpif_channel_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_channel_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vpif_device*, align 8
  %7 = alloca %struct.common_obj*, align 8
  %8 = alloca %struct.channel_obj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.vpif_device* @vpif_obj, %struct.vpif_device** %6, align 8
  store i32 -1, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @vpif_intr_status(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %201

20:                                               ; preds = %2
  %21 = load %struct.vpif_device*, %struct.vpif_device** %6, align 8
  %22 = getelementptr inbounds %struct.vpif_device, %struct.vpif_device* %21, i32 0, i32 0
  %23 = load %struct.channel_obj**, %struct.channel_obj*** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.channel_obj*, %struct.channel_obj** %23, i64 %25
  %27 = load %struct.channel_obj*, %struct.channel_obj** %26, align 8
  store %struct.channel_obj* %27, %struct.channel_obj** %8, align 8
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %196, %20
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @VPIF_NUMBER_OF_OBJECTS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %199

32:                                               ; preds = %28
  %33 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %34 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %33, i32 0, i32 3
  %35 = load %struct.common_obj*, %struct.common_obj** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %35, i64 %37
  store %struct.common_obj* %38, %struct.common_obj** %7, align 8
  %39 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %40 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 1, %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %32
  %46 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %47 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %102

54:                                               ; preds = %45, %32
  %55 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %56 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %55, i32 0, i32 2
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %59 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %58, i32 0, i32 3
  %60 = call i64 @list_empty(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %64 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %63, i32 0, i32 2
  %65 = call i32 @spin_unlock(i32* %64)
  br label %196

66:                                               ; preds = %54
  %67 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %68 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %67, i32 0, i32 2
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load i64**, i64*** @channel_first_int, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64*, i64** %70, i64 %72
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %66
  %81 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %82 = call i32 @vpif_process_buffer_complete(%struct.common_obj* %81)
  br label %83

83:                                               ; preds = %80, %66
  %84 = load i64**, i64*** @channel_first_int, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64*, i64** %84, i64 %86
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 0, i64* %91, align 8
  %92 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %93 = call i32 @vpif_schedule_next_buffer(%struct.common_obj* %92)
  %94 = load i64**, i64*** @channel_first_int, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64*, i64** %94, i64 %96
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  store i64 0, i64* %101, align 8
  br label %195

102:                                              ; preds = %45
  %103 = load i64**, i64*** @channel_first_int, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64*, i64** %103, i64 %105
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %102
  %114 = load i64**, i64*** @channel_first_int, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64*, i64** %114, i64 %116
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 0, i64* %121, align 8
  br label %196

122:                                              ; preds = %102
  %123 = load i32, i32* %11, align 4
  %124 = icmp eq i32 0, %123
  br i1 %124, label %125, label %149

125:                                              ; preds = %122
  %126 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %127 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = xor i32 %128, 1
  store i32 %129, i32* %127, align 8
  %130 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %131 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @vpif_channel_getfid(i32 %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %136 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %134, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %125
  %140 = load i32, i32* %10, align 4
  %141 = icmp eq i32 0, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %145 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %142, %139
  %147 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %147, i32* %3, align 4
  br label %201

148:                                              ; preds = %125
  br label %149

149:                                              ; preds = %148, %122
  %150 = load i32, i32* %10, align 4
  %151 = icmp eq i32 0, %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %149
  %153 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %154 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %157 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %155, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %196

161:                                              ; preds = %152
  %162 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %163 = call i32 @vpif_process_buffer_complete(%struct.common_obj* %162)
  br label %194

164:                                              ; preds = %149
  %165 = load i32, i32* %10, align 4
  %166 = icmp eq i32 1, %165
  br i1 %166, label %167, label %193

167:                                              ; preds = %164
  %168 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %169 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %168, i32 0, i32 2
  %170 = call i32 @spin_lock(i32* %169)
  %171 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %172 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %171, i32 0, i32 3
  %173 = call i64 @list_empty(i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %167
  %176 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %177 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %180 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %178, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %175, %167
  %184 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %185 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %184, i32 0, i32 2
  %186 = call i32 @spin_unlock(i32* %185)
  br label %196

187:                                              ; preds = %175
  %188 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %189 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %188, i32 0, i32 2
  %190 = call i32 @spin_unlock(i32* %189)
  %191 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %192 = call i32 @vpif_schedule_next_buffer(%struct.common_obj* %191)
  br label %193

193:                                              ; preds = %187, %164
  br label %194

194:                                              ; preds = %193, %161
  br label %195

195:                                              ; preds = %194, %83
  br label %196

196:                                              ; preds = %195, %183, %160, %113, %62
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %11, align 4
  br label %28

199:                                              ; preds = %28
  %200 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %199, %146, %18
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @vpif_intr_status(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vpif_process_buffer_complete(%struct.common_obj*) #1

declare dso_local i32 @vpif_schedule_next_buffer(%struct.common_obj*) #1

declare dso_local i32 @vpif_channel_getfid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
