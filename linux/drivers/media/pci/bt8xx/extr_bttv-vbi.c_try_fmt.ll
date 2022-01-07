; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-vbi.c_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-vbi.c_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_vbi_format = type { i64*, i32*, i64*, i64, i32, i32, i32, i32 }
%struct.bttv_tvnorm = type { i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@VBI_BPL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_GREY = common dso_local global i32 0, align 4
@VBI_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_vbi_format*, %struct.bttv_tvnorm*, i32)* @try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_fmt(%struct.v4l2_vbi_format* %0, %struct.bttv_tvnorm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_vbi_format*, align 8
  %6 = alloca %struct.bttv_tvnorm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_vbi_format* %0, %struct.v4l2_vbi_format** %5, align 8
  store %struct.bttv_tvnorm* %1, %struct.bttv_tvnorm** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %6, align 8
  %16 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 1
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  %23 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %6, align 8
  %24 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %6, align 8
  %29 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %27, %32
  %34 = ashr i32 %33, 1
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %200

41:                                               ; preds = %3
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp sge i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %6, align 8
  %48 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %51 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @VBI_BPL, align 4
  %53 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @V4L2_PIX_FMT_GREY, align 4
  %56 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @VBI_OFFSET, align 4
  %59 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %6, align 8
  %62 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %6, align 8
  %67 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %65, %70
  store i32 %71, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %146, %41
  %73 = load i32, i32* %12, align 4
  %74 = icmp ult i32 %73, 2
  br i1 %74, label %75, label %149

75:                                               ; preds = %72
  %76 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %77 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 0, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %136

85:                                               ; preds = %75
  %86 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %87 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i8* @clamp(i32 %92, i32 %93, i32 %94)
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* %13, align 4
  %97 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %98 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %106 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %104, %111
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %112, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %119 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %117, i32* %123, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %13, align 4
  %127 = sub nsw i32 %125, %126
  %128 = call i8* @clamp(i32 %124, i32 1, i32 %127)
  %129 = ptrtoint i8* %128 to i64
  %130 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %131 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 %129, i64* %135, align 8
  br label %136

136:                                              ; preds = %85, %84
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %136
  %147 = load i32, i32* %12, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %72

149:                                              ; preds = %72
  %150 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %151 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %156 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 1
  %159 = load i64, i64* %158, align 8
  %160 = or i64 %154, %159
  %161 = icmp eq i64 0, %160
  br i1 %161, label %162, label %189

162:                                              ; preds = %149
  %163 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %6, align 8
  %164 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %169 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  store i32 %167, i32* %171, align 4
  %172 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %6, align 8
  %173 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %178 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  store i32 %176, i32* %180, align 4
  %181 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %182 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %181, i32 0, i32 0
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 0
  store i64 1, i64* %184, align 8
  %185 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %186 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %185, i32 0, i32 0
  %187 = load i64*, i64** %186, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 1
  store i64 1, i64* %188, align 8
  br label %189

189:                                              ; preds = %162, %149
  %190 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %191 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %190, i32 0, i32 3
  store i64 0, i64* %191, align 8
  %192 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %193 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %192, i32 0, i32 2
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 0
  store i64 0, i64* %195, align 8
  %196 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %197 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %196, i32 0, i32 2
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 1
  store i64 0, i64* %199, align 8
  store i32 0, i32* %4, align 4
  br label %200

200:                                              ; preds = %189, %38
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
