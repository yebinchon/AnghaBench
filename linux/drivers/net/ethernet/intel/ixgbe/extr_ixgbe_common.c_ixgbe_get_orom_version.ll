; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_get_orom_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_get_orom_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i64, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_nvm_version = type { i32, i32, i32, i32 }

@NVM_OROM_OFFSET = common dso_local global i64 0, align 8
@NVM_INVALID_PTR = common dso_local global i32 0, align 4
@NVM_OROM_BLK_HI = common dso_local global i64 0, align 8
@NVM_OROM_BLK_LOW = common dso_local global i64 0, align 8
@NVM_VER_INVALID = common dso_local global i32 0, align 4
@NVM_OROM_SHIFT = common dso_local global i32 0, align 4
@NVM_OROM_PATCH_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_get_orom_version(%struct.ixgbe_hw* %0, %struct.ixgbe_nvm_version* %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_nvm_version*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store %struct.ixgbe_nvm_version* %1, %struct.ixgbe_nvm_version** %4, align 8
  %8 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %9 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.ixgbe_hw.0*, i64, i32*)*, i32 (%struct.ixgbe_hw.0*, i64, i32*)** %13, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = bitcast %struct.ixgbe_hw* %15 to %struct.ixgbe_hw.0*
  %17 = load i64, i64* @NVM_OROM_OFFSET, align 8
  %18 = call i32 %14(%struct.ixgbe_hw.0* %16, i64 %17, i32* %5)
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @NVM_INVALID_PTR, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %2
  br label %86

26:                                               ; preds = %21
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.ixgbe_hw.0*, i64, i32*)*, i32 (%struct.ixgbe_hw.0*, i64, i32*)** %30, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %33 = bitcast %struct.ixgbe_hw* %32 to %struct.ixgbe_hw.0*
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @NVM_OROM_BLK_HI, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 %31(%struct.ixgbe_hw.0* %33, i64 %37, i32* %6)
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ixgbe_hw.0*, i64, i32*)*, i32 (%struct.ixgbe_hw.0*, i64, i32*)** %42, align 8
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %45 = bitcast %struct.ixgbe_hw* %44 to %struct.ixgbe_hw.0*
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @NVM_OROM_BLK_LOW, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 %43(%struct.ixgbe_hw.0* %45, i64 %49, i32* %7)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %26
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @NVM_VER_INVALID, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @NVM_VER_INVALID, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %55, %26
  br label %86

64:                                               ; preds = %59
  %65 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %66 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @NVM_OROM_SHIFT, align 4
  %69 = ashr i32 %67, %68
  %70 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %71 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @NVM_OROM_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @NVM_OROM_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = or i32 %74, %77
  %79 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %80 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @NVM_OROM_PATCH_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %85 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %64, %63, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
