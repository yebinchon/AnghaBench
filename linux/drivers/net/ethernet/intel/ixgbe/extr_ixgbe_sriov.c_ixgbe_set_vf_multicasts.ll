; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_set_vf_multicasts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_set_vf_multicasts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw, %struct.vf_data_storage* }
%struct.ixgbe_hw = type { i32 }
%struct.vf_data_storage = type { i32, i32* }

@IXGBE_VT_MSGINFO_MASK = common dso_local global i64 0, align 8
@IXGBE_VT_MSGINFO_SHIFT = common dso_local global i64 0, align 8
@IXGBE_MAX_VF_MC_ENTRIES = common dso_local global i32 0, align 4
@IXGBE_VMOLR_ROMPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i64*, i64)* @ixgbe_set_vf_multicasts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_vf_multicasts(%struct.ixgbe_adapter* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vf_data_storage*, align 8
  %10 = alloca %struct.ixgbe_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IXGBE_VT_MSGINFO_MASK, align 8
  %20 = and i64 %18, %19
  %21 = load i64, i64* @IXGBE_VT_MSGINFO_SHIFT, align 8
  %22 = lshr i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i64*, i64** %5, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = bitcast i64* %25 to i32*
  store i32* %26, i32** %8, align 8
  %27 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %27, i32 0, i32 1
  %29 = load %struct.vf_data_storage*, %struct.vf_data_storage** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %29, i64 %30
  store %struct.vf_data_storage* %31, %struct.vf_data_storage** %9, align 8
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %32, i32 0, i32 0
  store %struct.ixgbe_hw* %33, %struct.ixgbe_hw** %10, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @IXGBE_VMOLR(i64 %35)
  %37 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %34, i32 %36)
  store i64 %37, i64* %15, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @IXGBE_MAX_VF_MC_ENTRIES, align 4
  %40 = call i32 @min(i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %43 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %60, %3
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %55 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %44

63:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %103, %63
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %67 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %106

70:                                               ; preds = %64
  %71 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %72 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 5
  %79 = and i32 %78, 127
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %13, align 8
  %81 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %82 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 31
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %12, align 8
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @IXGBE_MTA(i64 %91)
  %93 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %90, i32 %92)
  store i64 %93, i64* %14, align 8
  %94 = load i64, i64* %12, align 8
  %95 = call i64 @BIT(i64 %94)
  %96 = load i64, i64* %14, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %14, align 8
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @IXGBE_MTA(i64 %99)
  %101 = load i64, i64* %14, align 8
  %102 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %98, i32 %100, i64 %101)
  br label %103

103:                                              ; preds = %70
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %64

106:                                              ; preds = %64
  %107 = load i64, i64* @IXGBE_VMOLR_ROMPE, align 8
  %108 = load i64, i64* %15, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %15, align 8
  %110 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @IXGBE_VMOLR(i64 %111)
  %113 = load i64, i64* %15, align 8
  %114 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %110, i32 %112, i64 %113)
  ret i32 0
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VMOLR(i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @IXGBE_MTA(i64) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
