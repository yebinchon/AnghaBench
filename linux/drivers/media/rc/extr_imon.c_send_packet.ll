; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imon_context = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_9__*, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.usb_ctrlrequest = type { i32, i32, i8*, i8*, i8* }

@usb_tx_callback = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"error submitting urb(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"task interrupted\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"packet tx failed (%d)\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imon_context*)* @send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_packet(%struct.imon_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imon_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.imon_context* %0, %struct.imon_context** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.usb_ctrlrequest* null, %struct.usb_ctrlrequest** %8, align 8
  %9 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %10 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %1
  %14 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %15 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %18 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %17, i32 0, i32 6
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_sndintpipe(i32 %16, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %24 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %23, i32 0, i32 6
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %29 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %28, i32 0, i32 3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %32 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %36 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @usb_tx_callback, align 4
  %39 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @usb_fill_int_urb(%struct.TYPE_9__* %30, i32 %33, i32 %34, i32 %37, i32 4, i32 %38, %struct.imon_context* %39, i32 %40)
  %42 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %43 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %42, i32 0, i32 3
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %91

46:                                               ; preds = %1
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.usb_ctrlrequest* @kmalloc(i32 32, i32 %47)
  store %struct.usb_ctrlrequest* %48, %struct.usb_ctrlrequest** %8, align 8
  %49 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %50 = icmp eq %struct.usb_ctrlrequest* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %156

54:                                               ; preds = %46
  %55 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %56 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %55, i32 0, i32 0
  store i32 33, i32* %56, align 8
  %57 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %58 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %57, i32 0, i32 1
  store i32 9, i32* %58, align 4
  %59 = call i8* @cpu_to_le16(i32 512)
  %60 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %61 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = call i8* @cpu_to_le16(i32 1)
  %63 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %64 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = call i8* @cpu_to_le16(i32 8)
  %66 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %67 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %69 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @usb_sndctrlpipe(i32 %70, i32 0)
  store i32 %71, i32* %4, align 4
  %72 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %73 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %72, i32 0, i32 3
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %76 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %80 = bitcast %struct.usb_ctrlrequest* %79 to i8*
  %81 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %82 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @usb_tx_callback, align 4
  %85 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %86 = call i32 @usb_fill_control_urb(%struct.TYPE_9__* %74, i32 %77, i32 %78, i8* %80, i32 %83, i32 4, i32 %84, %struct.imon_context* %85)
  %87 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %88 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %87, i32 0, i32 3
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %54, %13
  %92 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %93 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = call i32 @reinit_completion(i32* %94)
  %96 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %97 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  %99 = call i32 (...) @smp_rmb()
  %100 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %101 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %100, i32 0, i32 3
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i32 @usb_submit_urb(%struct.TYPE_9__* %102, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %91
  %108 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %109 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  %111 = call i32 (...) @smp_rmb()
  %112 = load i32, i32* %7, align 4
  %113 = call i32 (i8*, ...) @pr_err_ratelimited(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %112)
  br label %144

114:                                              ; preds = %91
  %115 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %116 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %115, i32 0, i32 2
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %119 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = call i32 @wait_for_completion_interruptible(i32* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %114
  %125 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %126 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %125, i32 0, i32 3
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = call i32 @usb_kill_urb(%struct.TYPE_9__* %127)
  %129 = call i32 (i8*, ...) @pr_err_ratelimited(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %124, %114
  %131 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %132 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %131, i32 0, i32 2
  %133 = call i32 @mutex_lock(i32* %132)
  %134 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %135 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = load i32, i32* %7, align 4
  %142 = call i32 (i8*, ...) @pr_err_ratelimited(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %140, %130
  br label %144

144:                                              ; preds = %143, %107
  %145 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %146 = call i32 @kfree(%struct.usb_ctrlrequest* %145)
  %147 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %148 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @msecs_to_jiffies(i32 %149)
  store i64 %150, i64* %5, align 8
  %151 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %152 = call i32 @set_current_state(i32 %151)
  %153 = load i64, i64* %5, align 8
  %154 = call i32 @schedule_timeout(i64 %153)
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %144, %51
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_9__*, i32, i32, i32, i32, i32, %struct.imon_context*, i32) #1

declare dso_local %struct.usb_ctrlrequest* @kmalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.TYPE_9__*, i32, i32, i8*, i32, i32, i32, %struct.imon_context*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pr_err_ratelimited(i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(%struct.usb_ctrlrequest*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
