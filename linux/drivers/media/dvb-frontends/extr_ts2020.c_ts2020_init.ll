; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ts2020.c_ts2020_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ts2020.c_ts2020_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts2020_reg_val = type { i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.ts2020_priv*, %struct.dtv_frontend_properties }
%struct.ts2020_priv = type { i64, i32, i32, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.dtv_frontend_properties = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@TS2020_M88TS2020 = common dso_local global i64 0, align 8
@ts2020_init.reg_vals = internal constant [11 x %struct.ts2020_reg_val] [%struct.ts2020_reg_val { i32 125, i32 157, i32 0, i32 0 }, %struct.ts2020_reg_val { i32 124, i32 154, i32 0, i32 0 }, %struct.ts2020_reg_val { i32 122, i32 118, i32 0, i32 0 }, %struct.ts2020_reg_val { i32 59, i32 1, i32 0, i32 0 }, %struct.ts2020_reg_val { i32 99, i32 136, i32 0, i32 0 }, %struct.ts2020_reg_val { i32 97, i32 133, i32 0, i32 0 }, %struct.ts2020_reg_val { i32 34, i32 48, i32 0, i32 0 }, %struct.ts2020_reg_val { i32 48, i32 64, i32 0, i32 0 }, %struct.ts2020_reg_val { i32 32, i32 35, i32 0, i32 0 }, %struct.ts2020_reg_val { i32 36, i32 2, i32 0, i32 0 }, %struct.ts2020_reg_val { i32 18, i32 160, i32 0, i32 0 }], align 16
@FE_SCALE_DECIBEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @ts2020_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts2020_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.ts2020_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  store %struct.dtv_frontend_properties* %8, %struct.dtv_frontend_properties** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.ts2020_priv*, %struct.ts2020_priv** %10, align 8
  store %struct.ts2020_priv* %11, %struct.ts2020_priv** %4, align 8
  %12 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %13 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TS2020_M88TS2020, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %1
  %18 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %19 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regmap_write(i32 %20, i32 66, i32 115)
  %22 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %23 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %26 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @regmap_write(i32 %24, i32 5, i32 %27)
  %29 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %30 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regmap_write(i32 %31, i32 32, i32 39)
  %33 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %34 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regmap_write(i32 %35, i32 7, i32 2)
  %37 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %38 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @regmap_write(i32 %39, i32 17, i32 255)
  %41 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %42 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @regmap_write(i32 %43, i32 96, i32 249)
  %45 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %46 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @regmap_write(i32 %47, i32 8, i32 1)
  %49 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %50 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @regmap_write(i32 %51, i32 0, i32 65)
  br label %117

53:                                               ; preds = %1
  %54 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %55 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @regmap_write(i32 %56, i32 0, i32 1)
  %58 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %59 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @regmap_write(i32 %60, i32 0, i32 3)
  %62 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %63 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %75 [
    i32 130, label %65
    i32 129, label %66
    i32 128, label %74
  ]

65:                                               ; preds = %53
  store i32 96, i32* %6, align 4
  br label %76

66:                                               ; preds = %53
  store i32 112, i32* %6, align 4
  %67 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %68 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %71 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @regmap_write(i32 %69, i32 5, i32 %72)
  br label %76

74:                                               ; preds = %53
  store i32 108, i32* %6, align 4
  br label %76

75:                                               ; preds = %53
  store i32 96, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %74, %66, %65
  %77 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %78 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @regmap_write(i32 %79, i32 66, i32 %80)
  %82 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %83 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  store i32 236, i32* %6, align 4
  br label %88

87:                                               ; preds = %76
  store i32 108, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %86
  %89 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %90 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @regmap_write(i32 %91, i32 98, i32 %92)
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %113, %88
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @ARRAY_SIZE(%struct.ts2020_reg_val* getelementptr inbounds ([11 x %struct.ts2020_reg_val], [11 x %struct.ts2020_reg_val]* @ts2020_init.reg_vals, i64 0, i64 0))
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %94
  %99 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %100 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [11 x %struct.ts2020_reg_val], [11 x %struct.ts2020_reg_val]* @ts2020_init.reg_vals, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.ts2020_reg_val, %struct.ts2020_reg_val* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [11 x %struct.ts2020_reg_val], [11 x %struct.ts2020_reg_val]* @ts2020_init.reg_vals, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.ts2020_reg_val, %struct.ts2020_reg_val* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @regmap_write(i32 %101, i32 %106, i32 %111)
  br label %113

113:                                              ; preds = %98
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %94

116:                                              ; preds = %94
  br label %117

117:                                              ; preds = %116, %17
  %118 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %119 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  %121 = load i32, i32* @FE_SCALE_DECIBEL, align 4
  %122 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %123 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i32 %121, i32* %127, align 8
  %128 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %129 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = load %struct.ts2020_priv*, %struct.ts2020_priv** %4, align 8
  %135 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = call i32 @ts2020_stat_work(i32* %136)
  ret i32 0
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ts2020_reg_val*) #1

declare dso_local i32 @ts2020_stat_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
