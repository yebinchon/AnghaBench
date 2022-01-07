; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_reset_adaptive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_reset_adaptive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i32, i32, i32, i64, i32, i64 }

@IFS_MIN = common dso_local global i32 0, align 4
@IFS_MAX = common dso_local global i32 0, align 4
@IFS_STEP = common dso_local global i32 0, align 4
@IFS_RATIO = common dso_local global i32 0, align 4
@AIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Not in Adaptive IFS mode!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_reset_adaptive(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %3 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %4 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %3, i32 0, i32 7
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %7
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @IFS_MIN, align 4
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @IFS_MAX, align 4
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @IFS_STEP, align 4
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @IFS_RATIO, align 4
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %12, %7
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load i32, i32* @AIT, align 4
  %31 = call i32 @ew32(i32 %30, i32 0)
  br label %34

32:                                               ; preds = %1
  %33 = call i32 @e_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
