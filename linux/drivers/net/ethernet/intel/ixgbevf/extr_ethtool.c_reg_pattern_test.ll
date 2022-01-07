; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_reg_pattern_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_reg_pattern_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@register_test_patterns = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"pattern test reg %04X failed: got 0x%08X expected 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*, i32*, i32, i64, i64)* @reg_pattern_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_pattern_test(%struct.ixgbevf_adapter* %0, i32* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbevf_adapter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @IXGBE_REMOVED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32*, i32** %8, align 8
  store i32 1, i32* %22, align 4
  store i32 1, i32* %6, align 4
  br label %89

23:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %24

24:                                               ; preds = %85, %23
  %25 = load i64, i64* %12, align 8
  %26 = load i64*, i64** @register_test_patterns, align 8
  %27 = call i64 @ARRAY_SIZE(i64* %26)
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %88

29:                                               ; preds = %24
  %30 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %31 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @ixgbevf_read_reg(%struct.TYPE_4__* %31, i32 %32)
  store i64 %33, i64* %14, align 8
  %34 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %35 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %9, align 4
  %37 = load i64*, i64** @register_test_patterns, align 8
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = and i64 %40, %41
  %43 = call i32 @ixgbe_write_reg(%struct.TYPE_4__* %35, i32 %36, i64 %42)
  %44 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %45 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @ixgbevf_read_reg(%struct.TYPE_4__* %45, i32 %46)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64*, i64** @register_test_patterns, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = and i64 %52, %53
  %55 = load i64, i64* %10, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %48, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %29
  %59 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %60 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %59, i32 0, i32 0
  %61 = load i32, i32* %9, align 4
  %62 = load i64, i64* %13, align 8
  %63 = load i64*, i64** @register_test_patterns, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = and i64 %66, %67
  %69 = load i64, i64* %10, align 8
  %70 = and i64 %68, %69
  %71 = call i32 @hw_dbg(%struct.TYPE_4__* %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %62, i64 %70)
  %72 = load i32, i32* %9, align 4
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  %74 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %75 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %74, i32 0, i32 0
  %76 = load i32, i32* %9, align 4
  %77 = load i64, i64* %14, align 8
  %78 = call i32 @ixgbe_write_reg(%struct.TYPE_4__* %75, i32 %76, i64 %77)
  store i32 1, i32* %6, align 4
  br label %89

79:                                               ; preds = %29
  %80 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %81 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %9, align 4
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @ixgbe_write_reg(%struct.TYPE_4__* %81, i32 %82, i64 %83)
  br label %85

85:                                               ; preds = %79
  %86 = load i64, i64* %12, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %12, align 8
  br label %24

88:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %58, %21
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i64 @IXGBE_REMOVED(i32) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @ixgbevf_read_reg(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ixgbe_write_reg(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i32 @hw_dbg(%struct.TYPE_4__*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
