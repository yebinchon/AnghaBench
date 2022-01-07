; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_channel_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_channel_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpif_device = type { %struct.channel_obj** }
%struct.channel_obj = type { i32, i64, %struct.TYPE_7__, %struct.common_obj* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.common_obj = type { %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@vpif_obj = common dso_local global %struct.vpif_device zeroinitializer, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@VPIF_NUMOBJECTS = common dso_local global i32 0, align 4
@channel_first_int = common dso_local global i64** null, align 8
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vpif_channel_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_channel_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vpif_device*, align 8
  %7 = alloca %struct.channel_obj*, align 8
  %8 = alloca %struct.common_obj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.vpif_device* @vpif_obj, %struct.vpif_device** %6, align 8
  store i32 -1, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = add nsw i32 %15, 2
  %17 = call i32 @vpif_intr_status(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %161

21:                                               ; preds = %2
  %22 = load %struct.vpif_device*, %struct.vpif_device** %6, align 8
  %23 = getelementptr inbounds %struct.vpif_device, %struct.vpif_device* %22, i32 0, i32 0
  %24 = load %struct.channel_obj**, %struct.channel_obj*** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.channel_obj*, %struct.channel_obj** %24, i64 %26
  %28 = load %struct.channel_obj*, %struct.channel_obj** %27, align 8
  store %struct.channel_obj* %28, %struct.channel_obj** %7, align 8
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %156, %21
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @VPIF_NUMOBJECTS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %159

33:                                               ; preds = %29
  %34 = load %struct.channel_obj*, %struct.channel_obj** %7, align 8
  %35 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %34, i32 0, i32 3
  %36 = load %struct.common_obj*, %struct.common_obj** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %36, i64 %38
  store %struct.common_obj* %39, %struct.common_obj** %8, align 8
  %40 = load %struct.channel_obj*, %struct.channel_obj** %7, align 8
  %41 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 1, %44
  br i1 %45, label %46, label %103

46:                                               ; preds = %33
  %47 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %48 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %47, i32 0, i32 2
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %51 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %50, i32 0, i32 3
  %52 = call i64 @list_empty(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %56 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %55, i32 0, i32 2
  %57 = call i32 @spin_unlock(i32* %56)
  br label %156

58:                                               ; preds = %46
  %59 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %60 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %59, i32 0, i32 2
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load i64**, i64*** @channel_first_int, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64*, i64** %62, i64 %64
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %58
  %73 = call i32 (...) @ktime_get_ns()
  %74 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %75 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i32 %73, i32* %79, align 4
  %80 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %81 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %86 = call i32 @vb2_buffer_done(%struct.TYPE_10__* %84, i32 %85)
  %87 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %88 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %91 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %90, i32 0, i32 1
  store %struct.TYPE_9__* %89, %struct.TYPE_9__** %91, align 8
  br label %92

92:                                               ; preds = %72, %58
  %93 = load i64**, i64*** @channel_first_int, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64*, i64** %93, i64 %95
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 0, i64* %100, align 8
  %101 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %102 = call i32 @process_progressive_mode(%struct.common_obj* %101)
  br label %155

103:                                              ; preds = %33
  %104 = load i64**, i64*** @channel_first_int, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64*, i64** %104, i64 %106
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %103
  %115 = load i64**, i64*** @channel_first_int, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64*, i64** %115, i64 %117
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  store i64 0, i64* %122, align 8
  br label %156

123:                                              ; preds = %103
  %124 = load i32, i32* %10, align 4
  %125 = icmp eq i32 0, %124
  br i1 %125, label %126, label %151

126:                                              ; preds = %123
  %127 = load %struct.channel_obj*, %struct.channel_obj** %7, align 8
  %128 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = xor i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load %struct.channel_obj*, %struct.channel_obj** %7, align 8
  %132 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, 2
  %135 = call i32 @vpif_channel_getfid(i64 %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.channel_obj*, %struct.channel_obj** %7, align 8
  %138 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %136, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %126
  %142 = load i32, i32* %9, align 4
  %143 = icmp eq i32 0, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.channel_obj*, %struct.channel_obj** %7, align 8
  %147 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %144, %141
  %149 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %149, i32* %3, align 4
  br label %161

150:                                              ; preds = %126
  br label %151

151:                                              ; preds = %150, %123
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %154 = call i32 @process_interlaced_mode(i32 %152, %struct.common_obj* %153)
  br label %155

155:                                              ; preds = %151, %92
  br label %156

156:                                              ; preds = %155, %114, %54
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %29

159:                                              ; preds = %29
  %160 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %159, %148, %19
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @vpif_intr_status(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @process_progressive_mode(%struct.common_obj*) #1

declare dso_local i32 @vpif_channel_getfid(i64) #1

declare dso_local i32 @process_interlaced_mode(i32, %struct.common_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
