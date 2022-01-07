; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-request.c_media_request_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-request.c_media_request_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.media_request* (%struct.media_device*)*, i32 }
%struct.media_request = type { i32, i64, i64, i32, i32, i32, i32, i64, i32, %struct.media_device* }
%struct.file = type { %struct.media_request* }

@ENOMEM = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"request\00", align 1
@request_fops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MEDIA_REQUEST_STATE_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%u:%d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"request: allocated %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @media_request_alloc(%struct.media_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.media_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.media_request*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.media_device* %0, %struct.media_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.media_device*, %struct.media_device** %4, align 8
  %11 = getelementptr inbounds %struct.media_device, %struct.media_device* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.media_request* (%struct.media_device*)*, %struct.media_request* (%struct.media_device*)** %13, align 8
  %15 = icmp ne %struct.media_request* (%struct.media_device*)* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load %struct.media_device*, %struct.media_device** %4, align 8
  %19 = getelementptr inbounds %struct.media_device, %struct.media_device* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = xor i32 %17, %25
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %127

32:                                               ; preds = %2
  %33 = load i32, i32* @O_CLOEXEC, align 4
  %34 = call i32 @get_unused_fd_flags(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %127

39:                                               ; preds = %32
  %40 = load i32, i32* @O_CLOEXEC, align 4
  %41 = call %struct.file* @anon_inode_getfile(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* @request_fops, i32* null, i32 %40)
  store %struct.file* %41, %struct.file** %7, align 8
  %42 = load %struct.file*, %struct.file** %7, align 8
  %43 = call i64 @IS_ERR(%struct.file* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.file*, %struct.file** %7, align 8
  %47 = call i32 @PTR_ERR(%struct.file* %46)
  store i32 %47, i32* %9, align 4
  br label %123

48:                                               ; preds = %39
  %49 = load %struct.media_device*, %struct.media_device** %4, align 8
  %50 = getelementptr inbounds %struct.media_device, %struct.media_device* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.media_request* (%struct.media_device*)*, %struct.media_request* (%struct.media_device*)** %52, align 8
  %54 = icmp ne %struct.media_request* (%struct.media_device*)* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.media_device*, %struct.media_device** %4, align 8
  %57 = getelementptr inbounds %struct.media_device, %struct.media_device* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.media_request* (%struct.media_device*)*, %struct.media_request* (%struct.media_device*)** %59, align 8
  %61 = load %struct.media_device*, %struct.media_device** %4, align 8
  %62 = call %struct.media_request* %60(%struct.media_device* %61)
  store %struct.media_request* %62, %struct.media_request** %6, align 8
  br label %66

63:                                               ; preds = %48
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.media_request* @kzalloc(i32 64, i32 %64)
  store %struct.media_request* %65, %struct.media_request** %6, align 8
  br label %66

66:                                               ; preds = %63, %55
  %67 = load %struct.media_request*, %struct.media_request** %6, align 8
  %68 = icmp ne %struct.media_request* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  br label %120

72:                                               ; preds = %66
  %73 = load %struct.media_request*, %struct.media_request** %6, align 8
  %74 = load %struct.file*, %struct.file** %7, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 0
  store %struct.media_request* %73, %struct.media_request** %75, align 8
  %76 = load %struct.media_device*, %struct.media_device** %4, align 8
  %77 = load %struct.media_request*, %struct.media_request** %6, align 8
  %78 = getelementptr inbounds %struct.media_request, %struct.media_request* %77, i32 0, i32 9
  store %struct.media_device* %76, %struct.media_device** %78, align 8
  %79 = load i32, i32* @MEDIA_REQUEST_STATE_IDLE, align 4
  %80 = load %struct.media_request*, %struct.media_request** %6, align 8
  %81 = getelementptr inbounds %struct.media_request, %struct.media_request* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 8
  %82 = load %struct.media_request*, %struct.media_request** %6, align 8
  %83 = getelementptr inbounds %struct.media_request, %struct.media_request* %82, i32 0, i32 7
  store i64 0, i64* %83, align 8
  %84 = load %struct.media_request*, %struct.media_request** %6, align 8
  %85 = getelementptr inbounds %struct.media_request, %struct.media_request* %84, i32 0, i32 6
  %86 = call i32 @kref_init(i32* %85)
  %87 = load %struct.media_request*, %struct.media_request** %6, align 8
  %88 = getelementptr inbounds %struct.media_request, %struct.media_request* %87, i32 0, i32 5
  %89 = call i32 @INIT_LIST_HEAD(i32* %88)
  %90 = load %struct.media_request*, %struct.media_request** %6, align 8
  %91 = getelementptr inbounds %struct.media_request, %struct.media_request* %90, i32 0, i32 4
  %92 = call i32 @spin_lock_init(i32* %91)
  %93 = load %struct.media_request*, %struct.media_request** %6, align 8
  %94 = getelementptr inbounds %struct.media_request, %struct.media_request* %93, i32 0, i32 3
  %95 = call i32 @init_waitqueue_head(i32* %94)
  %96 = load %struct.media_request*, %struct.media_request** %6, align 8
  %97 = getelementptr inbounds %struct.media_request, %struct.media_request* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.media_request*, %struct.media_request** %6, align 8
  %99 = getelementptr inbounds %struct.media_request, %struct.media_request* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32*, i32** %5, align 8
  store i32 %100, i32* %101, align 4
  %102 = load %struct.media_request*, %struct.media_request** %6, align 8
  %103 = getelementptr inbounds %struct.media_request, %struct.media_request* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.media_device*, %struct.media_device** %4, align 8
  %106 = getelementptr inbounds %struct.media_device, %struct.media_device* %105, i32 0, i32 1
  %107 = call i32 @atomic_inc_return(i32* %106)
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @snprintf(i32 %104, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load %struct.media_device*, %struct.media_device** %4, align 8
  %111 = getelementptr inbounds %struct.media_device, %struct.media_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.media_request*, %struct.media_request** %6, align 8
  %114 = getelementptr inbounds %struct.media_request, %struct.media_request* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dev_dbg(i32 %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.file*, %struct.file** %7, align 8
  %119 = call i32 @fd_install(i32 %117, %struct.file* %118)
  store i32 0, i32* %3, align 4
  br label %127

120:                                              ; preds = %69
  %121 = load %struct.file*, %struct.file** %7, align 8
  %122 = call i32 @fput(%struct.file* %121)
  br label %123

123:                                              ; preds = %120, %45
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @put_unused_fd(i32 %124)
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %123, %72, %37, %29
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local %struct.file* @anon_inode_getfile(i8*, i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local %struct.media_request* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @put_unused_fd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
