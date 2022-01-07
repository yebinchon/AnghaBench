; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_get_vf_reta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_get_vf_reta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i64*, i64)* @ixgbe_get_vf_reta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_vf_reta(%struct.ixgbe_adapter* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  store i64* %14, i64** %10, align 8
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %19 = call i64 @ixgbe_rss_indir_tbl_entries(%struct.ixgbe_adapter* %18)
  store i64 %19, i64* %12, align 8
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %82

31:                                               ; preds = %3
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %40 [
    i32 128, label %39
    i32 129, label %39
    i32 130, label %39
  ]

39:                                               ; preds = %31, %31, %31
  br label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %82

43:                                               ; preds = %39
  store i64 0, i64* %8, align 8
  br label %44

44:                                               ; preds = %78, %43
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %12, align 8
  %47 = udiv i64 %46, 16
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %44
  %50 = load i64*, i64** %10, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 0, i64* %52, align 8
  store i64 0, i64* %9, align 8
  br label %53

53:                                               ; preds = %74, %49
  %54 = load i64, i64* %9, align 8
  %55 = icmp ult i64 %54, 16
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = load i32*, i32** %11, align 8
  %58 = load i64, i64* %8, align 8
  %59 = mul i64 16, %58
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %59, %60
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 3
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %9, align 8
  %67 = mul i64 2, %66
  %68 = shl i64 %65, %67
  %69 = load i64*, i64** %10, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = or i64 %72, %68
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %56
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %9, align 8
  br label %53

77:                                               ; preds = %53
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8, align 8
  br label %44

81:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %40, %28
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @ixgbe_rss_indir_tbl_entries(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
