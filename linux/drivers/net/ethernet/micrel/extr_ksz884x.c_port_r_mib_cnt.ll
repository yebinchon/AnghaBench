; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_r_mib_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_r_mib_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i64 }

@PORT_COUNTER_NUM = common dso_local global i32 0, align 4
@TABLE_MIB = common dso_local global i32 0, align 4
@TABLE_SEL_SHIFT = common dso_local global i32 0, align 4
@TABLE_READ = common dso_local global i32 0, align 4
@KS884X_IACR_OFFSET = common dso_local global i64 0, align 8
@KS884X_ACC_DATA_0_OFFSET = common dso_local global i64 0, align 8
@MIB_COUNTER_VALID = common dso_local global i32 0, align 4
@MIB_COUNTER_OVERFLOW = common dso_local global i32 0, align 4
@MIB_COUNTER_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i32, i32, i32*)* @port_r_mib_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_r_mib_cnt(%struct.ksz_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ksz_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @PORT_COUNTER_NUM, align 4
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 %14, %15
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %19 = call i32 @hw_block_intr(%struct.ksz_hw* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @TABLE_MIB, align 4
  %21 = load i32, i32* @TABLE_SEL_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* @TABLE_READ, align 4
  %24 = or i32 %22, %23
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %30 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @KS884X_IACR_OFFSET, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writew(i32 %28, i64 %33)
  %35 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %36 = load i64, i64* @KS884X_IACR_OFFSET, align 8
  %37 = call i32 @HW_DELAY(%struct.ksz_hw* %35, i64 %36)
  store i32 100, i32* %12, align 4
  br label %38

38:                                               ; preds = %71, %4
  %39 = load i32, i32* %12, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %38
  %42 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %43 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @KS884X_ACC_DATA_0_OFFSET, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl(i64 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @MIB_COUNTER_VALID, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %41
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MIB_COUNTER_OVERFLOW, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @MIB_COUNTER_VALUE, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @MIB_COUNTER_VALUE, align 4
  %66 = and i32 %64, %65
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %74

70:                                               ; preds = %41
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %12, align 4
  br label %38

74:                                               ; preds = %63, %38
  %75 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @hw_restore_intr(%struct.ksz_hw* %75, i32 %76)
  ret void
}

declare dso_local i32 @hw_block_intr(%struct.ksz_hw*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @HW_DELAY(%struct.ksz_hw*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @hw_restore_intr(%struct.ksz_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
