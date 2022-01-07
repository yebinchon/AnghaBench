; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_get_cfg_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_get_cfg_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@PIN_CFG_NA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@PIN_CFG_EPIO0 = common dso_local global i64 0, align 8
@PIN_CFG_GPIO0_P0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnx2x*, i64, i64*)* @bnx2x_get_cfg_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnx2x_get_cfg_pin(%struct.bnx2x* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @PIN_CFG_NA, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* @EINVAL, align 8
  %15 = sub nsw i64 0, %14
  store i64 %15, i64* %4, align 8
  br label %42

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @PIN_CFG_EPIO0, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @PIN_CFG_EPIO0, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load i64*, i64** %7, align 8
  %26 = call i32 @bnx2x_get_epio(%struct.bnx2x* %21, i64 %24, i64* %25)
  br label %41

27:                                               ; preds = %16
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @PIN_CFG_GPIO0_P0, align 8
  %30 = sub nsw i64 %28, %29
  %31 = and i64 %30, 3
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @PIN_CFG_GPIO0_P0, align 8
  %34 = sub nsw i64 %32, %33
  %35 = ashr i64 %34, 2
  store i64 %35, i64* %9, align 8
  %36 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @bnx2x_get_gpio(%struct.bnx2x* %36, i64 %37, i64 %38)
  %40 = load i64*, i64** %7, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %27, %20
  store i64 0, i64* %4, align 8
  br label %42

42:                                               ; preds = %41, %13
  %43 = load i64, i64* %4, align 8
  ret i64 %43
}

declare dso_local i32 @bnx2x_get_epio(%struct.bnx2x*, i64, i64*) #1

declare dso_local i64 @bnx2x_get_gpio(%struct.bnx2x*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
