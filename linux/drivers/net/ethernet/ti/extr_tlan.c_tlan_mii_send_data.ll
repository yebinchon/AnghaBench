; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_mii_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_mii_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLAN_NET_SIO = common dso_local global i64 0, align 8
@TLAN_DIO_ADR = common dso_local global i64 0, align 8
@TLAN_DIO_DATA = common dso_local global i64 0, align 8
@TLAN_NET_SIO_MTXEN = common dso_local global i32 0, align 4
@TLAN_NET_SIO_MCLK = common dso_local global i32 0, align 4
@TLAN_NET_SIO_MDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @tlan_mii_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_mii_send_data(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %61

12:                                               ; preds = %3
  %13 = load i64, i64* @TLAN_NET_SIO, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @TLAN_DIO_ADR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outw(i64 %13, i64 %16)
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @TLAN_DIO_DATA, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* @TLAN_NET_SIO, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* @TLAN_NET_SIO_MTXEN, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @tlan_set_bit(i32 %23, i64 %24)
  %26 = load i32, i32* %6, align 4
  %27 = sub i32 %26, 1
  %28 = shl i32 1, %27
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %58, %12
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %29
  %33 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @tlan_clear_bit(i32 %33, i64 %34)
  %36 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @tlan_get_bit(i32 %36, i64 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i32, i32* @TLAN_NET_SIO_MDATA, align 4
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @tlan_set_bit(i32 %44, i64 %45)
  br label %51

47:                                               ; preds = %32
  %48 = load i32, i32* @TLAN_NET_SIO_MDATA, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @tlan_clear_bit(i32 %48, i64 %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @tlan_set_bit(i32 %52, i64 %53)
  %55 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @tlan_get_bit(i32 %55, i64 %56)
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %29

61:                                               ; preds = %11, %29
  ret void
}

declare dso_local i32 @outw(i64, i64) #1

declare dso_local i32 @tlan_set_bit(i32, i64) #1

declare dso_local i32 @tlan_clear_bit(i32, i64) #1

declare dso_local i32 @tlan_get_bit(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
