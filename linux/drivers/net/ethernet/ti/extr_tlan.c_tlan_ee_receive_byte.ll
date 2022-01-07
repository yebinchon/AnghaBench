; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_ee_receive_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_ee_receive_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLAN_NET_SIO = common dso_local global i64 0, align 8
@TLAN_DIO_ADR = common dso_local global i64 0, align 8
@TLAN_DIO_DATA = common dso_local global i64 0, align 8
@TLAN_NET_SIO_ETXEN = common dso_local global i32 0, align 4
@TLAN_NET_SIO_ECLOK = common dso_local global i32 0, align 4
@TLAN_NET_SIO_EDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i32)* @tlan_ee_receive_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_ee_receive_byte(i64 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @TLAN_NET_SIO, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @TLAN_DIO_ADR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outw(i64 %9, i64 %12)
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @TLAN_DIO_DATA, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @TLAN_NET_SIO, align 8
  %18 = add nsw i64 %16, %17
  store i64 %18, i64* %8, align 8
  %19 = load i32*, i32** %5, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* @TLAN_NET_SIO_ETXEN, align 4
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @tlan_clear_bit(i32 %20, i64 %21)
  store i32 128, i32* %7, align 4
  br label %23

23:                                               ; preds = %43, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i32, i32* @TLAN_NET_SIO_ECLOK, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @tlan_set_bit(i32 %27, i64 %28)
  %30 = load i32, i32* @TLAN_NET_SIO_EDATA, align 4
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @tlan_get_bit(i32 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %26
  %40 = load i32, i32* @TLAN_NET_SIO_ECLOK, align 4
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @tlan_clear_bit(i32 %40, i64 %41)
  br label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %23

46:                                               ; preds = %23
  %47 = load i32, i32* @TLAN_NET_SIO_ETXEN, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @tlan_set_bit(i32 %47, i64 %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @TLAN_NET_SIO_EDATA, align 4
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @tlan_clear_bit(i32 %53, i64 %54)
  %56 = load i32, i32* @TLAN_NET_SIO_ECLOK, align 4
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @tlan_set_bit(i32 %56, i64 %57)
  %59 = load i32, i32* @TLAN_NET_SIO_ECLOK, align 4
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @tlan_clear_bit(i32 %59, i64 %60)
  br label %81

62:                                               ; preds = %46
  %63 = load i32, i32* @TLAN_NET_SIO_EDATA, align 4
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @tlan_set_bit(i32 %63, i64 %64)
  %66 = load i32, i32* @TLAN_NET_SIO_ECLOK, align 4
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @tlan_set_bit(i32 %66, i64 %67)
  %69 = load i32, i32* @TLAN_NET_SIO_ECLOK, align 4
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @tlan_clear_bit(i32 %69, i64 %70)
  %72 = load i32, i32* @TLAN_NET_SIO_EDATA, align 4
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @tlan_clear_bit(i32 %72, i64 %73)
  %75 = load i32, i32* @TLAN_NET_SIO_ECLOK, align 4
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @tlan_set_bit(i32 %75, i64 %76)
  %78 = load i32, i32* @TLAN_NET_SIO_EDATA, align 4
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @tlan_set_bit(i32 %78, i64 %79)
  br label %81

81:                                               ; preds = %62, %52
  ret void
}

declare dso_local i32 @outw(i64, i64) #1

declare dso_local i32 @tlan_clear_bit(i32, i64) #1

declare dso_local i32 @tlan_set_bit(i32, i64) #1

declare dso_local i64 @tlan_get_bit(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
