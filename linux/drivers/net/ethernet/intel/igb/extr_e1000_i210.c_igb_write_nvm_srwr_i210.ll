; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_i210.c_igb_write_nvm_srwr_i210.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_i210.c_igb_write_nvm_srwr_i210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_EERD_EEWR_MAX_COUNT = common dso_local global i64 0, align 8
@E1000_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64, i64, i64*)* @igb_write_nvm_srwr_i210 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_write_nvm_srwr_i210(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %63, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %67

16:                                               ; preds = %12
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %10, align 8
  %19 = sub nsw i64 %17, %18
  %20 = load i64, i64* @E1000_EERD_EEWR_MAX_COUNT, align 8
  %21 = sdiv i64 %19, %20
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i64, i64* @E1000_EERD_EEWR_MAX_COUNT, align 8
  br label %29

25:                                               ; preds = %16
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %10, align 8
  %28 = sub nsw i64 %26, %27
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi i64 [ %24, %23 ], [ %28, %25 ]
  store i64 %30, i64* %11, align 8
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %34, align 8
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %37 = bitcast %struct.e1000_hw* %36 to %struct.e1000_hw.1*
  %38 = call i32 %35(%struct.e1000_hw.1* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %29
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = call i64 @igb_write_nvm_srwr(%struct.e1000_hw* %41, i64 %42, i64 %43, i64* %46)
  store i64 %47, i64* %9, align 8
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %51, align 8
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %54 = bitcast %struct.e1000_hw* %53 to %struct.e1000_hw.0*
  %55 = call i32 %52(%struct.e1000_hw.0* %54)
  br label %58

56:                                               ; preds = %29
  %57 = load i64, i64* @E1000_ERR_SWFW_SYNC, align 8
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %56, %40
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %67

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* @E1000_EERD_EEWR_MAX_COUNT, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %10, align 8
  br label %12

67:                                               ; preds = %61, %12
  %68 = load i64, i64* %9, align 8
  ret i64 %68
}

declare dso_local i64 @igb_write_nvm_srwr(%struct.e1000_hw*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
