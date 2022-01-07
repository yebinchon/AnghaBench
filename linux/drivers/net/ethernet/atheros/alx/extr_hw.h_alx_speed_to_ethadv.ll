; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.h_alx_speed_to_ethadv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.h_alx_speed_to_ethadv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPEED_1000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @alx_speed_to_ethadv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_speed_to_ethadv(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @SPEED_1000, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @DUPLEX_FULL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  store i32 %14, i32* %3, align 4
  br label %56

15:                                               ; preds = %9, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SPEED_100, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @DUPLEX_FULL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  store i32 %24, i32* %3, align 4
  br label %56

25:                                               ; preds = %19, %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SPEED_100, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @DUPLEX_HALF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  store i32 %34, i32* %3, align 4
  br label %56

35:                                               ; preds = %29, %25
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SPEED_10, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @DUPLEX_FULL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  store i32 %44, i32* %3, align 4
  br label %56

45:                                               ; preds = %39, %35
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SPEED_10, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @DUPLEX_HALF, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %49, %45
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %53, %43, %33, %23, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
