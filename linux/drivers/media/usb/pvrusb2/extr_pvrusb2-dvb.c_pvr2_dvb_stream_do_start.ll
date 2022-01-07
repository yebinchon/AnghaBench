; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_stream_do_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_stream_do_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_dvb_adapter = type { i32, i32*, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, %struct.pvr2_context* }
%struct.TYPE_4__ = type { %struct.pvr2_stream* }
%struct.pvr2_stream = type { i32 }
%struct.pvr2_context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.pvr2_buffer = type { i32 }

@EIO = common dso_local global i32 0, align 4
@PVR2_DVB_BUFFER_COUNT = common dso_local global i32 0, align 4
@PVR2_DVB_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pvr2_dvb_notify = common dso_local global i64 0, align 8
@pvr2_dvb_feed_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"pvrusb2-dvb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_dvb_adapter*)* @pvr2_dvb_stream_do_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_dvb_stream_do_start(%struct.pvr2_dvb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_dvb_adapter*, align 8
  %4 = alloca %struct.pvr2_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pvr2_buffer*, align 8
  %8 = alloca %struct.pvr2_stream*, align 8
  store %struct.pvr2_dvb_adapter* %0, %struct.pvr2_dvb_adapter** %3, align 8
  %9 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load %struct.pvr2_context*, %struct.pvr2_context** %11, align 8
  store %struct.pvr2_context* %12, %struct.pvr2_context** %4, align 8
  store %struct.pvr2_stream* null, %struct.pvr2_stream** %8, align 8
  %13 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %149

20:                                               ; preds = %1
  %21 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %21, i32 0, i32 2
  %23 = load %struct.pvr2_context*, %struct.pvr2_context** %4, align 8
  %24 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %23, i32 0, i32 0
  %25 = call i32 @pvr2_channel_claim_stream(%struct.TYPE_5__* %22, %struct.TYPE_6__* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %149

30:                                               ; preds = %20
  %31 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.pvr2_stream*, %struct.pvr2_stream** %35, align 8
  store %struct.pvr2_stream* %36, %struct.pvr2_stream** %8, align 8
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %63, %30
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PVR2_DVB_BUFFER_COUNT, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load i32, i32* @PVR2_DVB_BUFFER_SIZE, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @kmalloc(i32 %42, i32 %43)
  %45 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  %51 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %41
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %149

62:                                               ; preds = %41
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %37

66:                                               ; preds = %37
  %67 = load %struct.pvr2_context*, %struct.pvr2_context** %4, align 8
  %68 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* @pvr2_dvb_notify, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %74 = call i32 @pvr2_stream_set_callback(i32 %70, i32 %72, %struct.pvr2_dvb_adapter* %73)
  %75 = load %struct.pvr2_stream*, %struct.pvr2_stream** %8, align 8
  %76 = load i32, i32* @PVR2_DVB_BUFFER_COUNT, align 4
  %77 = call i32 @pvr2_stream_set_buffer_count(%struct.pvr2_stream* %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %149

82:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %101, %82
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @PVR2_DVB_BUFFER_COUNT, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %83
  %88 = load %struct.pvr2_stream*, %struct.pvr2_stream** %8, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call %struct.pvr2_buffer* @pvr2_stream_get_buffer(%struct.pvr2_stream* %88, i32 %89)
  store %struct.pvr2_buffer* %90, %struct.pvr2_buffer** %7, align 8
  %91 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %7, align 8
  %92 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @PVR2_DVB_BUFFER_SIZE, align 4
  %100 = call i32 @pvr2_buffer_set_buffer(%struct.pvr2_buffer* %91, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %87
  %102 = load i32, i32* %5, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %83

104:                                              ; preds = %83
  %105 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @pvr2_hdw_set_streaming(i32 %108, i32 1)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %149

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %126, %114
  %116 = load %struct.pvr2_stream*, %struct.pvr2_stream** %8, align 8
  %117 = call %struct.pvr2_buffer* @pvr2_stream_get_idle_buffer(%struct.pvr2_stream* %116)
  store %struct.pvr2_buffer* %117, %struct.pvr2_buffer** %7, align 8
  %118 = icmp ne %struct.pvr2_buffer* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %7, align 8
  %121 = call i32 @pvr2_buffer_queue(%struct.pvr2_buffer* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %149

126:                                              ; preds = %119
  br label %115

127:                                              ; preds = %115
  %128 = load i32, i32* @pvr2_dvb_feed_thread, align 4
  %129 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %130 = call i32* @kthread_run(i32 %128, %struct.pvr2_dvb_adapter* %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %131 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %132 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %131, i32 0, i32 1
  store i32* %130, i32** %132, align 8
  %133 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %134 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = call i64 @IS_ERR(i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %127
  %139 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %140 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @PTR_ERR(i32* %141)
  store i32 %142, i32* %6, align 4
  %143 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %144 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %143, i32 0, i32 1
  store i32* null, i32** %144, align 8
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %2, align 4
  br label %149

146:                                              ; preds = %127
  %147 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %148 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %147, i32 0, i32 0
  store i32 1, i32* %148, align 8
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %146, %138, %124, %112, %80, %59, %28, %17
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @pvr2_channel_claim_stream(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @pvr2_stream_set_callback(i32, i32, %struct.pvr2_dvb_adapter*) #1

declare dso_local i32 @pvr2_stream_set_buffer_count(%struct.pvr2_stream*, i32) #1

declare dso_local %struct.pvr2_buffer* @pvr2_stream_get_buffer(%struct.pvr2_stream*, i32) #1

declare dso_local i32 @pvr2_buffer_set_buffer(%struct.pvr2_buffer*, i32, i32) #1

declare dso_local i32 @pvr2_hdw_set_streaming(i32, i32) #1

declare dso_local %struct.pvr2_buffer* @pvr2_stream_get_idle_buffer(%struct.pvr2_stream*) #1

declare dso_local i32 @pvr2_buffer_queue(%struct.pvr2_buffer*) #1

declare dso_local i32* @kthread_run(i32, %struct.pvr2_dvb_adapter*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
