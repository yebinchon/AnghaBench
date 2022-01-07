; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-request.c_media_request_get_by_fd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-request.c_media_request_get_by_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_request = type { %struct.media_device* }
%struct.media_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.media_request*, i32* }

@EBADR = common dso_local global i32 0, align 4
@request_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot find request_fd %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.media_request* @media_request_get_by_fd(%struct.media_device* %0, i32 %1) #0 {
  %3 = alloca %struct.media_request*, align 8
  %4 = alloca %struct.media_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd, align 8
  %7 = alloca %struct.media_request*, align 8
  %8 = alloca %struct.fd, align 8
  store %struct.media_device* %0, %struct.media_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.media_device*, %struct.media_device** %4, align 8
  %10 = icmp ne %struct.media_device* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load %struct.media_device*, %struct.media_device** %4, align 8
  %13 = getelementptr inbounds %struct.media_device, %struct.media_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load %struct.media_device*, %struct.media_device** %4, align 8
  %18 = getelementptr inbounds %struct.media_device, %struct.media_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.media_device*, %struct.media_device** %4, align 8
  %25 = getelementptr inbounds %struct.media_device, %struct.media_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %16, %11, %2
  %31 = load i32, i32* @EBADR, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.media_request* @ERR_PTR(i32 %32)
  store %struct.media_request* %33, %struct.media_request** %3, align 8
  br label %82

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.TYPE_3__* @fdget(i32 %35)
  %37 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %37, align 8
  %38 = bitcast %struct.fd* %6 to i8*
  %39 = bitcast %struct.fd* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 8, i1 false)
  %40 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = icmp ne %struct.TYPE_3__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %73

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, @request_fops
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %69

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.media_request*, %struct.media_request** %54, align 8
  store %struct.media_request* %55, %struct.media_request** %7, align 8
  %56 = load %struct.media_request*, %struct.media_request** %7, align 8
  %57 = getelementptr inbounds %struct.media_request, %struct.media_request* %56, i32 0, i32 0
  %58 = load %struct.media_device*, %struct.media_device** %57, align 8
  %59 = load %struct.media_device*, %struct.media_device** %4, align 8
  %60 = icmp ne %struct.media_device* %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %69

62:                                               ; preds = %51
  %63 = load %struct.media_request*, %struct.media_request** %7, align 8
  %64 = call i32 @media_request_get(%struct.media_request* %63)
  %65 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = call i32 @fdput(%struct.TYPE_3__* %66)
  %68 = load %struct.media_request*, %struct.media_request** %7, align 8
  store %struct.media_request* %68, %struct.media_request** %3, align 8
  br label %82

69:                                               ; preds = %61, %50
  %70 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = call i32 @fdput(%struct.TYPE_3__* %71)
  br label %73

73:                                               ; preds = %69, %43
  %74 = load %struct.media_device*, %struct.media_device** %4, align 8
  %75 = getelementptr inbounds %struct.media_device, %struct.media_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @dev_dbg(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  %81 = call %struct.media_request* @ERR_PTR(i32 %80)
  store %struct.media_request* %81, %struct.media_request** %3, align 8
  br label %82

82:                                               ; preds = %73, %62, %30
  %83 = load %struct.media_request*, %struct.media_request** %3, align 8
  ret %struct.media_request* %83
}

declare dso_local %struct.media_request* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_3__* @fdget(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @media_request_get(%struct.media_request*) #1

declare dso_local i32 @fdput(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
