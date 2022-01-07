; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_wb_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_wb_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_ctrls = type { i64*, i64**, i64*, i64* }

@ISC_HIS_CFG_MODE_GR = common dso_local global i64 0, align 8
@ISC_HIS_CFG_MODE_GB = common dso_local global i64 0, align 8
@ISC_HIS_CFG_MODE_B = common dso_local global i64 0, align 8
@HIST_MIN_INDEX = common dso_local global i64 0, align 8
@ISC_WB_O_ZERO_VAL = common dso_local global i64 0, align 8
@HIST_ENTRIES = common dso_local global i32 0, align 4
@HIST_MAX_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isc_ctrls*)* @isc_wb_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isc_wb_update(%struct.isc_ctrls* %0) #0 {
  %2 = alloca %struct.isc_ctrls*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [4 x i64], align 16
  %6 = alloca i32, align 4
  %7 = alloca [4 x i64], align 16
  %8 = alloca [4 x i64], align 16
  store %struct.isc_ctrls* %0, %struct.isc_ctrls** %2, align 8
  %9 = load %struct.isc_ctrls*, %struct.isc_ctrls** %2, align 8
  %10 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  store i64* %12, i64** %3, align 8
  store i32 0, i32* %6, align 4
  %13 = load i64*, i64** %3, align 8
  %14 = load i64, i64* @ISC_HIS_CFG_MODE_GR, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i64*, i64** %3, align 8
  %19 = load i64, i64* @ISC_HIS_CFG_MODE_GB, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = add nsw i32 %17, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %139

29:                                               ; preds = %1
  %30 = load i64, i64* @ISC_HIS_CFG_MODE_GR, align 8
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %136, %29
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @ISC_HIS_CFG_MODE_B, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %139

35:                                               ; preds = %31
  %36 = load %struct.isc_ctrls*, %struct.isc_ctrls** %2, align 8
  %37 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %36, i32 0, i32 1
  %38 = load i64**, i64*** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i64*, i64** %38, i64 %39
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @HIST_MIN_INDEX, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %45
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %49, 1
  %51 = shl i64 %50, 3
  %52 = load %struct.isc_ctrls*, %struct.isc_ctrls** %2, align 8
  %53 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 %51, i64* %56, align 8
  %57 = load %struct.isc_ctrls*, %struct.isc_ctrls** %2, align 8
  %58 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %35
  %65 = load i64, i64* @ISC_WB_O_ZERO_VAL, align 8
  %66 = load %struct.isc_ctrls*, %struct.isc_ctrls** %2, align 8
  %67 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  store i64 %65, i64* %70, align 8
  br label %71

71:                                               ; preds = %64, %35
  %72 = load i32, i32* @HIST_ENTRIES, align 4
  %73 = shl i32 %72, 9
  %74 = sext i32 %73 to i64
  %75 = load %struct.isc_ctrls*, %struct.isc_ctrls** %2, align 8
  %76 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %75, i32 0, i32 1
  %77 = load i64**, i64*** %76, align 8
  %78 = load i64, i64* %4, align 8
  %79 = getelementptr inbounds i64*, i64** %77, i64 %78
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @HIST_MAX_INDEX, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.isc_ctrls*, %struct.isc_ctrls** %2, align 8
  %85 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %84, i32 0, i32 1
  %86 = load i64**, i64*** %85, align 8
  %87 = load i64, i64* %4, align 8
  %88 = getelementptr inbounds i64*, i64** %86, i64 %87
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* @HIST_MIN_INDEX, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = sub i64 %83, %92
  %94 = add i64 %93, 1
  %95 = udiv i64 %74, %94
  %96 = load i64, i64* %4, align 8
  %97 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %96
  store i64 %95, i64* %97, align 8
  %98 = load i64*, i64** %3, align 8
  %99 = load i64, i64* %4, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %71
  %104 = load i32, i32* %6, align 4
  %105 = shl i32 %104, 9
  %106 = load i64*, i64** %3, align 8
  %107 = load i64, i64* %4, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @div_u64(i32 %105, i64 %109)
  %111 = load i64, i64* %4, align 8
  %112 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %111
  store i64 %110, i64* %112, align 8
  br label %116

113:                                              ; preds = %71
  %114 = load i64, i64* %4, align 8
  %115 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %114
  store i64 512, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %103
  %117 = load i64, i64* %4, align 8
  %118 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %4, align 8
  %121 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = mul i64 %119, %122
  %124 = load %struct.isc_ctrls*, %struct.isc_ctrls** %2, align 8
  %125 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %124, i32 0, i32 3
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* %4, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  store i64 %123, i64* %128, align 8
  %129 = load %struct.isc_ctrls*, %struct.isc_ctrls** %2, align 8
  %130 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %129, i32 0, i32 3
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* %4, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = lshr i64 %134, 9
  store i64 %135, i64* %133, align 8
  br label %136

136:                                              ; preds = %116
  %137 = load i64, i64* %4, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %4, align 8
  br label %31

139:                                              ; preds = %28, %31
  ret void
}

declare dso_local i64 @div_u64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
