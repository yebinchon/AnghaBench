; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_rnd_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_rnd_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timespec64 = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, i32, i32, i64)* @mmc_test_rnd_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_rnd_perf(%struct.mmc_test_card* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_test_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.timespec64, align 4
  %19 = alloca %struct.timespec64, align 4
  %20 = alloca %struct.timespec64, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.timespec64, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %15, align 4
  %23 = load i64, i64* %9, align 8
  %24 = lshr i64 %23, 9
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %17, align 4
  %26 = load %struct.mmc_test_card*, %struct.mmc_test_card** %6, align 8
  %27 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = call i32 @mmc_test_capacity(%struct.TYPE_2__* %28)
  %30 = sdiv i32 %29, 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.mmc_test_card*, %struct.mmc_test_card** %6, align 8
  %33 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = udiv i32 %31, %36
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %17, align 4
  %40 = udiv i32 %38, %39
  store i32 %40, i32* %14, align 4
  %41 = call i32 @ktime_get_ts64(%struct.timespec64* %18)
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %95, %4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @UINT_MAX, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %98

46:                                               ; preds = %42
  %47 = call i32 @ktime_get_ts64(%struct.timespec64* %19)
  %48 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %19, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %18, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @timespec64_sub(i32 %49, i32 %51)
  %53 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %22, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = bitcast %struct.timespec64* %20 to i8*
  %55 = bitcast %struct.timespec64* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  %56 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %20, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %57, 10
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %98

60:                                               ; preds = %46
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @mmc_test_rnd_num(i32 %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %16, align 4
  %68 = sub i32 %67, 1
  store i32 %68, i32* %16, align 4
  br label %69

69:                                               ; preds = %66, %60
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.mmc_test_card*, %struct.mmc_test_card** %6, align 8
  %73 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %16, align 4
  %78 = mul i32 %76, %77
  %79 = add i32 %71, %78
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @mmc_test_rnd_num(i32 %81)
  %83 = mul i32 %80, %82
  %84 = add i32 %79, %83
  store i32 %84, i32* %10, align 4
  %85 = load %struct.mmc_test_card*, %struct.mmc_test_card** %6, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @mmc_test_area_io(%struct.mmc_test_card* %85, i64 %86, i32 %87, i32 %88, i32 0, i32 0)
  store i32 %89, i32* %21, align 4
  %90 = load i32, i32* %21, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %69
  %93 = load i32, i32* %21, align 4
  store i32 %93, i32* %5, align 4
  br label %107

94:                                               ; preds = %69
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %11, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %42

98:                                               ; preds = %59, %42
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.mmc_test_card*, %struct.mmc_test_card** %6, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @mmc_test_print_avg_rate(%struct.mmc_test_card* %102, i64 %103, i32 %104, %struct.timespec64* %18, %struct.timespec64* %19)
  br label %106

106:                                              ; preds = %101, %98
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %92
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @mmc_test_capacity(%struct.TYPE_2__*) #1

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i32 @timespec64_sub(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mmc_test_rnd_num(i32) #1

declare dso_local i32 @mmc_test_area_io(%struct.mmc_test_card*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_test_print_avg_rate(%struct.mmc_test_card*, i64, i32, %struct.timespec64*, %struct.timespec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
