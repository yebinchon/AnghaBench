; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_lux_to_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_lux_to_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds990x_chip = type { i32, i64, i32, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@APDS_RANGE = common dso_local global i32 0, align 4
@APDS_CALIB_SCALER = common dso_local global i32 0, align 4
@again = common dso_local global i64* null, align 8
@APDS_PARAM_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds990x_chip*, i32)* @apds990x_lux_to_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds990x_lux_to_threshold(%struct.apds990x_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apds990x_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.apds990x_chip* %0, %struct.apds990x_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %136

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @APDS_RANGE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @APDS_RANGE, align 4
  store i32 %17, i32* %3, align 4
  br label %136

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @APDS_CALIB_SCALER, align 4
  %22 = sdiv i32 %21, 4
  %23 = mul nsw i32 %20, %22
  %24 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %25 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sdiv i32 %26, 4
  %28 = sdiv i32 %23, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %30 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64*, i64** @again, align 8
  %34 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %35 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = mul nsw i32 %32, %39
  %41 = load i32, i32* @APDS_PARAM_SCALE, align 4
  %42 = mul nsw i32 %40, %41
  %43 = mul nsw i32 %42, 64
  %44 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %45 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %49 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %47, %51
  %53 = sdiv i32 %43, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sdiv i32 %56, 64
  store i32 %57, i32* %6, align 4
  %58 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %59 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i64*, i64** @again, align 8
  %62 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %63 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = mul nsw i32 %60, %67
  %69 = load i64*, i64** @again, align 8
  %70 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %71 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = sdiv i32 %68, %75
  store i32 %76, i32* %8, align 4
  %77 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %78 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @APDS_PARAM_SCALE, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %83 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %87 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %85, %88
  %90 = icmp sge i32 %81, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %19
  %92 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %93 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %6, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %99 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 %101, %102
  %104 = add nsw i32 %97, %103
  %105 = load i32, i32* @APDS_PARAM_SCALE, align 4
  %106 = sdiv i32 %104, %105
  store i32 %106, i32* %6, align 4
  br label %123

107:                                              ; preds = %19
  %108 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %109 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %6, align 4
  %113 = mul nsw i32 %111, %112
  %114 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %115 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = mul nsw i32 %117, %118
  %120 = add nsw i32 %113, %119
  %121 = load i32, i32* @APDS_PARAM_SCALE, align 4
  %122 = sdiv i32 %120, %121
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %107, %91
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %126 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = icmp sge i32 %124, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %131 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %129, %123
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %16, %11
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
