; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_load_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_load_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32*, i32 }
%struct.firmware = type { i32, i64 }

@__const.go7007_load_encoder.fw_name = private unnamed_addr constant [20 x i8] c"go7007/go7007fw.bin\00", align 16
@.str = private unnamed_addr constant [40 x i8] c"unable to load firmware from file \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"WISGO7007FW\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"file \22%s\22 does not appear to be go7007 firmware\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"unable to allocate %d bytes for firmware transfer\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"error transferring firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*)* @go7007_load_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_load_encoder(%struct.go7007* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca [20 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %3, align 8
  %11 = bitcast [20 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.go7007_load_encoder.fw_name, i32 0, i32 0), i64 20, i1 false)
  store i32 0, i32* %8, align 4
  %12 = load %struct.go7007*, %struct.go7007** %3, align 8
  %13 = getelementptr inbounds %struct.go7007, %struct.go7007* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %74

16:                                               ; preds = %1
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %18 = load %struct.go7007*, %struct.go7007** %3, align 8
  %19 = getelementptr inbounds %struct.go7007, %struct.go7007* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @request_firmware(%struct.firmware** %4, i8* %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.go7007*, %struct.go7007** %3, align 8
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %26 = call i32 (%struct.go7007*, i8*, ...) @v4l2_err(%struct.go7007* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 -1, i32* %2, align 4
  br label %101

27:                                               ; preds = %16
  %28 = load %struct.firmware*, %struct.firmware** %4, align 8
  %29 = getelementptr inbounds %struct.firmware, %struct.firmware* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.firmware*, %struct.firmware** %4, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @memcmp(i64 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32, %27
  %39 = load %struct.go7007*, %struct.go7007** %3, align 8
  %40 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %41 = call i32 (%struct.go7007*, i8*, ...) @v4l2_err(%struct.go7007* %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load %struct.firmware*, %struct.firmware** %4, align 8
  %43 = call i32 @release_firmware(%struct.firmware* %42)
  store i32 -1, i32* %2, align 4
  br label %101

44:                                               ; preds = %32
  %45 = load %struct.firmware*, %struct.firmware** %4, align 8
  %46 = getelementptr inbounds %struct.firmware, %struct.firmware* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 16
  store i32 %48, i32* %7, align 4
  %49 = load %struct.firmware*, %struct.firmware** %4, align 8
  %50 = getelementptr inbounds %struct.firmware, %struct.firmware* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 16
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @kmemdup(i64 %52, i32 %53, i32 %54)
  store i8* %55, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %44
  %59 = load %struct.go7007*, %struct.go7007** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (%struct.go7007*, i8*, ...) @v4l2_err(%struct.go7007* %59, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load %struct.firmware*, %struct.firmware** %4, align 8
  %63 = call i32 @release_firmware(%struct.firmware* %62)
  store i32 -1, i32* %2, align 4
  br label %101

64:                                               ; preds = %44
  %65 = load %struct.firmware*, %struct.firmware** %4, align 8
  %66 = call i32 @release_firmware(%struct.firmware* %65)
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.go7007*, %struct.go7007** %3, align 8
  %69 = getelementptr inbounds %struct.go7007, %struct.go7007* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.go7007*, %struct.go7007** %3, align 8
  %73 = getelementptr inbounds %struct.go7007, %struct.go7007* %72, i32 0, i32 1
  store i32* %71, i32** %73, align 8
  br label %74

74:                                               ; preds = %64, %1
  %75 = load %struct.go7007*, %struct.go7007** %3, align 8
  %76 = call i64 @go7007_interface_reset(%struct.go7007* %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %74
  %79 = load %struct.go7007*, %struct.go7007** %3, align 8
  %80 = load %struct.go7007*, %struct.go7007** %3, align 8
  %81 = getelementptr inbounds %struct.go7007, %struct.go7007* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.go7007*, %struct.go7007** %3, align 8
  %84 = getelementptr inbounds %struct.go7007, %struct.go7007* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @go7007_send_firmware(%struct.go7007* %79, i32* %82, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %78
  %89 = load %struct.go7007*, %struct.go7007** %3, align 8
  %90 = call i64 @go7007_read_interrupt(%struct.go7007* %89, i32* %9, i32* %10)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, -2
  %95 = icmp ne i32 %94, 23130
  br i1 %95, label %96, label %99

96:                                               ; preds = %92, %88, %78, %74
  %97 = load %struct.go7007*, %struct.go7007** %3, align 8
  %98 = call i32 (%struct.go7007*, i8*, ...) @v4l2_err(%struct.go7007* %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %99

99:                                               ; preds = %96, %92
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %58, %38, %23
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, i32) #2

declare dso_local i32 @v4l2_err(%struct.go7007*, i8*, ...) #2

declare dso_local i64 @memcmp(i64, i8*, i32) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

declare dso_local i8* @kmemdup(i64, i32, i32) #2

declare dso_local i64 @go7007_interface_reset(%struct.go7007*) #2

declare dso_local i64 @go7007_send_firmware(%struct.go7007*, i32*, i32) #2

declare dso_local i64 @go7007_read_interrupt(%struct.go7007*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
