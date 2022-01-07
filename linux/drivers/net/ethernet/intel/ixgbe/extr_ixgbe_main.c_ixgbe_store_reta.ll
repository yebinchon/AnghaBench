; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_store_reta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_store_reta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i64*, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ixgbe_mac_82598EB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_store_reta(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %10 = call i64 @ixgbe_rss_indir_tbl_entries(%struct.ixgbe_adapter* %9)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 1
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %5, align 8
  store i64 0, i64* %6, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %8, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i64 17, i64* %7, align 8
  br label %25

24:                                               ; preds = %1
  store i64 1, i64* %7, align 8
  br label %25

25:                                               ; preds = %24, %23
  store i64 0, i64* %3, align 8
  br label %26

26:                                               ; preds = %66, %25
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %69

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load i64*, i64** %8, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = mul i64 %31, %35
  %37 = load i64, i64* %3, align 8
  %38 = and i64 %37, 3
  %39 = mul i64 %38, 8
  %40 = shl i64 %36, %39
  %41 = load i64, i64* %6, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %3, align 8
  %44 = and i64 %43, 3
  %45 = icmp eq i64 %44, 3
  br i1 %45, label %46, label %65

46:                                               ; preds = %30
  %47 = load i64, i64* %3, align 8
  %48 = icmp ult i64 %47, 128
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %51 = load i64, i64* %3, align 8
  %52 = lshr i64 %51, 2
  %53 = call i32 @IXGBE_RETA(i64 %52)
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %50, i32 %53, i64 %54)
  br label %64

56:                                               ; preds = %46
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %58 = load i64, i64* %3, align 8
  %59 = lshr i64 %58, 2
  %60 = sub i64 %59, 32
  %61 = call i32 @IXGBE_ERETA(i64 %60)
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %57, i32 %61, i64 %62)
  br label %64

64:                                               ; preds = %56, %49
  store i64 0, i64* %6, align 8
  br label %65

65:                                               ; preds = %64, %30
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %3, align 8
  br label %26

69:                                               ; preds = %26
  ret void
}

declare dso_local i64 @ixgbe_rss_indir_tbl_entries(%struct.ixgbe_adapter*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_RETA(i64) #1

declare dso_local i32 @IXGBE_ERETA(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
