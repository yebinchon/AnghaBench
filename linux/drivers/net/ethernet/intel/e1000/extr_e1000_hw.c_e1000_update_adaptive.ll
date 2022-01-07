; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_update_adaptive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_update_adaptive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@MIN_NUM_XMITS = common dso_local global i32 0, align 4
@AIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Not in Adaptive IFS mode!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_update_adaptive(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %3 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %4 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %3, i32 0, i32 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %82

7:                                                ; preds = %1
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %10, %13
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %7
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MIN_NUM_XMITS, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %19
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 3
  store i32 1, i32* %27, align 4
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %25
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  br label %54

46:                                               ; preds = %35
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %46, %40
  %55 = load i32, i32* @AIT, align 4
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @ew32(i32 %55, i64 %58)
  br label %60

60:                                               ; preds = %54, %25
  br label %61

61:                                               ; preds = %60, %19
  br label %81

62:                                               ; preds = %7
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %64 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %69 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MIN_NUM_XMITS, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %75 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %77 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %76, i32 0, i32 3
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* @AIT, align 4
  %79 = call i32 @ew32(i32 %78, i64 0)
  br label %80

80:                                               ; preds = %73, %67, %62
  br label %81

81:                                               ; preds = %80, %61
  br label %84

82:                                               ; preds = %1
  %83 = call i32 @e_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %81
  ret void
}

declare dso_local i32 @ew32(i32, i64) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
