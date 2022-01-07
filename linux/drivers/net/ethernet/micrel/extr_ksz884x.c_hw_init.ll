; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32, i64 }

@BUS_SPEED_125_MHZ = common dso_local global i32 0, align 4
@KS884X_BUS_CTRL_OFFSET = common dso_local global i64 0, align 8
@KS884X_CHIP_ID_OFFSET = common dso_local global i64 0, align 8
@KS884X_REVISION_MASK = common dso_local global i32 0, align 4
@KS884X_REVISION_SHIFT = common dso_local global i32 0, align 4
@KS884X_CHIP_ID_MASK_41 = common dso_local global i32 0, align 4
@REG_CHIP_ID_41 = common dso_local global i32 0, align 4
@REG_CHIP_ID_42 = common dso_local global i32 0, align 4
@SMALL_PACKET_TX_BUG = common dso_local global i32 0, align 4
@HALF_DUPLEX_SIGNAL_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_hw*)* @hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_init(%struct.ksz_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ksz_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @BUS_SPEED_125_MHZ, align 4
  %8 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @KS884X_BUS_CTRL_OFFSET, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writew(i32 %7, i64 %12)
  %14 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KS884X_CHIP_ID_OFFSET, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readw(i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @KS884X_REVISION_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @KS884X_REVISION_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @KS884X_CHIP_ID_MASK_41, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @REG_CHIP_ID_41, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %39

32:                                               ; preds = %1
  %33 = load i32, i32* @REG_CHIP_ID_42, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 2, i32* %4, align 4
  br label %38

37:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %59

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i32, i32* %6, align 4
  %41 = icmp sle i32 %40, 1
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load i32, i32* @SMALL_PACKET_TX_BUG, align 4
  %44 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %45 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 1, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load i32, i32* @HALF_DUPLEX_SIGNAL_BUG, align 4
  %52 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %53 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %42
  br label %57

57:                                               ; preds = %56, %39
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %37
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
