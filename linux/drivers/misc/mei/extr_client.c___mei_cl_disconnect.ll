; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c___mei_cl_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c___mei_cl_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i64, i32, i32, %struct.mei_device* }
%struct.mei_device = type { i32 }
%struct.mei_cl_cb = type { i32 }

@MEI_FILE_DISCONNECTING = common dso_local global i64 0, align 8
@MEI_FOP_DISCONNECT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to disconnect.\0A\00", align 1
@MEI_FILE_DISCONNECT_REPLY = common dso_local global i64 0, align 8
@MEI_FILE_DISCONNECTED = common dso_local global i64 0, align 8
@MEI_CL_CONNECT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"timeout on disconnect from FW client.\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"successfully disconnected from FW client.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_cl*)* @__mei_cl_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mei_cl_disconnect(%struct.mei_cl* %0) #0 {
  %2 = alloca %struct.mei_cl*, align 8
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.mei_cl_cb*, align 8
  %5 = alloca i32, align 4
  store %struct.mei_cl* %0, %struct.mei_cl** %2, align 8
  %6 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %7 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %6, i32 0, i32 3
  %8 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  store %struct.mei_device* %8, %struct.mei_device** %3, align 8
  %9 = load i64, i64* @MEI_FILE_DISCONNECTING, align 8
  %10 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %11 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %13 = load i32, i32* @MEI_FOP_DISCONNECT, align 4
  %14 = call %struct.mei_cl_cb* @mei_cl_enqueue_ctrl_wr_cb(%struct.mei_cl* %12, i32 0, i32 %13, i32* null)
  store %struct.mei_cl_cb* %14, %struct.mei_cl_cb** %4, align 8
  %15 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %4, align 8
  %16 = icmp ne %struct.mei_cl_cb* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %83

20:                                               ; preds = %1
  %21 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %22 = call i64 @mei_hbuf_acquire(%struct.mei_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %26 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %4, align 8
  %27 = call i32 @mei_cl_send_disconnect(%struct.mei_cl* %25, %struct.mei_cl_cb* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %32 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %33 = call i32 @cl_err(%struct.mei_device* %31, %struct.mei_cl* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %83

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %37 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %40 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %43 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MEI_FILE_DISCONNECT_REPLY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %35
  %48 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %49 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MEI_FILE_DISCONNECTED, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %47, %35
  %54 = phi i1 [ true, %35 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* @MEI_CL_CONNECT_TIMEOUT, align 4
  %57 = call i32 @mei_secs_to_jiffies(i32 %56)
  %58 = call i32 @wait_event_timeout(i32 %41, i32 %55, i32 %57)
  %59 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %60 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %59, i32 0, i32 0
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %63 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %5, align 4
  %65 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %66 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MEI_FILE_DISCONNECT_REPLY, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %53
  %71 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %72 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @MEI_FILE_DISCONNECTED, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %78 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %79 = call i32 @cl_dbg(%struct.mei_device* %77, %struct.mei_cl* %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @ETIME, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %76, %70, %53
  br label %83

83:                                               ; preds = %82, %30, %17
  %84 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %85 = call i32 @mei_cl_set_disconnected(%struct.mei_cl* %84)
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %90 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %91 = call i32 @cl_dbg(%struct.mei_device* %89, %struct.mei_cl* %90, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %83
  %93 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %4, align 8
  %94 = call i32 @mei_io_cb_free(%struct.mei_cl_cb* %93)
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.mei_cl_cb* @mei_cl_enqueue_ctrl_wr_cb(%struct.mei_cl*, i32, i32, i32*) #1

declare dso_local i64 @mei_hbuf_acquire(%struct.mei_device*) #1

declare dso_local i32 @mei_cl_send_disconnect(%struct.mei_cl*, %struct.mei_cl_cb*) #1

declare dso_local i32 @cl_err(%struct.mei_device*, %struct.mei_cl*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @mei_secs_to_jiffies(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cl_dbg(%struct.mei_device*, %struct.mei_cl*, i8*) #1

declare dso_local i32 @mei_cl_set_disconnected(%struct.mei_cl*) #1

declare dso_local i32 @mei_io_cb_free(%struct.mei_cl_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
