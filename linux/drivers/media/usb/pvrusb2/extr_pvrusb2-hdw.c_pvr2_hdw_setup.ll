; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i64, i64, i64 }

@PVR2_TRACE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pvr2_hdw_setup(hdw=%p) begin\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"pvr2_hdw_setup(hdw=%p) done, ok=%d init_ok=%d\00", align 1
@PVR2_TRACE_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Device initialization completed successfully.\00", align 1
@FW1_STATE_RELOAD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [79 x i8] c"Device microcontroller firmware (re)loaded; it should now reset and reconnect.\00", align 1
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Device initialization was not successful.\00", align 1
@FW1_STATE_MISSING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [71 x i8] c"Giving up since device microcontroller firmware appears to be missing.\00", align 1
@.str.6 = private unnamed_addr constant [112 x i8] c"***WARNING*** pvrusb2 driver initialization failed due to the failure of one or more sub-device kernel modules.\00", align 1
@.str.7 = private unnamed_addr constant [157 x i8] c"You need to resolve the failing condition before this driver can function.  There should be some earlier messages giving more information about the problem.\00", align 1
@procreload = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [59 x i8] c"Attempting pvrusb2 recovery by reloading primary firmware.\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"If this works, device should disconnect and reconnect in a sane state.\00", align 1
@FW1_STATE_UNKNOWN = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [81 x i8] c"***WARNING*** pvrusb2 device hardware appears to be jammed and I can't clear it.\00", align 1
@.str.11 = private unnamed_addr constant [70 x i8] c"You might need to power cycle the pvrusb2 device in order to recover.\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"pvr2_hdw_setup(hdw=%p) end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_hdw*)* @pvr2_hdw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_hdw_setup(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  %3 = load i32, i32* @PVR2_TRACE_INIT, align 4
  %4 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %5 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.pvr2_hdw* %4)
  br label %6

6:                                                ; preds = %1
  %7 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %8 = call i32 @pvr2_hdw_setup_low(%struct.pvr2_hdw* %7)
  %9 = load i32, i32* @PVR2_TRACE_INIT, align 4
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %12 = call i64 @pvr2_hdw_dev_ok(%struct.pvr2_hdw* %11)
  %13 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %14 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %9, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.pvr2_hdw* %10, i64 %12, i64 %15)
  %17 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %18 = call i64 @pvr2_hdw_dev_ok(%struct.pvr2_hdw* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %6
  %21 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %22 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @PVR2_TRACE_INFO, align 4
  %27 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %78

28:                                               ; preds = %20
  %29 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %30 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FW1_STATE_RELOAD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @PVR2_TRACE_INFO, align 4
  %36 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %35, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0))
  br label %78

37:                                               ; preds = %28
  %38 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %39 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %41 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FW1_STATE_MISSING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %47 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %46, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  br label %78

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %6
  %50 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %51 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %56 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %55, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.6, i64 0, i64 0))
  %57 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %58 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %57, i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.7, i64 0, i64 0))
  br label %78

59:                                               ; preds = %49
  %60 = load i64, i64* @procreload, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %64 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %63, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0))
  %65 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %66 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %65, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i64 0, i64 0))
  %67 = load i64, i64* @FW1_STATE_UNKNOWN, align 8
  %68 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %69 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %71 = call i32 @pvr2_upload_firmware1(%struct.pvr2_hdw* %70)
  br label %77

72:                                               ; preds = %59
  %73 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %74 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %73, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0))
  %75 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %76 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %75, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.11, i64 0, i64 0))
  br label %77

77:                                               ; preds = %72, %62
  br label %78

78:                                               ; preds = %77, %54, %45, %34, %25
  %79 = load i32, i32* @PVR2_TRACE_INIT, align 4
  %80 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %81 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), %struct.pvr2_hdw* %80)
  ret void
}

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @pvr2_hdw_setup_low(%struct.pvr2_hdw*) #1

declare dso_local i64 @pvr2_hdw_dev_ok(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_upload_firmware1(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
