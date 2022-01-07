; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_area_io_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_area_io_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.mmc_test_area }
%struct.mmc_test_area = type { i64, i64, i32, i32, i32 }
%struct.timespec64 = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, i64, i32, i32, i32, i32, i32, i32, i32)* @mmc_test_area_io_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_area_io_seq(%struct.mmc_test_card* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.mmc_test_card*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.timespec64, align 4
  %21 = alloca %struct.timespec64, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.mmc_test_area*, align 8
  %25 = alloca %struct.mmc_test_area*, align 8
  %26 = alloca i64, align 8
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %27 = load %struct.mmc_test_card*, %struct.mmc_test_card** %11, align 8
  %28 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %27, i32 0, i32 0
  store %struct.mmc_test_area* %28, %struct.mmc_test_area** %24, align 8
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %9
  %32 = load %struct.mmc_test_card*, %struct.mmc_test_card** %11, align 8
  %33 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %32, i32 0, i32 0
  store %struct.mmc_test_area* %33, %struct.mmc_test_area** %25, align 8
  %34 = load %struct.mmc_test_area*, %struct.mmc_test_area** %25, align 8
  %35 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.mmc_test_area*, %struct.mmc_test_area** %25, align 8
  %41 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = mul i64 %42, %43
  store i64 %44, i64* %26, align 8
  br label %53

45:                                               ; preds = %31
  %46 = load %struct.mmc_test_area*, %struct.mmc_test_area** %25, align 8
  %47 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mmc_test_area*, %struct.mmc_test_area** %25, align 8
  %50 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = mul i64 %48, %51
  store i64 %52, i64* %26, align 8
  br label %53

53:                                               ; preds = %45, %39
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %26, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* %26, align 8
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %57, %53
  br label %60

60:                                               ; preds = %59, %9
  %61 = load %struct.mmc_test_card*, %struct.mmc_test_card** %11, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %19, align 4
  %65 = call i32 @mmc_test_area_map(%struct.mmc_test_card* %61, i64 %62, i32 %63, i32 %64)
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %22, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %22, align 4
  store i32 %69, i32* %10, align 4
  br label %137

70:                                               ; preds = %60
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 @ktime_get_ts64(%struct.timespec64* %20)
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i32, i32* %18, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load %struct.mmc_test_card*, %struct.mmc_test_card** %11, align 8
  %80 = load %struct.mmc_test_area*, %struct.mmc_test_area** %24, align 8
  %81 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.mmc_test_area*, %struct.mmc_test_area** %24, align 8
  %84 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.mmc_test_area*, %struct.mmc_test_area** %24, align 8
  %88 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @mmc_test_nonblock_transfer(%struct.mmc_test_card* %79, i32 %82, i32 %85, i32 %86, i32 %89, i32 512, i32 %90, i32 %91)
  store i32 %92, i32* %22, align 4
  br label %118

93:                                               ; preds = %75
  store i32 0, i32* %23, align 4
  br label %94

94:                                               ; preds = %114, %93
  %95 = load i32, i32* %23, align 4
  %96 = load i32, i32* %17, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* %22, align 4
  %100 = icmp eq i32 %99, 0
  br label %101

101:                                              ; preds = %98, %94
  %102 = phi i1 [ false, %94 ], [ %100, %98 ]
  br i1 %102, label %103, label %117

103:                                              ; preds = %101
  %104 = load %struct.mmc_test_card*, %struct.mmc_test_card** %11, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @mmc_test_area_transfer(%struct.mmc_test_card* %104, i32 %105, i32 %106)
  store i32 %107, i32* %22, align 4
  %108 = load i64, i64* %12, align 8
  %109 = lshr i64 %108, 9
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = add i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %23, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %23, align 4
  br label %94

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117, %78
  %119 = load i32, i32* %22, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* %22, align 4
  store i32 %122, i32* %10, align 4
  br label %137

123:                                              ; preds = %118
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i32 @ktime_get_ts64(%struct.timespec64* %21)
  br label %128

128:                                              ; preds = %126, %123
  %129 = load i32, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load %struct.mmc_test_card*, %struct.mmc_test_card** %11, align 8
  %133 = load i64, i64* %12, align 8
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @mmc_test_print_avg_rate(%struct.mmc_test_card* %132, i64 %133, i32 %134, %struct.timespec64* %20, %struct.timespec64* %21)
  br label %136

136:                                              ; preds = %131, %128
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %136, %121, %68
  %138 = load i32, i32* %10, align 4
  ret i32 %138
}

declare dso_local i32 @mmc_test_area_map(%struct.mmc_test_card*, i64, i32, i32) #1

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i32 @mmc_test_nonblock_transfer(%struct.mmc_test_card*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_test_area_transfer(%struct.mmc_test_card*, i32, i32) #1

declare dso_local i32 @mmc_test_print_avg_rate(%struct.mmc_test_card*, i64, i32, %struct.timespec64*, %struct.timespec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
