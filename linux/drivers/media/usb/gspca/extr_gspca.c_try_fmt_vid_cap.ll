; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { {}* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.v4l2_format = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }

@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"try fmt cap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.v4l2_format*)* @try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_fmt_vid_cap(%struct.gspca_dev* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.v4l2_format*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %4, align 8
  %9 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = load i32, i32* @D_CONF, align 4
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @PDEBUG_MODE(%struct.gspca_dev* %19, i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %27)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @wxh_to_nearest_mode(%struct.gspca_dev* %29, i32 %30, i32 %31, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %39 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %48 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %46, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %2
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @gspca_get_mode(%struct.gspca_dev* %54, i32 %55, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %64, %53
  br label %67

67:                                               ; preds = %66, %2
  %68 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %69 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %72 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = bitcast %struct.TYPE_6__* %70 to i8*
  %79 = bitcast %struct.TYPE_6__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 12, i1 false)
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %81 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = bitcast {}** %83 to i32 (%struct.gspca_dev*, %struct.v4l2_format*)**
  %85 = load i32 (%struct.gspca_dev*, %struct.v4l2_format*)*, i32 (%struct.gspca_dev*, %struct.v4l2_format*)** %84, align 8
  %86 = icmp ne i32 (%struct.gspca_dev*, %struct.v4l2_format*)* %85, null
  br i1 %86, label %87, label %107

87:                                               ; preds = %67
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %90 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %95 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i32 %93, i32* %97, align 4
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %99 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = bitcast {}** %101 to i32 (%struct.gspca_dev*, %struct.v4l2_format*)**
  %103 = load i32 (%struct.gspca_dev*, %struct.v4l2_format*)*, i32 (%struct.gspca_dev*, %struct.v4l2_format*)** %102, align 8
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %105 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %106 = call i32 %103(%struct.gspca_dev* %104, %struct.v4l2_format* %105)
  br label %107

107:                                              ; preds = %87, %67
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i32 @PDEBUG_MODE(%struct.gspca_dev*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @wxh_to_nearest_mode(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @gspca_get_mode(%struct.gspca_dev*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
