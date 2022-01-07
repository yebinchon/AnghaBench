; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-core.c_vivid_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-core.c_vivid_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, i64, i32*, i32, %struct.TYPE_2__, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }

@n_devs = common dso_local global i32 0, align 4
@vivid_devs = common dso_local global %struct.vivid_dev** null, align 8
@.str = private unnamed_addr constant [18 x i8] c"unregistering %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unregistering fb%d\0A\00", align 1
@MAX_OUTPUTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vivid_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivid_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.vivid_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %183, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @n_devs, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %186

10:                                               ; preds = %6
  %11 = load %struct.vivid_dev**, %struct.vivid_dev*** @vivid_devs, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.vivid_dev*, %struct.vivid_dev** %11, i64 %13
  %15 = load %struct.vivid_dev*, %struct.vivid_dev** %14, align 8
  store %struct.vivid_dev* %15, %struct.vivid_dev** %3, align 8
  %16 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %17 = icmp ne %struct.vivid_dev* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  br label %183

19:                                               ; preds = %10
  %20 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %21 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %20, i32 0, i32 19
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %26 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %25, i32 0, i32 0
  %27 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %28 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %27, i32 0, i32 18
  %29 = call i32 @video_device_node_name(i32* %28)
  %30 = call i32 @v4l2_info(i32* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %32 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %31, i32 0, i32 18
  %33 = call i32 @video_unregister_device(i32* %32)
  br label %34

34:                                               ; preds = %24, %19
  %35 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %36 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %35, i32 0, i32 17
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %41 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %40, i32 0, i32 0
  %42 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %43 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %42, i32 0, i32 16
  %44 = call i32 @video_device_node_name(i32* %43)
  %45 = call i32 @v4l2_info(i32* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %47 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %46, i32 0, i32 16
  %48 = call i32 @video_unregister_device(i32* %47)
  br label %49

49:                                               ; preds = %39, %34
  %50 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %51 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %50, i32 0, i32 15
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %56 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %55, i32 0, i32 0
  %57 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %58 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %57, i32 0, i32 14
  %59 = call i32 @video_device_node_name(i32* %58)
  %60 = call i32 @v4l2_info(i32* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %62 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %61, i32 0, i32 14
  %63 = call i32 @video_unregister_device(i32* %62)
  br label %64

64:                                               ; preds = %54, %49
  %65 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %66 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %65, i32 0, i32 13
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %71 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %70, i32 0, i32 0
  %72 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %73 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %72, i32 0, i32 12
  %74 = call i32 @video_device_node_name(i32* %73)
  %75 = call i32 @v4l2_info(i32* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %77 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %76, i32 0, i32 12
  %78 = call i32 @video_unregister_device(i32* %77)
  br label %79

79:                                               ; preds = %69, %64
  %80 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %81 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %80, i32 0, i32 11
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %86 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %85, i32 0, i32 0
  %87 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %88 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %87, i32 0, i32 10
  %89 = call i32 @video_device_node_name(i32* %88)
  %90 = call i32 @v4l2_info(i32* %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %92 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %91, i32 0, i32 10
  %93 = call i32 @video_unregister_device(i32* %92)
  br label %94

94:                                               ; preds = %84, %79
  %95 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %96 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %95, i32 0, i32 9
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %101 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %100, i32 0, i32 0
  %102 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %103 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %102, i32 0, i32 8
  %104 = call i32 @video_device_node_name(i32* %103)
  %105 = call i32 @v4l2_info(i32* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %107 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %106, i32 0, i32 8
  %108 = call i32 @video_unregister_device(i32* %107)
  br label %109

109:                                              ; preds = %99, %94
  %110 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %111 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %116 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %115, i32 0, i32 0
  %117 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %118 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %117, i32 0, i32 6
  %119 = call i32 @video_device_node_name(i32* %118)
  %120 = call i32 @v4l2_info(i32* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %122 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %121, i32 0, i32 6
  %123 = call i32 @video_unregister_device(i32* %122)
  br label %124

124:                                              ; preds = %114, %109
  %125 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %126 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %131 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %130, i32 0, i32 0
  %132 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %133 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @v4l2_info(i32* %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  %137 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %138 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %137, i32 0, i32 4
  %139 = call i32 @unregister_framebuffer(%struct.TYPE_2__* %138)
  %140 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %141 = call i32 @vivid_fb_release_buffers(%struct.vivid_dev* %140)
  br label %142

142:                                              ; preds = %129, %124
  %143 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %144 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @cec_unregister_adapter(i32 %145)
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %160, %142
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @MAX_OUTPUTS, align 4
  %150 = icmp ult i32 %148, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %147
  %152 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %153 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @cec_unregister_adapter(i32 %158)
  br label %160

160:                                              ; preds = %151
  %161 = load i32, i32* %5, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %5, align 4
  br label %147

163:                                              ; preds = %147
  %164 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %165 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %170 = call i32 @vivid_cec_bus_free_work(%struct.vivid_dev* %169)
  %171 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %172 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @destroy_workqueue(i64 %173)
  br label %175

175:                                              ; preds = %168, %163
  %176 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %177 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %176, i32 0, i32 0
  %178 = call i32 @v4l2_device_put(i32* %177)
  %179 = load %struct.vivid_dev**, %struct.vivid_dev*** @vivid_devs, align 8
  %180 = load i32, i32* %4, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.vivid_dev*, %struct.vivid_dev** %179, i64 %181
  store %struct.vivid_dev* null, %struct.vivid_dev** %182, align 8
  br label %183

183:                                              ; preds = %175, %18
  %184 = load i32, i32* %4, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %4, align 4
  br label %6

186:                                              ; preds = %6
  ret i32 0
}

declare dso_local i32 @v4l2_info(i32*, i8*, i32) #1

declare dso_local i32 @video_device_node_name(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @unregister_framebuffer(%struct.TYPE_2__*) #1

declare dso_local i32 @vivid_fb_release_buffers(%struct.vivid_dev*) #1

declare dso_local i32 @cec_unregister_adapter(i32) #1

declare dso_local i32 @vivid_cec_bus_free_work(%struct.vivid_dev*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @v4l2_device_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
