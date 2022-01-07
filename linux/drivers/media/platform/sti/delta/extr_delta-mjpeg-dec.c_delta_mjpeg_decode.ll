; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mjpeg-dec.c_delta_mjpeg_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mjpeg-dec.c_delta_mjpeg_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, i32, %struct.delta_dev* }
%struct.delta_dev = type { i32 }
%struct.delta_au = type { i32, i32, i32 }
%struct.delta_mjpeg_ctx = type { %struct.mjpeg_header*, i32, %struct.mjpeg_header }
%struct.mjpeg_header = type { i32, i32 }

@DELTA_MJPEG_MAX_RESO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%s  stream resolution too large: %dx%d > %d pixels budget\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.delta_ctx*, %struct.delta_au*)* @delta_mjpeg_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_mjpeg_decode(%struct.delta_ctx* %0, %struct.delta_au* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.delta_ctx*, align 8
  %5 = alloca %struct.delta_au*, align 8
  %6 = alloca %struct.delta_dev*, align 8
  %7 = alloca %struct.delta_mjpeg_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.delta_au, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mjpeg_header*, align 8
  store %struct.delta_ctx* %0, %struct.delta_ctx** %4, align 8
  store %struct.delta_au* %1, %struct.delta_au** %5, align 8
  %12 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %12, i32 0, i32 2
  %14 = load %struct.delta_dev*, %struct.delta_dev** %13, align 8
  store %struct.delta_dev* %14, %struct.delta_dev** %6, align 8
  %15 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %16 = call %struct.delta_mjpeg_ctx* @to_ctx(%struct.delta_ctx* %15)
  store %struct.delta_mjpeg_ctx* %16, %struct.delta_mjpeg_ctx** %7, align 8
  %17 = load %struct.delta_au*, %struct.delta_au** %5, align 8
  %18 = bitcast %struct.delta_au* %9 to i8*
  %19 = bitcast %struct.delta_au* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  store i32 0, i32* %10, align 4
  %20 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %20, i32 0, i32 2
  store %struct.mjpeg_header* %21, %struct.mjpeg_header** %11, align 8
  %22 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %22, i32 0, i32 0
  %24 = load %struct.mjpeg_header*, %struct.mjpeg_header** %23, align 8
  %25 = icmp ne %struct.mjpeg_header* %24, null
  br i1 %25, label %72, label %26

26:                                               ; preds = %2
  %27 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %9, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %9, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mjpeg_header*, %struct.mjpeg_header** %11, align 8
  %33 = call i32 @delta_mjpeg_read_header(%struct.delta_ctx* %27, i32 %29, i32 %31, %struct.mjpeg_header* %32, i32* %10)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  br label %117

41:                                               ; preds = %26
  %42 = load %struct.mjpeg_header*, %struct.mjpeg_header** %11, align 8
  %43 = getelementptr inbounds %struct.mjpeg_header, %struct.mjpeg_header* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mjpeg_header*, %struct.mjpeg_header** %11, align 8
  %46 = getelementptr inbounds %struct.mjpeg_header, %struct.mjpeg_header* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = load i32, i32* @DELTA_MJPEG_MAX_RESO, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %41
  %52 = load %struct.delta_dev*, %struct.delta_dev** %6, align 8
  %53 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mjpeg_header*, %struct.mjpeg_header** %11, align 8
  %59 = getelementptr inbounds %struct.mjpeg_header, %struct.mjpeg_header* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mjpeg_header*, %struct.mjpeg_header** %11, align 8
  %62 = getelementptr inbounds %struct.mjpeg_header, %struct.mjpeg_header* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DELTA_MJPEG_MAX_RESO, align 4
  %65 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60, i32 %63, i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %117

68:                                               ; preds = %41
  %69 = load %struct.mjpeg_header*, %struct.mjpeg_header** %11, align 8
  %70 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %7, align 8
  %71 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %70, i32 0, i32 0
  store %struct.mjpeg_header* %69, %struct.mjpeg_header** %71, align 8
  br label %116

72:                                               ; preds = %2
  %73 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %7, align 8
  %74 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %79 = call i32 @delta_mjpeg_ipc_open(%struct.delta_ctx* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %117

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %72
  %85 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %86 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %9, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %9, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %7, align 8
  %91 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %90, i32 0, i32 0
  %92 = load %struct.mjpeg_header*, %struct.mjpeg_header** %91, align 8
  %93 = call i32 @delta_mjpeg_read_header(%struct.delta_ctx* %85, i32 %87, i32 %89, %struct.mjpeg_header* %92, i32* %10)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %84
  %97 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %98 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  br label %117

101:                                              ; preds = %84
  %102 = load i32, i32* %10, align 4
  %103 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %9, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %104, %102
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* %10, align 4
  %107 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %9, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add i32 %108, %106
  store i32 %109, i32* %107, align 4
  %110 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %111 = call i32 @delta_mjpeg_ipc_decode(%struct.delta_ctx* %110, %struct.delta_au* %9)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  br label %117

115:                                              ; preds = %101
  br label %116

116:                                              ; preds = %115, %68
  store i32 0, i32* %3, align 4
  br label %119

117:                                              ; preds = %114, %96, %82, %51, %36
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %116
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.delta_mjpeg_ctx* @to_ctx(%struct.delta_ctx*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @delta_mjpeg_read_header(%struct.delta_ctx*, i32, i32, %struct.mjpeg_header*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @delta_mjpeg_ipc_open(%struct.delta_ctx*) #1

declare dso_local i32 @delta_mjpeg_ipc_decode(%struct.delta_ctx*, %struct.delta_au*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
