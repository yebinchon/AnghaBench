; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_config_bclamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_config_bclamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isif_black_clamp = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@CLDCOFST = common dso_local global i32 0, align 4
@ISIF_BC_MODE_COLOR_SHIFT = common dso_local global i32 0, align 4
@ISIF_HORZ_BC_MODE_SHIFT = common dso_local global i32 0, align 4
@CLAMPCFG = common dso_local global i32 0, align 4
@ISIF_HORZ_BC_DISABLE = common dso_local global i32 0, align 4
@ISIF_HORZ_BC_WIN_SEL_SHIFT = common dso_local global i32 0, align 4
@ISIF_HORZ_BC_PIX_LIMIT_SHIFT = common dso_local global i32 0, align 4
@ISIF_HORZ_BC_WIN_H_SIZE_SHIFT = common dso_local global i32 0, align 4
@ISIF_HORZ_BC_WIN_V_SIZE_SHIFT = common dso_local global i32 0, align 4
@CLHWIN0 = common dso_local global i32 0, align 4
@CLHWIN1 = common dso_local global i32 0, align 4
@CLHWIN2 = common dso_local global i32 0, align 4
@ISIF_VERT_BC_RST_VAL_SEL_SHIFT = common dso_local global i32 0, align 4
@ISIF_VERT_BC_LINE_AVE_COEF_SHIFT = common dso_local global i32 0, align 4
@CLVWIN0 = common dso_local global i32 0, align 4
@CLVWIN1 = common dso_local global i32 0, align 4
@CLVWIN2 = common dso_local global i32 0, align 4
@CLVWIN3 = common dso_local global i32 0, align 4
@CLSV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isif_black_clamp*)* @isif_config_bclamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isif_config_bclamp(%struct.isif_black_clamp* %0) #0 {
  %2 = alloca %struct.isif_black_clamp*, align 8
  %3 = alloca i32, align 4
  store %struct.isif_black_clamp* %0, %struct.isif_black_clamp** %2, align 8
  %4 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %5 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @CLDCOFST, align 4
  %8 = call i32 @regw(i32 %6, i32 %7)
  %9 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %10 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %135

13:                                               ; preds = %1
  %14 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %15 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ISIF_BC_MODE_COLOR_SHIFT, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, 1
  %21 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %22 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ISIF_HORZ_BC_MODE_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %20, %26
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @CLAMPCFG, align 4
  %30 = call i32 @regw(i32 %28, i32 %29)
  %31 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %32 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ISIF_HORZ_BC_DISABLE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %93

37:                                               ; preds = %13
  %38 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %39 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %43 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* @ISIF_HORZ_BC_WIN_SEL_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %41, %51
  %53 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %54 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* @ISIF_HORZ_BC_PIX_LIMIT_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = or i32 %52, %62
  %64 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %65 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ISIF_HORZ_BC_WIN_H_SIZE_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = or i32 %63, %69
  %71 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %72 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ISIF_HORZ_BC_WIN_V_SIZE_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = or i32 %70, %76
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @CLHWIN0, align 4
  %80 = call i32 @regw(i32 %78, i32 %79)
  %81 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %82 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @CLHWIN1, align 4
  %86 = call i32 @regw(i32 %84, i32 %85)
  %87 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %88 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CLHWIN2, align 4
  %92 = call i32 @regw(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %37, %13
  %94 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %95 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ISIF_VERT_BC_RST_VAL_SEL_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %101 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ISIF_VERT_BC_LINE_AVE_COEF_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = or i32 %99, %105
  %107 = load i32, i32* %3, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @CLVWIN0, align 4
  %111 = call i32 @regw(i32 %109, i32 %110)
  %112 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %113 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CLVWIN1, align 4
  %117 = call i32 @regw(i32 %115, i32 %116)
  %118 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %119 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CLVWIN2, align 4
  %123 = call i32 @regw(i32 %121, i32 %122)
  %124 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %125 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @CLVWIN3, align 4
  %129 = call i32 @regw(i32 %127, i32 %128)
  %130 = load %struct.isif_black_clamp*, %struct.isif_black_clamp** %2, align 8
  %131 = getelementptr inbounds %struct.isif_black_clamp, %struct.isif_black_clamp* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CLSV, align 4
  %134 = call i32 @regw(i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %93, %1
  ret void
}

declare dso_local i32 @regw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
