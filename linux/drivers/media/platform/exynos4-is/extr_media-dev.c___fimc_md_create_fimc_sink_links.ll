; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c___fimc_md_create_fimc_sink_links.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c___fimc_md_create_fimc_sink_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_md = type { i32, %struct.TYPE_12__**, %struct.TYPE_10__** }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.media_entity }
%struct.media_entity = type { i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.media_entity }
%struct.TYPE_7__ = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.fimc_source_info = type { i64 }

@FIMC_BUS_TYPE_ISP_WRITEBACK = common dso_local global i64 0, align 8
@FIMC_MAX_DEVS = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@FIMC_SD_PAD_SINK_CAM = common dso_local global i32 0, align 4
@link_setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"created link [%s] %c> [%s]\0A\00", align 1
@FIMC_LITE_MAX_DEVS = common dso_local global i32 0, align 4
@FLITE_SD_PAD_SINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"created link [%s] -> [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_md*, %struct.media_entity*, %struct.v4l2_subdev*, i32, i32)* @__fimc_md_create_fimc_sink_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fimc_md_create_fimc_sink_links(%struct.fimc_md* %0, %struct.media_entity* %1, %struct.v4l2_subdev* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fimc_md*, align 8
  %8 = alloca %struct.media_entity*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fimc_source_info*, align 8
  %13 = alloca %struct.media_entity*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.fimc_md* %0, %struct.fimc_md** %7, align 8
  store %struct.media_entity* %1, %struct.media_entity** %8, align 8
  store %struct.v4l2_subdev* %2, %struct.v4l2_subdev** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.fimc_source_info* null, %struct.fimc_source_info** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %18 = icmp ne %struct.v4l2_subdev* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %21 = call %struct.fimc_source_info* @v4l2_get_subdev_hostdata(%struct.v4l2_subdev* %20)
  store %struct.fimc_source_info* %21, %struct.fimc_source_info** %12, align 8
  %22 = load %struct.fimc_source_info*, %struct.fimc_source_info** %12, align 8
  %23 = icmp ne %struct.fimc_source_info* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.fimc_source_info*, %struct.fimc_source_info** %12, align 8
  %26 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FIMC_BUS_TYPE_ISP_WRITEBACK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %16, align 4
  br label %31

31:                                               ; preds = %30, %24, %19
  br label %32

32:                                               ; preds = %31, %5
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %130, %32
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @FIMC_MAX_DEVS, align 4
  %39 = icmp slt i32 %37, %38
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i1 [ false, %33 ], [ %39, %36 ]
  br i1 %41, label %42, label %133

42:                                               ; preds = %40
  %43 = load %struct.fimc_md*, %struct.fimc_md** %7, align 8
  %44 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %43, i32 0, i32 2
  %45 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %44, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %45, i64 %47
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = icmp ne %struct.TYPE_10__* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %130

52:                                               ; preds = %42
  %53 = load %struct.fimc_md*, %struct.fimc_md** %7, align 8
  %54 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %53, i32 0, i32 2
  %55 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %55, i64 %57
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %52
  br label %130

66:                                               ; preds = %52
  %67 = load i32, i32* %15, align 4
  %68 = shl i32 1, %67
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  br label %75

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  store i32 %76, i32* %14, align 4
  %77 = load %struct.fimc_md*, %struct.fimc_md** %7, align 8
  %78 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %77, i32 0, i32 2
  %79 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %79, i64 %81
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store %struct.media_entity* %86, %struct.media_entity** %13, align 8
  %87 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.media_entity*, %struct.media_entity** %13, align 8
  %90 = load i32, i32* @FIMC_SD_PAD_SINK_CAM, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @media_create_pad_link(%struct.media_entity* %87, i32 %88, %struct.media_entity* %89, i32 %90, i32 %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %75
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %6, align 4
  br label %199

97:                                               ; preds = %75
  %98 = load %struct.media_entity*, %struct.media_entity** %13, align 8
  %99 = load i32, i32* @link_setup, align 4
  %100 = load %struct.media_entity*, %struct.media_entity** %13, align 8
  %101 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %105 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @media_entity_call(%struct.media_entity* %98, i32 %99, i32* %103, i32* %109, i32 %110)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %97
  br label %133

115:                                              ; preds = %97
  %116 = load %struct.fimc_md*, %struct.fimc_md** %7, align 8
  %117 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %116, i32 0, i32 0
  %118 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %119 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 61, i32 45
  %125 = trunc i32 %124 to i8
  %126 = load %struct.media_entity*, %struct.media_entity** %13, align 8
  %127 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32*, i8*, i32, i8, ...) @v4l2_info(i32* %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %120, i8 signext %125, i32 %128)
  br label %130

130:                                              ; preds = %115, %65, %51
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  br label %33

133:                                              ; preds = %114, %40
  store i32 0, i32* %15, align 4
  br label %134

134:                                              ; preds = %195, %133
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* @FIMC_LITE_MAX_DEVS, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %198

138:                                              ; preds = %134
  %139 = load %struct.fimc_md*, %struct.fimc_md** %7, align 8
  %140 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %139, i32 0, i32 1
  %141 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %141, i64 %143
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = icmp ne %struct.TYPE_12__* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %138
  br label %195

148:                                              ; preds = %138
  %149 = load %struct.fimc_md*, %struct.fimc_md** %7, align 8
  %150 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %149, i32 0, i32 1
  %151 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %150, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %151, i64 %153
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  store %struct.media_entity* %157, %struct.media_entity** %13, align 8
  %158 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.media_entity*, %struct.media_entity** %13, align 8
  %161 = load i32, i32* @FLITE_SD_PAD_SINK, align 4
  %162 = call i32 @media_create_pad_link(%struct.media_entity* %158, i32 %159, %struct.media_entity* %160, i32 %161, i32 0)
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* %16, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %148
  %166 = load i32, i32* %16, align 4
  store i32 %166, i32* %6, align 4
  br label %199

167:                                              ; preds = %148
  %168 = load %struct.media_entity*, %struct.media_entity** %13, align 8
  %169 = load i32, i32* @link_setup, align 4
  %170 = load %struct.media_entity*, %struct.media_entity** %13, align 8
  %171 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %175 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = call i32 @media_entity_call(%struct.media_entity* %168, i32 %169, i32* %173, i32* %179, i32 0)
  store i32 %180, i32* %16, align 4
  %181 = load i32, i32* %16, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %167
  br label %198

184:                                              ; preds = %167
  %185 = load %struct.fimc_md*, %struct.fimc_md** %7, align 8
  %186 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %185, i32 0, i32 0
  %187 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %188 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.media_entity*, %struct.media_entity** %13, align 8
  %191 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = trunc i32 %192 to i8
  %194 = call i32 (i32*, i8*, i32, i8, ...) @v4l2_info(i32* %186, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %189, i8 signext %193)
  br label %195

195:                                              ; preds = %184, %147
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  br label %134

198:                                              ; preds = %183, %134
  store i32 0, i32* %6, align 4
  br label %199

199:                                              ; preds = %198, %165, %95
  %200 = load i32, i32* %6, align 4
  ret i32 %200
}

declare dso_local %struct.fimc_source_info* @v4l2_get_subdev_hostdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @media_create_pad_link(%struct.media_entity*, i32, %struct.media_entity*, i32, i32) #1

declare dso_local i32 @media_entity_call(%struct.media_entity*, i32, i32*, i32*, i32) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
