; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_ee_send_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_ee_send_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLAN_NET_SIO = common dso_local global i64 0, align 8
@TLAN_DIO_ADR = common dso_local global i64 0, align 8
@TLAN_DIO_DATA = common dso_local global i64 0, align 8
@TLAN_NET_SIO_EDATA = common dso_local global i32 0, align 4
@TLAN_NET_SIO_ECLOK = common dso_local global i32 0, align 4
@TLAN_NET_SIO_ETXEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @tlan_ee_send_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlan_ee_send_byte(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @TLAN_NET_SIO, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @TLAN_DIO_ADR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outw(i64 %10, i64 %13)
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @TLAN_DIO_DATA, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* @TLAN_NET_SIO, align 8
  %19 = add nsw i64 %17, %18
  store i64 %19, i64* %9, align 8
  store i32 128, i32* %8, align 4
  br label %20

20:                                               ; preds = %43, %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @TLAN_NET_SIO_EDATA, align 4
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @tlan_set_bit(i32 %29, i64 %30)
  br label %36

32:                                               ; preds = %23
  %33 = load i32, i32* @TLAN_NET_SIO_EDATA, align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @tlan_clear_bit(i32 %33, i64 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* @TLAN_NET_SIO_ECLOK, align 4
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @tlan_set_bit(i32 %37, i64 %38)
  %40 = load i32, i32* @TLAN_NET_SIO_ECLOK, align 4
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @tlan_clear_bit(i32 %40, i64 %41)
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %20

46:                                               ; preds = %20
  %47 = load i32, i32* @TLAN_NET_SIO_ETXEN, align 4
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @tlan_clear_bit(i32 %47, i64 %48)
  %50 = load i32, i32* @TLAN_NET_SIO_ECLOK, align 4
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @tlan_set_bit(i32 %50, i64 %51)
  %53 = load i32, i32* @TLAN_NET_SIO_EDATA, align 4
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @tlan_get_bit(i32 %53, i64 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @TLAN_NET_SIO_ECLOK, align 4
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @tlan_clear_bit(i32 %56, i64 %57)
  %59 = load i32, i32* @TLAN_NET_SIO_ETXEN, align 4
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @tlan_set_bit(i32 %59, i64 %60)
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %46
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32, i32* @TLAN_NET_SIO_EDATA, align 4
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @tlan_clear_bit(i32 %68, i64 %69)
  %71 = load i32, i32* @TLAN_NET_SIO_ECLOK, align 4
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @tlan_set_bit(i32 %71, i64 %72)
  %74 = load i32, i32* @TLAN_NET_SIO_EDATA, align 4
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @tlan_set_bit(i32 %74, i64 %75)
  br label %77

77:                                               ; preds = %67, %64, %46
  %78 = load i32, i32* %7, align 4
  ret i32 %78
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
