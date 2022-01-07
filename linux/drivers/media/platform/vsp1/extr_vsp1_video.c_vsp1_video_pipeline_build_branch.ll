; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_pipeline_build_branch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_pipeline_build_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_pipeline = type { %struct.vsp1_entity*, %struct.vsp1_entity* }
%struct.vsp1_entity = type { i64, i64, %struct.media_pad*, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.media_pad = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vsp1_rwpf = type { i64, %struct.vsp1_entity }
%struct.media_entity_enum = type { i32 }
%struct.vsp1_brx = type { %struct.vsp1_entity, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.vsp1_rwpf* }

@RWPF_PAD_SOURCE = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i32 0, align 4
@VSP1_ENTITY_BRU = common dso_local global i64 0, align 8
@VSP1_ENTITY_BRS = common dso_local global i64 0, align 8
@VSP1_ENTITY_WPF = common dso_local global i64 0, align 8
@VSP1_ENTITY_UDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsp1_pipeline*, %struct.vsp1_rwpf*, %struct.vsp1_rwpf*)* @vsp1_video_pipeline_build_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_video_pipeline_build_branch(%struct.vsp1_pipeline* %0, %struct.vsp1_rwpf* %1, %struct.vsp1_rwpf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vsp1_pipeline*, align 8
  %6 = alloca %struct.vsp1_rwpf*, align 8
  %7 = alloca %struct.vsp1_rwpf*, align 8
  %8 = alloca %struct.media_entity_enum, align 4
  %9 = alloca %struct.vsp1_entity*, align 8
  %10 = alloca %struct.media_pad*, align 8
  %11 = alloca %struct.vsp1_brx*, align 8
  %12 = alloca i32, align 4
  store %struct.vsp1_pipeline* %0, %struct.vsp1_pipeline** %5, align 8
  store %struct.vsp1_rwpf* %1, %struct.vsp1_rwpf** %6, align 8
  store %struct.vsp1_rwpf* %2, %struct.vsp1_rwpf** %7, align 8
  store %struct.vsp1_brx* null, %struct.vsp1_brx** %11, align 8
  %13 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %14 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @media_entity_enum_init(%struct.media_entity_enum* %8, i32* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %4, align 4
  br label %155

23:                                               ; preds = %3
  %24 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %25 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %25, i32 0, i32 2
  %27 = load %struct.media_pad*, %struct.media_pad** %26, align 8
  %28 = load i64, i64* @RWPF_PAD_SOURCE, align 8
  %29 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %27, i64 %28
  %30 = call %struct.media_pad* @vsp1_entity_remote_pad(%struct.media_pad* %29)
  store %struct.media_pad* %30, %struct.media_pad** %10, align 8
  br label %31

31:                                               ; preds = %23, %133
  %32 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %33 = icmp eq %struct.media_pad* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EPIPE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %152

37:                                               ; preds = %31
  %38 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %39 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @is_media_entity_v4l2_subdev(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @EPIPE, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %12, align 4
  br label %152

46:                                               ; preds = %37
  %47 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %48 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @media_entity_to_v4l2_subdev(i32 %49)
  %51 = call %struct.vsp1_entity* @to_vsp1_entity(i32 %50)
  store %struct.vsp1_entity* %51, %struct.vsp1_entity** %9, align 8
  %52 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %53 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VSP1_ENTITY_BRU, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %46
  %58 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %59 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VSP1_ENTITY_BRS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %57, %46
  %64 = load %struct.vsp1_brx*, %struct.vsp1_brx** %11, align 8
  %65 = icmp ne %struct.vsp1_brx* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @EPIPE, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  br label %152

69:                                               ; preds = %63
  %70 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %71 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %70, i32 0, i32 3
  %72 = call %struct.vsp1_brx* @to_brx(%struct.TYPE_6__* %71)
  store %struct.vsp1_brx* %72, %struct.vsp1_brx** %11, align 8
  %73 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %74 = load %struct.vsp1_brx*, %struct.vsp1_brx** %11, align 8
  %75 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %78 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store %struct.vsp1_rwpf* %73, %struct.vsp1_rwpf** %81, align 8
  %82 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %83 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %86 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %69, %57
  %88 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %89 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @VSP1_ENTITY_WPF, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %143

94:                                               ; preds = %87
  %95 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %96 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = call i64 @media_entity_enum_test_and_set(%struct.media_entity_enum* %8, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* @EPIPE, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %12, align 4
  br label %152

103:                                              ; preds = %94
  %104 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %105 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @VSP1_ENTITY_UDS, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %133

109:                                              ; preds = %103
  %110 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %5, align 8
  %111 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %110, i32 0, i32 1
  %112 = load %struct.vsp1_entity*, %struct.vsp1_entity** %111, align 8
  %113 = icmp ne %struct.vsp1_entity* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @EPIPE, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %12, align 4
  br label %152

117:                                              ; preds = %109
  %118 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %119 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %5, align 8
  %120 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %119, i32 0, i32 1
  store %struct.vsp1_entity* %118, %struct.vsp1_entity** %120, align 8
  %121 = load %struct.vsp1_brx*, %struct.vsp1_brx** %11, align 8
  %122 = icmp ne %struct.vsp1_brx* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load %struct.vsp1_brx*, %struct.vsp1_brx** %11, align 8
  %125 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %124, i32 0, i32 0
  br label %129

126:                                              ; preds = %117
  %127 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %128 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %127, i32 0, i32 1
  br label %129

129:                                              ; preds = %126, %123
  %130 = phi %struct.vsp1_entity* [ %125, %123 ], [ %128, %126 ]
  %131 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %5, align 8
  %132 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %131, i32 0, i32 0
  store %struct.vsp1_entity* %130, %struct.vsp1_entity** %132, align 8
  br label %133

133:                                              ; preds = %129, %103
  %134 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %135 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %134, i32 0, i32 2
  %136 = load %struct.media_pad*, %struct.media_pad** %135, align 8
  %137 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %138 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %136, i64 %139
  store %struct.media_pad* %140, %struct.media_pad** %10, align 8
  %141 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %142 = call %struct.media_pad* @vsp1_entity_remote_pad(%struct.media_pad* %141)
  store %struct.media_pad* %142, %struct.media_pad** %10, align 8
  br label %31

143:                                              ; preds = %93
  %144 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %145 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %7, align 8
  %146 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %145, i32 0, i32 1
  %147 = icmp ne %struct.vsp1_entity* %144, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* @EPIPE, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %148, %143
  br label %152

152:                                              ; preds = %151, %114, %100, %66, %43, %34
  %153 = call i32 @media_entity_enum_cleanup(%struct.media_entity_enum* %8)
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %152, %21
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @media_entity_enum_init(%struct.media_entity_enum*, i32*) #1

declare dso_local %struct.media_pad* @vsp1_entity_remote_pad(%struct.media_pad*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(i32) #1

declare dso_local %struct.vsp1_entity* @to_vsp1_entity(i32) #1

declare dso_local i32 @media_entity_to_v4l2_subdev(i32) #1

declare dso_local %struct.vsp1_brx* @to_brx(%struct.TYPE_6__*) #1

declare dso_local i64 @media_entity_enum_test_and_set(%struct.media_entity_enum*, i32*) #1

declare dso_local i32 @media_entity_enum_cleanup(%struct.media_entity_enum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
