; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_reg_pattern_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_reg_pattern_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.TYPE_2__*, %struct.e1000_hw }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_hw = type { i32 }

@reg_pattern_test._test = internal constant [4 x i32] [i32 1515870810, i32 -1515870811, i32 0, i32 -1], align 16
@.str = private unnamed_addr constant [58 x i8] c"pattern test reg %04X failed: got 0x%08X expected 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, i32*, i32, i32, i32)* @reg_pattern_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_pattern_test(%struct.igb_adapter* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.igb_adapter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.e1000_hw*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %16 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %15, i32 0, i32 1
  store %struct.e1000_hw* %16, %struct.e1000_hw** %12, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %63, %5
  %18 = load i32, i32* %13, align 4
  %19 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @reg_pattern_test._test, i64 0, i64 0))
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* @reg_pattern_test._test, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @wr32(i32 %22, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @rd32(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* @reg_pattern_test._test, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %34, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %21
  %45 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %46 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* @reg_pattern_test._test, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %56, %57
  %59 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  store i32 1, i32* %6, align 4
  br label %67

62:                                               ; preds = %21
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %17

66:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %44
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
