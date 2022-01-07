; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_i225.c_igc_read_nvm_srrd_i225.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_i225.c_igc_read_nvm_srrd_i225.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.igc_hw.0*)*, i64 (%struct.igc_hw.1*)* }
%struct.igc_hw.0 = type opaque
%struct.igc_hw.1 = type opaque

@IGC_EERD_EEWR_MAX_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.igc_hw*, i64, i64, i64*)* @igc_read_nvm_srrd_i225 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igc_read_nvm_srrd_i225(%struct.igc_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.igc_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.igc_hw* %0, %struct.igc_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %62, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %12
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %10, align 8
  %19 = sub nsw i64 %17, %18
  %20 = load i64, i64* @IGC_EERD_EEWR_MAX_COUNT, align 8
  %21 = sdiv i64 %19, %20
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i64, i64* @IGC_EERD_EEWR_MAX_COUNT, align 8
  br label %29

25:                                               ; preds = %16
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %10, align 8
  %28 = sub nsw i64 %26, %27
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi i64 [ %24, %23 ], [ %28, %25 ]
  store i64 %30, i64* %11, align 8
  %31 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %32 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64 (%struct.igc_hw.1*)*, i64 (%struct.igc_hw.1*)** %34, align 8
  %36 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %37 = bitcast %struct.igc_hw* %36 to %struct.igc_hw.1*
  %38 = call i64 %35(%struct.igc_hw.1* %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %66

42:                                               ; preds = %29
  %43 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = call i64 @igc_read_nvm_eerd(%struct.igc_hw* %43, i64 %44, i64 %45, i64* %48)
  store i64 %49, i64* %9, align 8
  %50 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %51 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (%struct.igc_hw.0*)*, i32 (%struct.igc_hw.0*)** %53, align 8
  %55 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %56 = bitcast %struct.igc_hw* %55 to %struct.igc_hw.0*
  %57 = call i32 %54(%struct.igc_hw.0* %56)
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %42
  br label %66

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* @IGC_EERD_EEWR_MAX_COUNT, align 8
  %64 = load i64, i64* %10, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %10, align 8
  br label %12

66:                                               ; preds = %60, %41, %12
  %67 = load i64, i64* %9, align 8
  ret i64 %67
}

declare dso_local i64 @igc_read_nvm_eerd(%struct.igc_hw*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
