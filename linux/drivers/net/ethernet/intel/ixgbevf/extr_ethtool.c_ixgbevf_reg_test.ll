; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_ixgbevf_reg_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_ixgbevf_reg_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_reg_test = type { i64, i64, i32, i32, i32 }
%struct.ixgbevf_adapter = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Adapter removed - register test blocked\0A\00", align 1
@reg_test_vf = common dso_local global %struct.ixgbevf_reg_test* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*, i32*)* @ixgbevf_reg_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_reg_test(%struct.ixgbevf_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbevf_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ixgbevf_reg_test*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @IXGBE_REMOVED(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %5, align 8
  store i32 1, i32* %21, align 4
  store i32 1, i32* %3, align 4
  br label %149

22:                                               ; preds = %2
  %23 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** @reg_test_vf, align 8
  store %struct.ixgbevf_reg_test* %23, %struct.ixgbevf_reg_test** %6, align 8
  br label %24

24:                                               ; preds = %142, %22
  %25 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %26 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %145

29:                                               ; preds = %24
  store i64 0, i64* %7, align 8
  br label %30

30:                                               ; preds = %139, %29
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %33 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %142

36:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  %37 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %38 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %134 [
    i32 133, label %40
    i32 132, label %56
    i32 128, label %72
    i32 131, label %85
    i32 129, label %101
    i32 130, label %117
  ]

40:                                               ; preds = %36
  %41 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %44 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = mul nsw i64 %46, 64
  %48 = add nsw i64 %45, %47
  %49 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %50 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %53 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @reg_pattern_test(%struct.ixgbevf_adapter* %41, i32* %42, i64 %48, i32 %51, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %134

56:                                               ; preds = %36
  %57 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %60 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = mul nsw i64 %62, 64
  %64 = add nsw i64 %61, %63
  %65 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %66 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %69 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @reg_set_and_check(%struct.ixgbevf_adapter* %57, i32* %58, i64 %64, i32 %67, i32 %70)
  store i32 %71, i32* %8, align 4
  br label %134

72:                                               ; preds = %36
  %73 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %73, i32 0, i32 0
  %75 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %76 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = mul nsw i64 %78, 64
  %80 = add nsw i64 %77, %79
  %81 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %82 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ixgbe_write_reg(%struct.TYPE_4__* %74, i64 %80, i32 %83)
  br label %134

85:                                               ; preds = %36
  %86 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %89 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = mul nsw i64 %91, 4
  %93 = add nsw i64 %90, %92
  %94 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %95 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %98 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @reg_pattern_test(%struct.ixgbevf_adapter* %86, i32* %87, i64 %93, i32 %96, i32 %99)
  store i32 %100, i32* %8, align 4
  br label %134

101:                                              ; preds = %36
  %102 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %105 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = mul nsw i64 %107, 8
  %109 = add nsw i64 %106, %108
  %110 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %111 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %114 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @reg_pattern_test(%struct.ixgbevf_adapter* %102, i32* %103, i64 %109, i32 %112, i32 %115)
  store i32 %116, i32* %8, align 4
  br label %134

117:                                              ; preds = %36
  %118 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %121 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 4
  %124 = load i64, i64* %7, align 8
  %125 = mul nsw i64 %124, 8
  %126 = add nsw i64 %123, %125
  %127 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %128 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %131 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @reg_pattern_test(%struct.ixgbevf_adapter* %118, i32* %119, i64 %126, i32 %129, i32 %132)
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %36, %117, %101, %85, %72, %56, %40
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 1, i32* %3, align 4
  br label %149

138:                                              ; preds = %134
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %7, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %7, align 8
  br label %30

142:                                              ; preds = %30
  %143 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %6, align 8
  %144 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %143, i32 1
  store %struct.ixgbevf_reg_test* %144, %struct.ixgbevf_reg_test** %6, align 8
  br label %24

145:                                              ; preds = %24
  %146 = load i32*, i32** %5, align 8
  store i32 0, i32* %146, align 4
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %145, %137, %15
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i64 @IXGBE_REMOVED(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @reg_pattern_test(%struct.ixgbevf_adapter*, i32*, i64, i32, i32) #1

declare dso_local i32 @reg_set_and_check(%struct.ixgbevf_adapter*, i32*, i64, i32, i32) #1

declare dso_local i32 @ixgbe_write_reg(%struct.TYPE_4__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
