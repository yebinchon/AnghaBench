; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_edgectrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_edgectrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov772x_priv = type { %struct.TYPE_4__*, %struct.regmap* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.regmap = type { i32 }

@OV772X_MANUAL_EDGE_CTRL = common dso_local global i32 0, align 4
@DSPAUTO = common dso_local global i32 0, align 4
@EDGE_ACTRL = common dso_local global i32 0, align 4
@EDGE_TRSHLD = common dso_local global i32 0, align 4
@OV772X_EDGE_THRESHOLD_MASK = common dso_local global i32 0, align 4
@EDGE_STRNGT = common dso_local global i32 0, align 4
@OV772X_EDGE_STRENGTH_MASK = common dso_local global i32 0, align 4
@EDGE_UPPER = common dso_local global i32 0, align 4
@OV772X_EDGE_UPPER_MASK = common dso_local global i32 0, align 4
@EDGE_LOWER = common dso_local global i32 0, align 4
@OV772X_EDGE_LOWER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov772x_priv*)* @ov772x_edgectrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov772x_edgectrl(%struct.ov772x_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov772x_priv*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  store %struct.ov772x_priv* %0, %struct.ov772x_priv** %3, align 8
  %6 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %6, i32 0, i32 1
  %8 = load %struct.regmap*, %struct.regmap** %7, align 8
  store %struct.regmap* %8, %struct.regmap** %4, align 8
  %9 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %111

14:                                               ; preds = %1
  %15 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @OV772X_MANUAL_EDGE_CTRL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %14
  %25 = load %struct.regmap*, %struct.regmap** %4, align 8
  %26 = load i32, i32* @DSPAUTO, align 4
  %27 = load i32, i32* @EDGE_ACTRL, align 4
  %28 = call i32 @regmap_update_bits(%struct.regmap* %25, i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %111

33:                                               ; preds = %24
  %34 = load %struct.regmap*, %struct.regmap** %4, align 8
  %35 = load i32, i32* @EDGE_TRSHLD, align 4
  %36 = load i32, i32* @OV772X_EDGE_THRESHOLD_MASK, align 4
  %37 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %38 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regmap_update_bits(%struct.regmap* %34, i32 %35, i32 %36, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %111

48:                                               ; preds = %33
  %49 = load %struct.regmap*, %struct.regmap** %4, align 8
  %50 = load i32, i32* @EDGE_STRNGT, align 4
  %51 = load i32, i32* @OV772X_EDGE_STRENGTH_MASK, align 4
  %52 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %53 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @regmap_update_bits(%struct.regmap* %49, i32 %50, i32 %51, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %111

63:                                               ; preds = %48
  br label %110

64:                                               ; preds = %14
  %65 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %66 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %72 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %70, %76
  br i1 %77, label %78, label %109

78:                                               ; preds = %64
  %79 = load %struct.regmap*, %struct.regmap** %4, align 8
  %80 = load i32, i32* @EDGE_UPPER, align 4
  %81 = load i32, i32* @OV772X_EDGE_UPPER_MASK, align 4
  %82 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %83 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @regmap_update_bits(%struct.regmap* %79, i32 %80, i32 %81, i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %111

93:                                               ; preds = %78
  %94 = load %struct.regmap*, %struct.regmap** %4, align 8
  %95 = load i32, i32* @EDGE_LOWER, align 4
  %96 = load i32, i32* @OV772X_EDGE_LOWER_MASK, align 4
  %97 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %98 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @regmap_update_bits(%struct.regmap* %94, i32 %95, i32 %96, i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %93
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %2, align 4
  br label %111

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108, %64
  br label %110

110:                                              ; preds = %109, %63
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %106, %91, %61, %46, %31, %13
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
