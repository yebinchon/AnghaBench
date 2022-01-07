; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-cap.c_vivid_sliced_vbi_cap_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-cap.c_vivid_sliced_vbi_cap_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32*, i64, i32*, i32**, i64*, i64, i32, i64, %struct.vivid_vbi_gen_data }
%struct.vivid_vbi_gen_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vivid_dev*, i32)* @vivid_sliced_vbi_cap_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vivid_sliced_vbi_cap_fill(%struct.vivid_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.vivid_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vivid_vbi_gen_data*, align 8
  %6 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %8 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %7, i32 0, i32 8
  store %struct.vivid_vbi_gen_data* %8, %struct.vivid_vbi_gen_data** %5, align 8
  %9 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %10 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %13 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @V4L2_STD_525_60, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.vivid_vbi_gen_data*, %struct.vivid_vbi_gen_data** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @vivid_vbi_gen_sliced(%struct.vivid_vbi_gen_data* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %106, label %25

25:                                               ; preds = %2
  %26 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %27 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %25
  %31 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %32 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %37 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vivid_vbi_gen_data*, %struct.vivid_vbi_gen_data** %5, align 8
  %42 = getelementptr inbounds %struct.vivid_vbi_gen_data, %struct.vivid_vbi_gen_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 12
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %40, i32* %47, align 4
  %48 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %49 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vivid_vbi_gen_data*, %struct.vivid_vbi_gen_data** %5, align 8
  %54 = getelementptr inbounds %struct.vivid_vbi_gen_data, %struct.vivid_vbi_gen_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 12
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %52, i32* %59, align 4
  br label %66

60:                                               ; preds = %30
  %61 = load %struct.vivid_vbi_gen_data*, %struct.vivid_vbi_gen_data** %5, align 8
  %62 = getelementptr inbounds %struct.vivid_vbi_gen_data, %struct.vivid_vbi_gen_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 12
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %35
  br label %105

67:                                               ; preds = %25
  %68 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %69 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %68, i32 0, i32 6
  %70 = call i32 @tpg_g_video_aspect(i32* %69)
  switch i32 %70, label %96 [
    i32 131, label %71
    i32 129, label %79
    i32 130, label %87
    i32 128, label %95
  ]

71:                                               ; preds = %67
  %72 = load %struct.vivid_vbi_gen_data*, %struct.vivid_vbi_gen_data** %5, align 8
  %73 = getelementptr inbounds %struct.vivid_vbi_gen_data, %struct.vivid_vbi_gen_data* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 12
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 1, i32* %78, align 4
  br label %104

79:                                               ; preds = %67
  %80 = load %struct.vivid_vbi_gen_data*, %struct.vivid_vbi_gen_data** %5, align 8
  %81 = getelementptr inbounds %struct.vivid_vbi_gen_data, %struct.vivid_vbi_gen_data* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 12
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 11, i32* %86, align 4
  br label %104

87:                                               ; preds = %67
  %88 = load %struct.vivid_vbi_gen_data*, %struct.vivid_vbi_gen_data** %5, align 8
  %89 = getelementptr inbounds %struct.vivid_vbi_gen_data, %struct.vivid_vbi_gen_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 12
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 7, i32* %94, align 4
  br label %104

95:                                               ; preds = %67
  br label %96

96:                                               ; preds = %67, %95
  %97 = load %struct.vivid_vbi_gen_data*, %struct.vivid_vbi_gen_data** %5, align 8
  %98 = getelementptr inbounds %struct.vivid_vbi_gen_data, %struct.vivid_vbi_gen_data* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 12
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 8, i32* %103, align 4
  br label %104

104:                                              ; preds = %96, %87, %79, %71
  br label %105

105:                                              ; preds = %104, %66
  br label %200

106:                                              ; preds = %2
  %107 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %108 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %199

111:                                              ; preds = %106
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %199

114:                                              ; preds = %111
  %115 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %116 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %115, i32 0, i32 4
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %150

121:                                              ; preds = %114
  %122 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %123 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %122, i32 0, i32 3
  %124 = load i32**, i32*** %123, align 8
  %125 = getelementptr inbounds i32*, i32** %124, i64 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.vivid_vbi_gen_data*, %struct.vivid_vbi_gen_data** %5, align 8
  %130 = getelementptr inbounds %struct.vivid_vbi_gen_data, %struct.vivid_vbi_gen_data* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 %128, i32* %135, align 4
  %136 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %137 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %136, i32 0, i32 3
  %138 = load i32**, i32*** %137, align 8
  %139 = getelementptr inbounds i32*, i32** %138, i64 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.vivid_vbi_gen_data*, %struct.vivid_vbi_gen_data** %5, align 8
  %144 = getelementptr inbounds %struct.vivid_vbi_gen_data, %struct.vivid_vbi_gen_data* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  store i32 %142, i32* %149, align 4
  br label %156

150:                                              ; preds = %114
  %151 = load %struct.vivid_vbi_gen_data*, %struct.vivid_vbi_gen_data** %5, align 8
  %152 = getelementptr inbounds %struct.vivid_vbi_gen_data, %struct.vivid_vbi_gen_data* %151, i32 0, i32 0
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  store i64 0, i64* %155, align 8
  br label %156

156:                                              ; preds = %150, %121
  %157 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %158 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %157, i32 0, i32 4
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %192

163:                                              ; preds = %156
  %164 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %165 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %164, i32 0, i32 3
  %166 = load i32**, i32*** %165, align 8
  %167 = getelementptr inbounds i32*, i32** %166, i64 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.vivid_vbi_gen_data*, %struct.vivid_vbi_gen_data** %5, align 8
  %172 = getelementptr inbounds %struct.vivid_vbi_gen_data, %struct.vivid_vbi_gen_data* %171, i32 0, i32 0
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  store i32 %170, i32* %177, align 4
  %178 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %179 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %178, i32 0, i32 3
  %180 = load i32**, i32*** %179, align 8
  %181 = getelementptr inbounds i32*, i32** %180, i64 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.vivid_vbi_gen_data*, %struct.vivid_vbi_gen_data** %5, align 8
  %186 = getelementptr inbounds %struct.vivid_vbi_gen_data, %struct.vivid_vbi_gen_data* %185, i32 0, i32 0
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 1
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  store i32 %184, i32* %191, align 4
  br label %198

192:                                              ; preds = %156
  %193 = load %struct.vivid_vbi_gen_data*, %struct.vivid_vbi_gen_data** %5, align 8
  %194 = getelementptr inbounds %struct.vivid_vbi_gen_data, %struct.vivid_vbi_gen_data* %193, i32 0, i32 0
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 1
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 1
  store i64 0, i64* %197, align 8
  br label %198

198:                                              ; preds = %192, %163
  br label %199

199:                                              ; preds = %198, %111, %106
  br label %200

200:                                              ; preds = %199, %105
  ret void
}

declare dso_local i32 @vivid_vbi_gen_sliced(%struct.vivid_vbi_gen_data*, i32, i32) #1

declare dso_local i32 @tpg_g_video_aspect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
