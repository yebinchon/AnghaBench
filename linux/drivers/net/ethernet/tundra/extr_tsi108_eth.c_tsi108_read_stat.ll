; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_read_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_read_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi108_prv_data = type { i32 }

@TSI108_STAT_CARRY1 = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tsi108_prv_data*, i32, i32, i32, i64*)* @tsi108_read_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tsi108_read_stat(%struct.tsi108_prv_data* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca %struct.tsi108_prv_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.tsi108_prv_data* %0, %struct.tsi108_prv_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 176
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32, i32* @TSI108_STAT_CARRY1, align 4
  store i32 %16, i32* %11, align 4
  br label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @TSI108_STAT_CARRY2, align 4
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %17, %15
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @TSI_READ(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = load i64*, i64** %10, align 8
  %25 = load i64, i64* %24, align 8
  %26 = or i64 %23, %25
  store i64 %26, i64* %12, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @TSI_READ(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %28, %29
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %20
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %10, align 8
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, %35
  store i64 %38, i64* %36, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @TSI_WRITE(i32 %39, i32 %40)
  br label %20

42:                                               ; preds = %20
  %43 = load i64, i64* %12, align 8
  ret i64 %43
}

declare dso_local i32 @TSI_READ(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @TSI_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
