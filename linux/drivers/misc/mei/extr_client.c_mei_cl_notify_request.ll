; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_notify_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_notify_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i32, i32, i32, %struct.mei_device* }
%struct.mei_device = type { i32, i32, i32, i32 }
%struct.file = type { i32 }
%struct.mei_cl_cb = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"notifications not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"rpm: get failed %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MEI_CL_CONNECT_TIMEOUT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"rpm: autosuspend\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_cl_notify_request(%struct.mei_cl* %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mei_cl*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mei_device*, align 8
  %9 = alloca %struct.mei_cl_cb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mei_cl* %0, %struct.mei_cl** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %13 = icmp ne %struct.mei_cl* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %16 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %15, i32 0, i32 3
  %17 = load %struct.mei_device*, %struct.mei_device** %16, align 8
  %18 = icmp ne %struct.mei_device* %17, null
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi i1 [ true, %3 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %167

28:                                               ; preds = %20
  %29 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %30 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %29, i32 0, i32 3
  %31 = load %struct.mei_device*, %struct.mei_device** %30, align 8
  store %struct.mei_device* %31, %struct.mei_device** %8, align 8
  %32 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %33 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %28
  %37 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %38 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %39 = call i32 @cl_dbg(%struct.mei_device* %37, %struct.mei_cl* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %167

42:                                               ; preds = %28
  %43 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %44 = call i32 @mei_cl_is_connected(%struct.mei_cl* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %167

49:                                               ; preds = %42
  %50 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %51 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pm_runtime_get(i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %49
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @EINPROGRESS, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %63 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pm_runtime_put_noidle(i32 %64)
  %66 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %67 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @cl_err(%struct.mei_device* %66, %struct.mei_cl* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %167

71:                                               ; preds = %56, %49
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @mei_cl_notify_req2fop(i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.file*, %struct.file** %6, align 8
  %77 = call %struct.mei_cl_cb* @mei_cl_enqueue_ctrl_wr_cb(%struct.mei_cl* %74, i32 0, i32 %75, %struct.file* %76)
  store %struct.mei_cl_cb* %77, %struct.mei_cl_cb** %9, align 8
  %78 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %9, align 8
  %79 = icmp ne %struct.mei_cl_cb* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %71
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %11, align 4
  br label %152

83:                                               ; preds = %71
  %84 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %85 = call i64 @mei_hbuf_acquire(%struct.mei_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %89 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i64 @mei_hbm_cl_notify_req(%struct.mei_device* %88, %struct.mei_cl* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %11, align 4
  br label %152

96:                                               ; preds = %87
  %97 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %9, align 8
  %98 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %97, i32 0, i32 0
  %99 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %100 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %99, i32 0, i32 2
  %101 = call i32 @list_move_tail(i32* %98, i32* %100)
  br label %102

102:                                              ; preds = %96, %83
  %103 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %104 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %107 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %110 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %124, label %114

114:                                              ; preds = %102
  %115 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %116 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %121 = call i32 @mei_cl_is_connected(%struct.mei_cl* %120)
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %119, %114, %102
  %125 = phi i1 [ true, %114 ], [ true, %102 ], [ %123, %119 ]
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* @MEI_CL_CONNECT_TIMEOUT, align 4
  %128 = call i32 @mei_secs_to_jiffies(i32 %127)
  %129 = call i32 @wait_event_timeout(i32 %108, i32 %126, i32 %128)
  %130 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %131 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %130, i32 0, i32 1
  %132 = call i32 @mutex_lock(i32* %131)
  %133 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %134 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %124
  %139 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %140 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @EFAULT, align 4
  %145 = sub nsw i32 0, %144
  %146 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %147 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %143, %138, %124
  %149 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %150 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %148, %93, %80
  %153 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %154 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %155 = call i32 @cl_dbg(%struct.mei_device* %153, %struct.mei_cl* %154, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %156 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %157 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @pm_runtime_mark_last_busy(i32 %158)
  %160 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %161 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @pm_runtime_put_autosuspend(i32 %162)
  %164 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %9, align 8
  %165 = call i32 @mei_io_cb_free(%struct.mei_cl_cb* %164)
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %152, %61, %46, %36, %25
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cl_dbg(%struct.mei_device*, %struct.mei_cl*, i8*) #1

declare dso_local i32 @mei_cl_is_connected(%struct.mei_cl*) #1

declare dso_local i32 @pm_runtime_get(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @cl_err(%struct.mei_device*, %struct.mei_cl*, i8*, i32) #1

declare dso_local i32 @mei_cl_notify_req2fop(i32) #1

declare dso_local %struct.mei_cl_cb* @mei_cl_enqueue_ctrl_wr_cb(%struct.mei_cl*, i32, i32, %struct.file*) #1

declare dso_local i64 @mei_hbuf_acquire(%struct.mei_device*) #1

declare dso_local i64 @mei_hbm_cl_notify_req(%struct.mei_device*, %struct.mei_cl*, i32) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @mei_secs_to_jiffies(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mei_io_cb_free(%struct.mei_cl_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
