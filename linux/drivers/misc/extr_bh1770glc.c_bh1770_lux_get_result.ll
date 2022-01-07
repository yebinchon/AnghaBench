; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_lux_get_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_lux_get_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bh1770_chip = type { i32, i32 }

@BH1770_ALS_DATA_0 = common dso_local global i32 0, align 4
@BH1770_ALS_DATA_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bh1770_chip*)* @bh1770_lux_get_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1770_lux_get_result(%struct.bh1770_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bh1770_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bh1770_chip* %0, %struct.bh1770_chip** %3, align 8
  %6 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %7 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @BH1770_ALS_DATA_0, align 4
  %10 = call i32 @i2c_smbus_read_byte_data(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 255
  store i32 %17, i32* %4, align 4
  %18 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %19 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BH1770_ALS_DATA_1, align 4
  %22 = call i32 @i2c_smbus_read_byte_data(i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 255
  %31 = shl i32 %30, 8
  %32 = or i32 %28, %31
  %33 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %34 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %27, %25, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
