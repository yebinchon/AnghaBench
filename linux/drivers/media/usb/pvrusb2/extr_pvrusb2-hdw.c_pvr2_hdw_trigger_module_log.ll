; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_trigger_module_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_trigger_module_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i32 }

@.str = private unnamed_addr constant [70 x i8] c"pvrusb2: =================  START STATUS CARD #%d  =================\0A\00", align 1
@core = common dso_local global i32 0, align 4
@log_status = common dso_local global i32 0, align 4
@PVR2_TRACE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"cx2341x config:\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pvrusb2\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"pvrusb2: ==================  END STATUS CARD #%d  ==================\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_hdw_trigger_module_log(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  %3 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  %4 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %5 = call i32 @pvr2_hdw_get_unit_number(%struct.pvr2_hdw* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %7 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @LOCK_TAKE(i32 %8)
  br label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @pr_info(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %14 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %13, i32 0, i32 2
  %15 = load i32, i32* @core, align 4
  %16 = load i32, i32* @log_status, align 4
  %17 = call i32 @v4l2_device_call_all(i32* %14, i32 0, i32 %15, i32 %16)
  %18 = load i32, i32* @PVR2_TRACE_INFO, align 4
  %19 = call i32 @pvr2_trace(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %21 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %20, i32 0, i32 1
  %22 = call i32 @cx2341x_log_status(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %24 = call i32 @pvr2_hdw_state_log_state(%struct.pvr2_hdw* %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %10
  %28 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %29 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @LOCK_GIVE(i32 %30)
  ret void
}

declare dso_local i32 @pvr2_hdw_get_unit_number(%struct.pvr2_hdw*) #1

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*) #1

declare dso_local i32 @cx2341x_log_status(i32*, i8*) #1

declare dso_local i32 @pvr2_hdw_state_log_state(%struct.pvr2_hdw*) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
