; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-sdr-cap.c_vivid_sdr_cap_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-sdr-cap.c_vivid_sdr_cap_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, i32, i32, i32, i32 }
%struct.vivid_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FIXP_2PI = common dso_local global i32 0, align 4
@FIXP_N = common dso_local global i32 0, align 4
@M_100000PI = common dso_local global i32 0, align 4
@FIXP_FRAC = common dso_local global i32 0, align 4
@BEEP_FREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vivid_sdr_cap_process(%struct.vivid_dev* %0, %struct.vivid_buffer* %1) #0 {
  %3 = alloca %struct.vivid_dev*, align 8
  %4 = alloca %struct.vivid_buffer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %3, align 8
  store %struct.vivid_buffer* %1, %struct.vivid_buffer** %4, align 8
  %13 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32* @vb2_plane_vaddr(i32* %15, i32 0)
  store i32* %16, i32** %5, align 8
  %17 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i64 @vb2_plane_size(i32* %19, i32 0)
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* @FIXP_2PI, align 4
  %22 = mul nsw i32 %21, 1000
  %23 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %24 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @DIV_ROUND_CLOSEST(i32 %22, i32 %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %9, align 4
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %154, %2
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %157

32:                                               ; preds = %28
  %33 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %34 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FIXP_2PI, align 4
  %37 = call i32 @fixp_cos32_rad(i32 %35, i32 %36)
  %38 = load i32, i32* @FIXP_N, align 4
  %39 = sub nsw i32 31, %38
  %40 = ashr i32 %37, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %43 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %48 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @M_100000PI, align 4
  %53 = call i64 @div_s64(i32 %51, i32 %52)
  %54 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %55 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load i32, i32* @FIXP_2PI, align 4
  %61 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %62 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = srem i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @FIXP_2PI, align 4
  %66 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %67 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = srem i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %71 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %32
  %75 = load i32, i32* @FIXP_2PI, align 4
  %76 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %77 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %32
  %81 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %82 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FIXP_2PI, align 4
  %85 = call i32 @fixp_cos32_rad(i32 %83, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %87 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @FIXP_2PI, align 4
  %90 = call i32 @fixp_sin32_rad(i32 %88, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* @FIXP_N, align 4
  %92 = sub nsw i32 31, %91
  %93 = load i32, i32* %11, align 4
  %94 = ashr i32 %93, %92
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* @FIXP_N, align 4
  %96 = sub nsw i32 31, %95
  %97 = load i32, i32* %12, align 4
  %98 = ashr i32 %97, %96
  store i32 %98, i32* %12, align 4
  %99 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %100 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %152 [
    i32 128, label %102
    i32 129, label %127
  ]

102:                                              ; preds = %80
  %103 = load i32, i32* %11, align 4
  %104 = mul nsw i32 %103, 1275
  %105 = load i32, i32* @FIXP_FRAC, align 4
  %106 = mul nsw i32 %105, 1275
  %107 = add nsw i32 %104, %106
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = mul nsw i32 %108, 1275
  %110 = load i32, i32* @FIXP_FRAC, align 4
  %111 = mul nsw i32 %110, 1275
  %112 = add nsw i32 %109, %111
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @FIXP_FRAC, align 4
  %115 = mul nsw i32 %114, 10
  %116 = call i8* @DIV_ROUND_CLOSEST(i32 %113, i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %5, align 8
  store i32 %117, i32* %118, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @FIXP_FRAC, align 4
  %122 = mul nsw i32 %121, 10
  %123 = call i8* @DIV_ROUND_CLOSEST(i32 %120, i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load i32*, i32** %5, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %5, align 8
  store i32 %124, i32* %125, align 4
  br label %153

127:                                              ; preds = %80
  %128 = load i32, i32* %11, align 4
  %129 = mul nsw i32 %128, 1275
  %130 = load i32, i32* @FIXP_FRAC, align 4
  %131 = mul nsw i32 %130, 5
  %132 = sub nsw i32 %129, %131
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %12, align 4
  %134 = mul nsw i32 %133, 1275
  %135 = load i32, i32* @FIXP_FRAC, align 4
  %136 = mul nsw i32 %135, 5
  %137 = sub nsw i32 %134, %136
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @FIXP_FRAC, align 4
  %140 = mul nsw i32 %139, 10
  %141 = call i8* @DIV_ROUND_CLOSEST(i32 %138, i32 %140)
  %142 = ptrtoint i8* %141 to i32
  %143 = load i32*, i32** %5, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %5, align 8
  store i32 %142, i32* %143, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @FIXP_FRAC, align 4
  %147 = mul nsw i32 %146, 10
  %148 = call i8* @DIV_ROUND_CLOSEST(i32 %145, i32 %147)
  %149 = ptrtoint i8* %148 to i32
  %150 = load i32*, i32** %5, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %5, align 8
  store i32 %149, i32* %150, align 4
  br label %153

152:                                              ; preds = %80
  br label %153

153:                                              ; preds = %152, %127, %102
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %6, align 8
  %156 = add i64 %155, 2
  store i64 %156, i64* %6, align 8
  br label %28

157:                                              ; preds = %28
  ret void
}

declare dso_local i32* @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i64 @vb2_plane_size(i32*, i32) #1

declare dso_local i8* @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @fixp_cos32_rad(i32, i32) #1

declare dso_local i64 @div_s64(i32, i32) #1

declare dso_local i32 @fixp_sin32_rad(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
