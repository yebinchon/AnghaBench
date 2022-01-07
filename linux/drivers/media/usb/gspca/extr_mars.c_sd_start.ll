; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mars.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mars.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sd = type { i32, i32, i32, i32, i32, i32, i32 }

@QUALITY = common dso_local global i32 0, align 4
@mi_data = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @jpeg_define(i32 %10, i32 %14, i32 %18, i32 33)
  %20 = load %struct.sd*, %struct.sd** %3, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @QUALITY, align 4
  %24 = call i32 @jpeg_set_qual(i32 %22, i32 %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 1, i32* %29, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = call i32 @reg_w(%struct.gspca_dev* %32, i32 2)
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 13, i32* %37, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 1, i32* %39, align 4
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 8
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, 8
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  store i32 48, i32* %55, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  store i32 2, i32* %57, align 4
  %58 = load %struct.sd*, %struct.sd** %3, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @v4l2_ctrl_g_ctrl(i32 %60)
  %62 = mul nsw i32 %61, 64
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 7
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 8
  store i32 1, i32* %66, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 9
  store i32 82, i32* %68, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 10
  store i32 24, i32* %70, align 4
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %72 = call i32 @reg_w(%struct.gspca_dev* %71, i32 11)
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 35, i32* %74, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 9, i32* %76, align 4
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %78 = call i32 @reg_w(%struct.gspca_dev* %77, i32 2)
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 60, i32* %80, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 50, i32* %82, align 4
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %84 = call i32 @reg_w(%struct.gspca_dev* %83, i32 2)
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 94, i32* %86, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 0, i32* %88, align 4
  %89 = load %struct.sd*, %struct.sd** %3, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @v4l2_ctrl_g_ctrl(i32 %91)
  %93 = shl i32 %92, 3
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.sd*, %struct.sd** %3, align 8
  %97 = getelementptr inbounds %struct.sd, %struct.sd* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @v4l2_ctrl_g_ctrl(i32 %98)
  %100 = ashr i32 %99, 2
  %101 = and i32 %100, 248
  %102 = or i32 %101, 4
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.sd*, %struct.sd** %3, align 8
  %106 = getelementptr inbounds %struct.sd, %struct.sd* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @v4l2_ctrl_g_ctrl(i32 %107)
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  store i32 %108, i32* %110, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 5
  store i32 0, i32* %112, align 4
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %114 = call i32 @reg_w(%struct.gspca_dev* %113, i32 6)
  %115 = load i32*, i32** %4, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 103, i32* %116, align 4
  %117 = load %struct.sd*, %struct.sd** %3, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @v4l2_ctrl_g_ctrl(i32 %119)
  %121 = mul nsw i32 %120, 4
  %122 = add nsw i32 %121, 3
  %123 = load i32*, i32** %4, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 %122, i32* %124, align 4
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  store i32 20, i32* %126, align 4
  %127 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %128 = call i32 @reg_w(%struct.gspca_dev* %127, i32 3)
  %129 = load i32*, i32** %4, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  store i32 105, i32* %130, align 4
  %131 = load i32*, i32** %4, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  store i32 47, i32* %132, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  store i32 40, i32* %134, align 4
  %135 = load i32*, i32** %4, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  store i32 66, i32* %136, align 4
  %137 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %138 = call i32 @reg_w(%struct.gspca_dev* %137, i32 4)
  %139 = load i32*, i32** %4, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 99, i32* %140, align 4
  %141 = load i32*, i32** %4, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 7, i32* %142, align 4
  %143 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %144 = call i32 @reg_w(%struct.gspca_dev* %143, i32 2)
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %159, %1
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp ult i64 %147, 8
  br i1 %148, label %149, label %162

149:                                              ; preds = %145
  %150 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  %153 = load i32*, i32** @mi_data, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @mi_w(%struct.gspca_dev* %150, i32 %152, i32 %157)
  br label %159

159:                                              ; preds = %149
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %145

162:                                              ; preds = %145
  %163 = load i32*, i32** %4, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 0, i32* %164, align 4
  %165 = load i32*, i32** %4, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  store i32 77, i32* %166, align 4
  %167 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %168 = call i32 @reg_w(%struct.gspca_dev* %167, i32 2)
  %169 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %170 = load %struct.sd*, %struct.sd** %3, align 8
  %171 = getelementptr inbounds %struct.sd, %struct.sd* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @v4l2_ctrl_g_ctrl(i32 %172)
  %174 = load %struct.sd*, %struct.sd** %3, align 8
  %175 = getelementptr inbounds %struct.sd, %struct.sd* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @v4l2_ctrl_g_ctrl(i32 %176)
  %178 = call i32 @setilluminators(%struct.gspca_dev* %169, i32 %173, i32 %177)
  %179 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %180 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  ret i32 %181
}

declare dso_local i32 @jpeg_define(i32, i32, i32, i32) #1

declare dso_local i32 @jpeg_set_qual(i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @mi_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @setilluminators(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
