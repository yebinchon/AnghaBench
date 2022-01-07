; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_mxb.c_vidioc_s_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_mxb.c_vidioc_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.saa7146_dev = type { i64 }
%struct.mxb = type { i32, i64, i64 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@.str = private unnamed_addr constant [19 x i8] c"VIDIOC_S_INPUT %d\0A\00", align 1
@MXB_INPUTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@input_port_selection = common dso_local global %struct.TYPE_2__* null, align 8
@SAA7115_COMPOSITE0 = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@SAA7115_SVIDEO1 = common dso_local global i32 0, align 4
@SAA7115_COMPOSITE1 = common dso_local global i32 0, align 4
@SAA7111_FMT_CCIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"VIDIOC_S_INPUT: could not address saa7111a\0A\00", align 1
@video_audio_connect = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_s_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.mxb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.saa7146_fh*
  %14 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %13, i32 0, i32 0
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  store %struct.saa7146_dev* %15, %struct.saa7146_dev** %8, align 8
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %17 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.mxb*
  store %struct.mxb* %19, %struct.mxb** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @DEB_EE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @MXB_INPUTS, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %113

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.mxb*, %struct.mxb** %9, align 8
  %31 = getelementptr inbounds %struct.mxb, %struct.mxb* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @input_port_selection, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @input_port_selection, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @saa7146_set_hps_source_and_sync(%struct.saa7146_dev* %32, i32 %38, i32 %44)
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %71 [
    i32 128, label %47
    i32 129, label %61
    i32 130, label %63
    i32 131, label %65
  ]

47:                                               ; preds = %28
  %48 = load i32, i32* @SAA7115_COMPOSITE0, align 4
  store i32 %48, i32* %11, align 4
  %49 = load %struct.mxb*, %struct.mxb** %9, align 8
  %50 = load i32, i32* @video, align 4
  %51 = load i32, i32* @s_routing, align 4
  %52 = call i32 @tea6415c_call(%struct.mxb* %49, i32 %50, i32 %51, i32 3, i32 17, i32 0)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %47
  %56 = load %struct.mxb*, %struct.mxb** %9, align 8
  %57 = load i32, i32* @video, align 4
  %58 = load i32, i32* @s_routing, align 4
  %59 = call i32 @tea6415c_call(%struct.mxb* %56, i32 %57, i32 %58, i32 3, i32 13, i32 0)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %55, %47
  br label %71

61:                                               ; preds = %28
  %62 = load i32, i32* @SAA7115_SVIDEO1, align 4
  store i32 %62, i32* %11, align 4
  br label %71

63:                                               ; preds = %28
  %64 = load i32, i32* @SAA7115_COMPOSITE1, align 4
  store i32 %64, i32* %11, align 4
  br label %71

65:                                               ; preds = %28
  %66 = load i32, i32* @SAA7115_COMPOSITE0, align 4
  store i32 %66, i32* %11, align 4
  %67 = load %struct.mxb*, %struct.mxb** %9, align 8
  %68 = load i32, i32* @video, align 4
  %69 = load i32, i32* @s_routing, align 4
  %70 = call i32 @tea6415c_call(%struct.mxb* %67, i32 %68, i32 %69, i32 1, i32 17, i32 0)
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %28, %65, %63, %61, %60
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %113

76:                                               ; preds = %71
  %77 = load %struct.mxb*, %struct.mxb** %9, align 8
  %78 = load i32, i32* @video, align 4
  %79 = load i32, i32* @s_routing, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @SAA7111_FMT_CCIR, align 4
  %82 = call i64 @saa7111a_call(%struct.mxb* %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 0)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %76
  %87 = load i64*, i64** @video_audio_connect, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.mxb*, %struct.mxb** %9, align 8
  %93 = getelementptr inbounds %struct.mxb, %struct.mxb* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load %struct.mxb*, %struct.mxb** %9, align 8
  %95 = getelementptr inbounds %struct.mxb, %struct.mxb* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 0, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %86
  %99 = load %struct.mxb*, %struct.mxb** %9, align 8
  %100 = load %struct.mxb*, %struct.mxb** %9, align 8
  %101 = getelementptr inbounds %struct.mxb, %struct.mxb* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @tea6420_route(%struct.mxb* %99, i64 %102)
  br label %104

104:                                              ; preds = %98, %86
  %105 = load %struct.mxb*, %struct.mxb** %9, align 8
  %106 = getelementptr inbounds %struct.mxb, %struct.mxb* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.mxb*, %struct.mxb** %9, align 8
  %111 = call i32 @mxb_update_audmode(%struct.mxb* %110)
  br label %112

112:                                              ; preds = %109, %104
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %74, %25
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @DEB_EE(i8*, i32) #1

declare dso_local i32 @saa7146_set_hps_source_and_sync(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @tea6415c_call(%struct.mxb*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @saa7111a_call(%struct.mxb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @tea6420_route(%struct.mxb*, i64) #1

declare dso_local i32 @mxb_update_audmode(%struct.mxb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
