; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_update_quality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_update_quality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i64, i32, i32, i32*, i32*, i64 }

@TPG_QUAL_NOISE = common dso_local global i32 0, align 4
@TPG_QUAL_COLOR = common dso_local global i32 0, align 4
@TPG_QUAL_GRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vivid_update_quality(%struct.vivid_dev* %0) #0 {
  %2 = alloca %struct.vivid_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %2, align 8
  %4 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %5 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %10 = call i64 @vivid_is_svid_cap(%struct.vivid_dev* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %14 = call i64 @vivid_is_hdmi_cap(%struct.vivid_dev* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12, %8
  %17 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %18 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %17, i32 0, i32 2
  %19 = load i32, i32* @TPG_QUAL_NOISE, align 4
  %20 = call i32 @tpg_s_quality(i32* %18, i32 %19, i32 0)
  br label %105

21:                                               ; preds = %12, %1
  %22 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %23 = call i64 @vivid_is_hdmi_cap(%struct.vivid_dev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %27 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %30 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @VIVID_INVALID_SIGNAL(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %38 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %37, i32 0, i32 2
  %39 = load i32, i32* @TPG_QUAL_NOISE, align 4
  %40 = call i32 @tpg_s_quality(i32* %38, i32 %39, i32 0)
  br label %105

41:                                               ; preds = %25, %21
  %42 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %43 = call i64 @vivid_is_sdtv_cap(%struct.vivid_dev* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %47 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %50 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @VIVID_INVALID_SIGNAL(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %58 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %57, i32 0, i32 2
  %59 = load i32, i32* @TPG_QUAL_NOISE, align 4
  %60 = call i32 @tpg_s_quality(i32* %58, i32 %59, i32 0)
  br label %105

61:                                               ; preds = %45, %41
  %62 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %63 = call i32 @vivid_is_tv_cap(%struct.vivid_dev* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %67 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %66, i32 0, i32 2
  %68 = load i32, i32* @TPG_QUAL_COLOR, align 4
  %69 = call i32 @tpg_s_quality(i32* %67, i32 %68, i32 0)
  br label %105

70:                                               ; preds = %61
  %71 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %72 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 676
  %75 = srem i32 %74, 96
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp ugt i32 %76, 32
  br i1 %77, label %78, label %89

78:                                               ; preds = %70
  %79 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %80 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %79, i32 0, i32 2
  %81 = load i32, i32* @TPG_QUAL_NOISE, align 4
  %82 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %83 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = xor i32 %84, 85
  %86 = call i32 @next_pseudo_random32(i32 %85)
  %87 = and i32 %86, 63
  %88 = call i32 @tpg_s_quality(i32* %80, i32 %81, i32 %87)
  br label %105

89:                                               ; preds = %70
  %90 = load i32, i32* %3, align 4
  %91 = icmp ult i32 %90, 12
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %3, align 4
  %94 = icmp ugt i32 %93, 20
  br i1 %94, label %95, label %100

95:                                               ; preds = %92, %89
  %96 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %97 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %96, i32 0, i32 2
  %98 = load i32, i32* @TPG_QUAL_GRAY, align 4
  %99 = call i32 @tpg_s_quality(i32* %97, i32 %98, i32 0)
  br label %105

100:                                              ; preds = %92
  %101 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %102 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %101, i32 0, i32 2
  %103 = load i32, i32* @TPG_QUAL_COLOR, align 4
  %104 = call i32 @tpg_s_quality(i32* %102, i32 %103, i32 0)
  br label %105

105:                                              ; preds = %16, %36, %56, %65, %78, %100, %95
  ret void
}

declare dso_local i64 @vivid_is_svid_cap(%struct.vivid_dev*) #1

declare dso_local i64 @vivid_is_hdmi_cap(%struct.vivid_dev*) #1

declare dso_local i32 @tpg_s_quality(i32*, i32, i32) #1

declare dso_local i64 @VIVID_INVALID_SIGNAL(i32) #1

declare dso_local i64 @vivid_is_sdtv_cap(%struct.vivid_dev*) #1

declare dso_local i32 @vivid_is_tv_cap(%struct.vivid_dev*) #1

declare dso_local i32 @next_pseudo_random32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
