; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv76xx_state = type { %struct.regmap** }
%struct.regmap = type { i32 }

@I2C_SMBUS_BLOCK_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv76xx_state*, i32, i32, i8*, i64)* @adv76xx_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv76xx_write_block(%struct.adv76xx_state* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.adv76xx_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.regmap*, align 8
  store %struct.adv76xx_state* %0, %struct.adv76xx_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.adv76xx_state*, %struct.adv76xx_state** %6, align 8
  %13 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %12, i32 0, i32 0
  %14 = load %struct.regmap**, %struct.regmap*** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.regmap*, %struct.regmap** %14, i64 %16
  %18 = load %struct.regmap*, %struct.regmap** %17, align 8
  store %struct.regmap* %18, %struct.regmap** %11, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @I2C_SMBUS_BLOCK_MAX, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i64, i64* @I2C_SMBUS_BLOCK_MAX, align 8
  store i64 %23, i64* %10, align 8
  br label %24

24:                                               ; preds = %22, %5
  %25 = load %struct.regmap*, %struct.regmap** %11, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @regmap_raw_write(%struct.regmap* %25, i32 %26, i8* %27, i64 %28)
  ret i32 %29
}

declare dso_local i32 @regmap_raw_write(%struct.regmap*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
