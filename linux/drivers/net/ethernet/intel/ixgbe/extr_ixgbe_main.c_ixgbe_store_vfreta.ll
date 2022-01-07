; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_store_vfreta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_store_vfreta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i64*, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_store_vfreta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_store_vfreta(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %9 = call i64 @ixgbe_rss_indir_tbl_entries(%struct.ixgbe_adapter* %8)
  store i64 %9, i64* %4, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 2
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %51, %1
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %12
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = and i64 %26, 3
  %28 = mul i64 %27, 8
  %29 = shl i64 %25, %28
  %30 = load i64, i64* %6, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %3, align 8
  %33 = and i64 %32, 3
  %34 = icmp ne i64 %33, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %16
  br label %51

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %7, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %43 = load i64, i64* %3, align 8
  %44 = lshr i64 %43, 2
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @VMDQ_P(i32 %45)
  %47 = call i32 @IXGBE_PFVFRETA(i64 %44, i32 %46)
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %42, i32 %47, i64 %48)
  br label %37

50:                                               ; preds = %37
  store i64 0, i64* %6, align 8
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %3, align 8
  br label %12

54:                                               ; preds = %12
  ret void
}

declare dso_local i64 @ixgbe_rss_indir_tbl_entries(%struct.ixgbe_adapter*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_PFVFRETA(i64, i32) #1

declare dso_local i32 @VMDQ_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
