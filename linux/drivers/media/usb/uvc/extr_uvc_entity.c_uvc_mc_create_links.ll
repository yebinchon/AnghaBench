; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_entity.c_uvc_mc_create_links.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_entity.c_uvc_mc_create_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { i32 }
%struct.uvc_entity = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.media_entity }
%struct.media_entity = type { i32 }
%struct.TYPE_5__ = type { %struct.media_entity }
%struct.TYPE_4__ = type { i32 }

@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_IMMUTABLE = common dso_local global i32 0, align 4
@UVC_TT_STREAMING = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_video_chain*, %struct.uvc_entity*)* @uvc_mc_create_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_mc_create_links(%struct.uvc_video_chain* %0, %struct.uvc_entity* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video_chain*, align 8
  %5 = alloca %struct.uvc_entity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.media_entity*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.media_entity*, align 8
  %11 = alloca %struct.uvc_entity*, align 8
  %12 = alloca i32, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %4, align 8
  store %struct.uvc_entity* %1, %struct.uvc_entity** %5, align 8
  %13 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %14 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %17 = call i64 @UVC_ENTITY_TYPE(%struct.uvc_entity* %16)
  %18 = load i64, i64* @UVC_TT_STREAMING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %22 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %27 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %25
  %32 = phi %struct.media_entity* [ %29, %25 ], [ null, %30 ]
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %35 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  br label %37

37:                                               ; preds = %33, %31
  %38 = phi %struct.media_entity* [ %32, %31 ], [ %36, %33 ]
  store %struct.media_entity* %38, %struct.media_entity** %7, align 8
  %39 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %40 = icmp eq %struct.media_entity* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %126

42:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %122, %42
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %46 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %125

49:                                               ; preds = %43
  %50 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %51 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %49
  br label %122

62:                                               ; preds = %49
  %63 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %64 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %67 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.uvc_entity* @uvc_entity_by_id(i32 %65, i32 %72)
  store %struct.uvc_entity* %73, %struct.uvc_entity** %11, align 8
  %74 = load %struct.uvc_entity*, %struct.uvc_entity** %11, align 8
  %75 = icmp eq %struct.uvc_entity* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %126

79:                                               ; preds = %62
  %80 = load %struct.uvc_entity*, %struct.uvc_entity** %11, align 8
  %81 = call i64 @UVC_ENTITY_TYPE(%struct.uvc_entity* %80)
  %82 = load i64, i64* @UVC_TT_STREAMING, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = load %struct.uvc_entity*, %struct.uvc_entity** %11, align 8
  %86 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = icmp ne %struct.TYPE_5__* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.uvc_entity*, %struct.uvc_entity** %11, align 8
  %91 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %90, i32 0, i32 2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  br label %95

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %89
  %96 = phi %struct.media_entity* [ %93, %89 ], [ null, %94 ]
  br label %101

97:                                               ; preds = %79
  %98 = load %struct.uvc_entity*, %struct.uvc_entity** %11, align 8
  %99 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  br label %101

101:                                              ; preds = %97, %95
  %102 = phi %struct.media_entity* [ %96, %95 ], [ %100, %97 ]
  store %struct.media_entity* %102, %struct.media_entity** %10, align 8
  %103 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %104 = icmp eq %struct.media_entity* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %122

106:                                              ; preds = %101
  %107 = load %struct.uvc_entity*, %struct.uvc_entity** %11, align 8
  %108 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sub i32 %109, 1
  store i32 %110, i32* %12, align 4
  %111 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @media_create_pad_link(%struct.media_entity* %111, i32 %112, %struct.media_entity* %113, i32 %114, i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %106
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %3, align 4
  br label %126

121:                                              ; preds = %106
  br label %122

122:                                              ; preds = %121, %105, %61
  %123 = load i32, i32* %8, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %43

125:                                              ; preds = %43
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %119, %76, %41
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @UVC_ENTITY_TYPE(%struct.uvc_entity*) #1

declare dso_local %struct.uvc_entity* @uvc_entity_by_id(i32, i32) #1

declare dso_local i32 @media_create_pad_link(%struct.media_entity*, i32, %struct.media_entity*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
