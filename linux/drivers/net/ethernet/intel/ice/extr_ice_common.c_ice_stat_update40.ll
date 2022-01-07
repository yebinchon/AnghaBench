; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_stat_update40.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_stat_update40.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_stat_update40(%struct.ice_hw* %0, i32 %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %12 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @rd64(%struct.ice_hw* %12, i32 %13)
  %15 = call i32 @BIT_ULL(i32 40)
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %14, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* %11, align 8
  %23 = load i64*, i64** %9, align 8
  store i64 %22, i64* %23, align 8
  br label %51

24:                                               ; preds = %5
  %25 = load i64, i64* %11, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %25, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i64, i64* %11, align 8
  %31 = load i64*, i64** %9, align 8
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %30, %32
  %34 = load i64*, i64** %10, align 8
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %33
  store i64 %36, i64* %34, align 8
  br label %48

37:                                               ; preds = %24
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @BIT_ULL(i32 40)
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load i64*, i64** %9, align 8
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %41, %43
  %45 = load i64*, i64** %10, align 8
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %44
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %37, %29
  %49 = load i64, i64* %11, align 8
  %50 = load i64*, i64** %9, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %21
  ret void
}

declare dso_local i32 @rd64(%struct.ice_hw*, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
