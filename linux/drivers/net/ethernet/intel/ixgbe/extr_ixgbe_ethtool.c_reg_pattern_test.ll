; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_reg_pattern_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_reg_pattern_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@reg_pattern_test.test_pattern = internal constant [4 x i32] [i32 1515870810, i32 -1515870811, i32 0, i32 -1], align 16
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"pattern test reg %04X failed: got 0x%08X expected 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32*, i32, i32, i32)* @reg_pattern_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_pattern_test(%struct.ixgbe_adapter* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_adapter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ixgbe_removed(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32*, i32** %8, align 8
  store i32 1, i32* %22, align 4
  store i32 1, i32* %6, align 4
  br label %87

23:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %83, %23
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @reg_pattern_test.test_pattern, i64 0, i64 0))
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %86

28:                                               ; preds = %24
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %30 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @ixgbe_read_reg(%struct.TYPE_3__* %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %34 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* @reg_pattern_test.test_pattern, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @ixgbe_write_reg(%struct.TYPE_3__* %34, i32 %35, i32 %41)
  %43 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %44 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @ixgbe_read_reg(%struct.TYPE_3__* %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* @reg_pattern_test.test_pattern, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %47, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %28
  %58 = load i32, i32* @drv, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* @reg_pattern_test.test_pattern, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %66, %67
  %69 = call i32 @e_err(i32 %58, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %73 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %72, i32 0, i32 0
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @ixgbe_write_reg(%struct.TYPE_3__* %73, i32 %74, i32 %75)
  store i32 1, i32* %6, align 4
  br label %87

77:                                               ; preds = %28
  %78 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %79 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %78, i32 0, i32 0
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @ixgbe_write_reg(%struct.TYPE_3__* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %24

86:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %86, %57, %21
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i64 @ixgbe_removed(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ixgbe_read_reg(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ixgbe_write_reg(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @e_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
