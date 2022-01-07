; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrls_find_req_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrls_find_req_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_request_object = type { i32 }
%struct.v4l2_ctrl_handler = type { i32, %struct.media_request_object }
%struct.media_request = type { i64 }

@MEDIA_REQUEST_STATE_UPDATING = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@req_ops = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.media_request_object* (%struct.v4l2_ctrl_handler*, %struct.media_request*, i32)* @v4l2_ctrls_find_req_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.media_request_object* @v4l2_ctrls_find_req_obj(%struct.v4l2_ctrl_handler* %0, %struct.media_request* %1, i32 %2) #0 {
  %4 = alloca %struct.media_request_object*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  %6 = alloca %struct.media_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.media_request_object*, align 8
  %9 = alloca %struct.v4l2_ctrl_handler*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %5, align 8
  store %struct.media_request* %1, %struct.media_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.media_request*, %struct.media_request** %6, align 8
  %12 = call i64 @IS_ERR(%struct.media_request* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.media_request*, %struct.media_request** %6, align 8
  %16 = call %struct.media_request_object* @ERR_CAST(%struct.media_request* %15)
  store %struct.media_request_object* %16, %struct.media_request_object** %4, align 8
  br label %86

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.media_request*, %struct.media_request** %6, align 8
  %22 = getelementptr inbounds %struct.media_request, %struct.media_request* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MEDIA_REQUEST_STATE_UPDATING, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.media_request_object* @ERR_PTR(i32 %31)
  store %struct.media_request_object* %32, %struct.media_request_object** %4, align 8
  br label %86

33:                                               ; preds = %20, %17
  %34 = load %struct.media_request*, %struct.media_request** %6, align 8
  %35 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %36 = call %struct.media_request_object* @media_request_object_find(%struct.media_request* %34, i32* @req_ops, %struct.v4l2_ctrl_handler* %35)
  store %struct.media_request_object* %36, %struct.media_request_object** %8, align 8
  %37 = load %struct.media_request_object*, %struct.media_request_object** %8, align 8
  %38 = icmp ne %struct.media_request_object* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load %struct.media_request_object*, %struct.media_request_object** %8, align 8
  store %struct.media_request_object* %40, %struct.media_request_object** %4, align 8
  br label %86

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.media_request_object* @ERR_PTR(i32 %46)
  store %struct.media_request_object* %47, %struct.media_request_object** %4, align 8
  br label %86

48:                                               ; preds = %41
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.v4l2_ctrl_handler* @kzalloc(i32 8, i32 %49)
  store %struct.v4l2_ctrl_handler* %50, %struct.v4l2_ctrl_handler** %9, align 8
  %51 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %52 = icmp ne %struct.v4l2_ctrl_handler* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.media_request_object* @ERR_PTR(i32 %55)
  store %struct.media_request_object* %56, %struct.media_request_object** %4, align 8
  br label %86

57:                                               ; preds = %48
  %58 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %59 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %58, i32 0, i32 1
  store %struct.media_request_object* %59, %struct.media_request_object** %8, align 8
  %60 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %61 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = mul nsw i32 %64, 8
  %66 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %60, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %57
  %70 = load %struct.media_request*, %struct.media_request** %6, align 8
  %71 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %72 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %73 = call i32 @v4l2_ctrl_request_bind(%struct.media_request* %70, %struct.v4l2_ctrl_handler* %71, %struct.v4l2_ctrl_handler* %72)
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %69, %57
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %79 = call i32 @kfree(%struct.v4l2_ctrl_handler* %78)
  %80 = load i32, i32* %10, align 4
  %81 = call %struct.media_request_object* @ERR_PTR(i32 %80)
  store %struct.media_request_object* %81, %struct.media_request_object** %4, align 8
  br label %86

82:                                               ; preds = %74
  %83 = load %struct.media_request_object*, %struct.media_request_object** %8, align 8
  %84 = call i32 @media_request_object_get(%struct.media_request_object* %83)
  %85 = load %struct.media_request_object*, %struct.media_request_object** %8, align 8
  store %struct.media_request_object* %85, %struct.media_request_object** %4, align 8
  br label %86

86:                                               ; preds = %82, %77, %53, %44, %39, %29, %14
  %87 = load %struct.media_request_object*, %struct.media_request_object** %4, align 8
  ret %struct.media_request_object* %87
}

declare dso_local i64 @IS_ERR(%struct.media_request*) #1

declare dso_local %struct.media_request_object* @ERR_CAST(%struct.media_request*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.media_request_object* @ERR_PTR(i32) #1

declare dso_local %struct.media_request_object* @media_request_object_find(%struct.media_request*, i32*, %struct.v4l2_ctrl_handler*) #1

declare dso_local %struct.v4l2_ctrl_handler* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_request_bind(%struct.media_request*, %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @kfree(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @media_request_object_get(%struct.media_request_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
