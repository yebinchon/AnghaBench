; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_buffer_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_buffer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cio2_device = type { %struct.TYPE_11__*, %struct.cio2_queue* }
%struct.TYPE_11__ = type { %struct.device }
%struct.device = type { i32 }
%struct.cio2_queue = type { i64, i32, i32, %struct.cio2_buffer**, %struct.cio2_fbpt_entry* }
%struct.cio2_buffer = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.cio2_fbpt_entry = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@CIO2_QUEUES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"bad DMA channel %i\0A\00", align 1
@CIO2_MAX_LOPS = common dso_local global i64 0, align 8
@CIO2_FBPT_CTRL_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"buffer %i done\0A\00", align 1
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"buffer length is %d received %d\0A\00", align 1
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@CIO2_MAX_BUFFERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"no ready buffers found on DMA channel %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cio2_device*, i32)* @cio2_buffer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cio2_buffer_done(%struct.cio2_device* %0, i32 %1) #0 {
  %3 = alloca %struct.cio2_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.cio2_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cio2_fbpt_entry*, align 8
  %10 = alloca %struct.cio2_buffer*, align 8
  %11 = alloca i32, align 4
  store %struct.cio2_device* %0, %struct.cio2_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %13 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %17 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %16, i32 0, i32 1
  %18 = load %struct.cio2_queue*, %struct.cio2_queue** %17, align 8
  store %struct.cio2_queue* %18, %struct.cio2_queue** %6, align 8
  store i32 0, i32* %7, align 4
  %19 = call i32 (...) @ktime_get_ns()
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @CIO2_QUEUES, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %155

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %144, %27
  %29 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %30 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %29, i32 0, i32 4
  %31 = load %struct.cio2_fbpt_entry*, %struct.cio2_fbpt_entry** %30, align 8
  %32 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %33 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CIO2_MAX_LOPS, align 8
  %36 = mul i64 %34, %35
  %37 = getelementptr inbounds %struct.cio2_fbpt_entry, %struct.cio2_fbpt_entry* %31, i64 %36
  store %struct.cio2_fbpt_entry* %37, %struct.cio2_fbpt_entry** %9, align 8
  %38 = load %struct.cio2_fbpt_entry*, %struct.cio2_fbpt_entry** %9, align 8
  %39 = getelementptr inbounds %struct.cio2_fbpt_entry, %struct.cio2_fbpt_entry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CIO2_FBPT_CTRL_VALID, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  br label %145

46:                                               ; preds = %28
  %47 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %48 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %47, i32 0, i32 3
  %49 = load %struct.cio2_buffer**, %struct.cio2_buffer*** %48, align 8
  %50 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %51 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.cio2_buffer*, %struct.cio2_buffer** %49, i64 %52
  %54 = load %struct.cio2_buffer*, %struct.cio2_buffer** %53, align 8
  store %struct.cio2_buffer* %54, %struct.cio2_buffer** %10, align 8
  %55 = load %struct.cio2_buffer*, %struct.cio2_buffer** %10, align 8
  %56 = icmp ne %struct.cio2_buffer* %55, null
  br i1 %56, label %57, label %126

57:                                               ; preds = %46
  %58 = load %struct.cio2_fbpt_entry*, %struct.cio2_fbpt_entry** %9, align 8
  %59 = getelementptr inbounds %struct.cio2_fbpt_entry, %struct.cio2_fbpt_entry* %58, i64 1
  %60 = getelementptr inbounds %struct.cio2_fbpt_entry, %struct.cio2_fbpt_entry* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  %63 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %64 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %63, i32 0, i32 3
  %65 = load %struct.cio2_buffer**, %struct.cio2_buffer*** %64, align 8
  %66 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %67 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.cio2_buffer*, %struct.cio2_buffer** %65, i64 %68
  store %struct.cio2_buffer* null, %struct.cio2_buffer** %69, align 8
  %70 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %71 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %70, i32 0, i32 2
  %72 = call i32 @atomic_dec(i32* %71)
  %73 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %74 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.cio2_buffer*, %struct.cio2_buffer** %10, align 8
  %78 = getelementptr inbounds %struct.cio2_buffer, %struct.cio2_buffer* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_dbg(%struct.device* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.cio2_buffer*, %struct.cio2_buffer** %10, align 8
  %85 = getelementptr inbounds %struct.cio2_buffer, %struct.cio2_buffer* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 8
  %88 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %89 = load %struct.cio2_buffer*, %struct.cio2_buffer** %10, align 8
  %90 = getelementptr inbounds %struct.cio2_buffer, %struct.cio2_buffer* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 4
  %92 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %93 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %92, i32 0, i32 1
  %94 = call i32 @atomic_read(i32* %93)
  %95 = load %struct.cio2_buffer*, %struct.cio2_buffer** %10, align 8
  %96 = getelementptr inbounds %struct.cio2_buffer, %struct.cio2_buffer* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 8
  %98 = load %struct.cio2_buffer*, %struct.cio2_buffer** %10, align 8
  %99 = getelementptr inbounds %struct.cio2_buffer, %struct.cio2_buffer* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %57
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = load %struct.cio2_buffer*, %struct.cio2_buffer** %10, align 8
  %111 = getelementptr inbounds %struct.cio2_buffer, %struct.cio2_buffer* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %108, %57
  %121 = load %struct.cio2_buffer*, %struct.cio2_buffer** %10, align 8
  %122 = getelementptr inbounds %struct.cio2_buffer, %struct.cio2_buffer* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %125 = call i32 @vb2_buffer_done(%struct.TYPE_12__* %123, i32 %124)
  br label %126

126:                                              ; preds = %120, %46
  %127 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %128 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %127, i32 0, i32 1
  %129 = call i32 @atomic_inc(i32* %128)
  %130 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %131 = load %struct.cio2_fbpt_entry*, %struct.cio2_fbpt_entry** %9, align 8
  %132 = call i32 @cio2_fbpt_entry_init_dummy(%struct.cio2_device* %130, %struct.cio2_fbpt_entry* %131)
  %133 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %134 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, 1
  %137 = load i32, i32* @CIO2_MAX_BUFFERS, align 4
  %138 = sext i32 %137 to i64
  %139 = urem i64 %136, %138
  %140 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %141 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %126
  br i1 true, label %28, label %145

145:                                              ; preds = %144, %45
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %150 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %149, i32 0, i32 0
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i32, i32* %4, align 4
  %154 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %152, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %23, %148, %145
  ret void
}

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @cio2_fbpt_entry_init_dummy(%struct.cio2_device*, %struct.cio2_fbpt_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
