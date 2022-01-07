; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_lux_update_thresholds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_lux_update_thresholds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bh1770_chip = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BH1770_LUX_RANGE = common dso_local global i32 0, align 4
@BH1770_ALS_TH_UP_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bh1770_chip*, i32, i32)* @bh1770_lux_update_thresholds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1770_lux_update_thresholds(%struct.bh1770_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bh1770_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.bh1770_chip* %0, %struct.bh1770_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %11 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i64 @pm_runtime_suspended(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %78

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @BH1770_LUX_RANGE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @bh1770_lux_adjusted_to_raw(%struct.bh1770_chip* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %21, %17
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @BH1770_LUX_RANGE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @bh1770_lux_adjusted_to_raw(%struct.bh1770_chip* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %32, %28
  %40 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %41 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %47 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %78

52:                                               ; preds = %45, %39
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %55 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %58 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %59, i32* %60, align 16
  %61 = load i32, i32* %6, align 4
  %62 = ashr i32 %61, 8
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = ashr i32 %66, 8
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %67, i32* %68, align 4
  %69 = load %struct.bh1770_chip*, %struct.bh1770_chip** %5, align 8
  %70 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* @BH1770_ALS_TH_UP_0, align 4
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %74 = call i32 @ARRAY_SIZE(i32* %73)
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %76 = call i32 @i2c_smbus_write_i2c_block_data(%struct.TYPE_2__* %71, i32 %72, i32 %74, i32* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %52, %51, %16
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @pm_runtime_suspended(i32*) #1

declare dso_local i32 @bh1770_lux_adjusted_to_raw(%struct.bh1770_chip*, i32) #1

declare dso_local i32 @i2c_smbus_write_i2c_block_data(%struct.TYPE_2__*, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
