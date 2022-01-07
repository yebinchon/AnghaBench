; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860-ov9655.c_ov9655_init_post_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860-ov9655.c_ov9655_init_post_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@IMAGE_640 = common dso_local global i64 0, align 8
@tbl_640 = common dso_local global i32** null, align 8
@tbl_1280 = common dso_local global i32** null, align 8
@tbl_length = common dso_local global i32* null, align 8
@tbl_init_post_alt = common dso_local global i32 0, align 4
@c04 = common dso_local global i32 0, align 4
@dat_post1 = common dso_local global i32* null, align 8
@dat_post2 = common dso_local global i32* null, align 8
@dat_post3 = common dso_local global i32* null, align 8
@dat_post4 = common dso_local global i32* null, align 8
@dat_post5 = common dso_local global i32* null, align 8
@dat_post6 = common dso_local global i32* null, align 8
@dat_post7 = common dso_local global i32* null, align 8
@dat_post8 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @ov9655_init_post_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov9655_init_post_alt(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %3, align 8
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @ctrl_out(%struct.gspca_dev* %17, i32 64, i32 5, i32 1, i32 0, i32 0, i32* null)
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @IMAGE_640, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32**, i32*** @tbl_640, align 8
  br label %26

24:                                               ; preds = %1
  %25 = load i32**, i32*** @tbl_1280, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32** [ %23, %22 ], [ %25, %24 ]
  store i32** %27, i32*** %6, align 8
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = load i32*, i32** @tbl_length, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32**, i32*** %6, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ctrl_out(%struct.gspca_dev* %28, i32 64, i32 3, i32 0, i32 512, i32 %31, i32* %34)
  store i64 1, i64* %5, align 8
  br label %36

36:                                               ; preds = %50, %26
  %37 = load i64, i64* %5, align 8
  %38 = icmp ult i64 %37, 7
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = load i32*, i32** @tbl_length, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32**, i32*** %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @ctrl_out(%struct.gspca_dev* %40, i32 64, i32 3, i32 24576, i32 512, i32 %44, i32* %48)
  br label %50

50:                                               ; preds = %39
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %5, align 8
  br label %36

53:                                               ; preds = %36
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = load i32*, i32** @tbl_length, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 7
  %57 = load i32, i32* %56, align 4
  %58 = load i32**, i32*** %6, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 7
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @ctrl_out(%struct.gspca_dev* %54, i32 64, i32 3, i32 0, i32 512, i32 %57, i32* %60)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = load i32, i32* @tbl_init_post_alt, align 4
  %64 = load i32, i32* @tbl_init_post_alt, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = call i64 @fetch_validx(%struct.gspca_dev* %62, i32 %63, i32 %65)
  store i64 %66, i64* %4, align 8
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %68 = load i32, i32* @c04, align 4
  %69 = call i32 @ctrl_in(%struct.gspca_dev* %67, i32 192, i32 2, i32 24576, i32 32798, i32 1, i32 %68)
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = load i32, i32* @tbl_init_post_alt, align 4
  %72 = load i32, i32* @tbl_init_post_alt, align 4
  %73 = call i32 @ARRAY_SIZE(i32 %72)
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @keep_on_fetching_validx(%struct.gspca_dev* %70, i32 %71, i32 %73, i64 %74)
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = load i32, i32* @c04, align 4
  %78 = call i32 @ctrl_in(%struct.gspca_dev* %76, i32 192, i32 2, i32 24576, i32 32798, i32 1, i32 %77)
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %80 = load i32, i32* @tbl_init_post_alt, align 4
  %81 = load i32, i32* @tbl_init_post_alt, align 4
  %82 = call i32 @ARRAY_SIZE(i32 %81)
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @keep_on_fetching_validx(%struct.gspca_dev* %79, i32 %80, i32 %82, i64 %83)
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %86 = load i32, i32* @c04, align 4
  %87 = call i32 @ctrl_in(%struct.gspca_dev* %85, i32 192, i32 2, i32 24576, i32 32798, i32 1, i32 %86)
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %89 = load i32, i32* @tbl_init_post_alt, align 4
  %90 = load i32, i32* @tbl_init_post_alt, align 4
  %91 = call i32 @ARRAY_SIZE(i32 %90)
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @keep_on_fetching_validx(%struct.gspca_dev* %88, i32 %89, i32 %91, i64 %92)
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %95 = load i32, i32* @c04, align 4
  %96 = call i32 @ctrl_in(%struct.gspca_dev* %94, i32 192, i32 2, i32 24576, i32 32798, i32 1, i32 %95)
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %98 = load i32, i32* @tbl_init_post_alt, align 4
  %99 = load i32, i32* @tbl_init_post_alt, align 4
  %100 = call i32 @ARRAY_SIZE(i32 %99)
  %101 = load i64, i64* %4, align 8
  %102 = call i32 @keep_on_fetching_validx(%struct.gspca_dev* %97, i32 %98, i32 %100, i64 %101)
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %104 = load i32*, i32** @dat_post1, align 8
  %105 = call i32 @ctrl_out(%struct.gspca_dev* %103, i32 64, i32 3, i32 24576, i32 512, i32 8, i32* %104)
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %107 = load i32, i32* @tbl_init_post_alt, align 4
  %108 = load i32, i32* @tbl_init_post_alt, align 4
  %109 = call i32 @ARRAY_SIZE(i32 %108)
  %110 = load i64, i64* %4, align 8
  %111 = call i32 @keep_on_fetching_validx(%struct.gspca_dev* %106, i32 %107, i32 %109, i64 %110)
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %113 = load i32, i32* @c04, align 4
  %114 = call i32 @ctrl_in(%struct.gspca_dev* %112, i32 192, i32 2, i32 24576, i32 32798, i32 1, i32 %113)
  %115 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %116 = load i32, i32* @tbl_init_post_alt, align 4
  %117 = load i32, i32* @tbl_init_post_alt, align 4
  %118 = call i32 @ARRAY_SIZE(i32 %117)
  %119 = load i64, i64* %4, align 8
  %120 = call i32 @keep_on_fetching_validx(%struct.gspca_dev* %115, i32 %116, i32 %118, i64 %119)
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %122 = load i32, i32* @c04, align 4
  %123 = call i32 @ctrl_in(%struct.gspca_dev* %121, i32 192, i32 2, i32 24576, i32 32798, i32 1, i32 %122)
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %125 = load i32, i32* @tbl_init_post_alt, align 4
  %126 = load i32, i32* @tbl_init_post_alt, align 4
  %127 = call i32 @ARRAY_SIZE(i32 %126)
  %128 = load i64, i64* %4, align 8
  %129 = call i32 @keep_on_fetching_validx(%struct.gspca_dev* %124, i32 %125, i32 %127, i64 %128)
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %131 = load i32, i32* @c04, align 4
  %132 = call i32 @ctrl_in(%struct.gspca_dev* %130, i32 192, i32 2, i32 24576, i32 32798, i32 1, i32 %131)
  %133 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %134 = load i32, i32* @tbl_init_post_alt, align 4
  %135 = load i32, i32* @tbl_init_post_alt, align 4
  %136 = call i32 @ARRAY_SIZE(i32 %135)
  %137 = load i64, i64* %4, align 8
  %138 = call i32 @keep_on_fetching_validx(%struct.gspca_dev* %133, i32 %134, i32 %136, i64 %137)
  %139 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %140 = load i32, i32* @c04, align 4
  %141 = call i32 @ctrl_in(%struct.gspca_dev* %139, i32 192, i32 2, i32 24576, i32 32798, i32 1, i32 %140)
  %142 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %143 = load i32, i32* @tbl_init_post_alt, align 4
  %144 = load i32, i32* @tbl_init_post_alt, align 4
  %145 = call i32 @ARRAY_SIZE(i32 %144)
  %146 = load i64, i64* %4, align 8
  %147 = call i32 @keep_on_fetching_validx(%struct.gspca_dev* %142, i32 %143, i32 %145, i64 %146)
  %148 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %149 = load i32*, i32** @dat_post1, align 8
  %150 = call i32 @ctrl_out(%struct.gspca_dev* %148, i32 64, i32 3, i32 24576, i32 512, i32 8, i32* %149)
  %151 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %152 = load i32, i32* @tbl_init_post_alt, align 4
  %153 = load i32, i32* @tbl_init_post_alt, align 4
  %154 = call i32 @ARRAY_SIZE(i32 %153)
  %155 = load i64, i64* %4, align 8
  %156 = call i32 @keep_on_fetching_validx(%struct.gspca_dev* %151, i32 %152, i32 %154, i64 %155)
  %157 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %158 = load i32, i32* @c04, align 4
  %159 = call i32 @ctrl_in(%struct.gspca_dev* %157, i32 192, i32 2, i32 24576, i32 32798, i32 1, i32 %158)
  %160 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %161 = load i32, i32* @tbl_init_post_alt, align 4
  %162 = load i32, i32* @tbl_init_post_alt, align 4
  %163 = call i32 @ARRAY_SIZE(i32 %162)
  %164 = load i64, i64* %4, align 8
  %165 = call i32 @keep_on_fetching_validx(%struct.gspca_dev* %160, i32 %161, i32 %163, i64 %164)
  %166 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %167 = load i32, i32* @c04, align 4
  %168 = call i32 @ctrl_in(%struct.gspca_dev* %166, i32 192, i32 2, i32 24576, i32 32798, i32 1, i32 %167)
  %169 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %170 = load i32, i32* @tbl_init_post_alt, align 4
  %171 = load i32, i32* @tbl_init_post_alt, align 4
  %172 = call i32 @ARRAY_SIZE(i32 %171)
  %173 = load i64, i64* %4, align 8
  %174 = call i32 @keep_on_fetching_validx(%struct.gspca_dev* %169, i32 %170, i32 %172, i64 %173)
  %175 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %176 = load i32*, i32** @dat_post1, align 8
  %177 = call i32 @ctrl_out(%struct.gspca_dev* %175, i32 64, i32 3, i32 24576, i32 512, i32 8, i32* %176)
  %178 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %179 = load i32*, i32** @dat_post2, align 8
  %180 = call i32 @ctrl_out(%struct.gspca_dev* %178, i32 64, i32 3, i32 0, i32 512, i32 4, i32* %179)
  %181 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %182 = load i32*, i32** @dat_post3, align 8
  %183 = call i32 @ctrl_out(%struct.gspca_dev* %181, i32 64, i32 3, i32 24576, i32 512, i32 8, i32* %182)
  %184 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %185 = load i32*, i32** @dat_post4, align 8
  %186 = call i32 @ctrl_out(%struct.gspca_dev* %184, i32 64, i32 3, i32 0, i32 512, i32 4, i32* %185)
  %187 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %188 = load i32*, i32** @dat_post5, align 8
  %189 = call i32 @ctrl_out(%struct.gspca_dev* %187, i32 64, i32 3, i32 24576, i32 512, i32 8, i32* %188)
  %190 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %191 = load i32*, i32** @dat_post6, align 8
  %192 = call i32 @ctrl_out(%struct.gspca_dev* %190, i32 64, i32 3, i32 0, i32 512, i32 4, i32* %191)
  %193 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %194 = load i32*, i32** @dat_post7, align 8
  %195 = call i32 @ctrl_out(%struct.gspca_dev* %193, i32 64, i32 3, i32 24576, i32 512, i32 8, i32* %194)
  %196 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %197 = load i32*, i32** @dat_post8, align 8
  %198 = call i32 @ctrl_out(%struct.gspca_dev* %196, i32 64, i32 3, i32 24576, i32 512, i32 8, i32* %197)
  %199 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %200 = call i32 @ov9655_camera_settings(%struct.gspca_dev* %199)
  ret i32 0
}

declare dso_local i32 @ctrl_out(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @fetch_validx(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ctrl_in(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @keep_on_fetching_validx(%struct.gspca_dev*, i32, i32, i64) #1

declare dso_local i32 @ov9655_camera_settings(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
