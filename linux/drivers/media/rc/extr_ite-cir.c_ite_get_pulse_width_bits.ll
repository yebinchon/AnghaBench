; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ite-cir.c_ite_get_pulse_width_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ite-cir.c_ite_get_pulse_width_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ITE_LCF_MIN_CARRIER_FREQ = common dso_local global i32 0, align 4
@ITE_HCF_MAX_CARRIER_FREQ = common dso_local global i32 0, align 4
@ITE_TXMPW_A = common dso_local global i32 0, align 4
@ITE_TXMPW_B = common dso_local global i32 0, align 4
@ITE_TXMPW_C = common dso_local global i32 0, align 4
@ITE_TXMPW_D = common dso_local global i32 0, align 4
@ITE_TXMPW_E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ite_get_pulse_width_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ite_get_pulse_width_bits(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ITE_LCF_MIN_CARRIER_FREQ, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ITE_LCF_MIN_CARRIER_FREQ, align 4
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ITE_HCF_MAX_CARRIER_FREQ, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @ITE_HCF_MAX_CARRIER_FREQ, align 4
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = udiv i64 1000000000, %21
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %23, %25
  %27 = udiv i64 %26, 100
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @ite_is_high_carrier_freq(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %19
  %32 = load i64, i64* %7, align 8
  %33 = icmp ult i64 %32, 750
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @ITE_TXMPW_A, align 4
  store i32 %35, i32* %3, align 4
  br label %75

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = icmp ult i64 %37, 850
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @ITE_TXMPW_B, align 4
  store i32 %40, i32* %3, align 4
  br label %75

41:                                               ; preds = %36
  %42 = load i64, i64* %7, align 8
  %43 = icmp ult i64 %42, 950
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @ITE_TXMPW_C, align 4
  store i32 %45, i32* %3, align 4
  br label %75

46:                                               ; preds = %41
  %47 = load i64, i64* %7, align 8
  %48 = icmp ult i64 %47, 1080
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @ITE_TXMPW_D, align 4
  store i32 %50, i32* %3, align 4
  br label %75

51:                                               ; preds = %46
  %52 = load i32, i32* @ITE_TXMPW_E, align 4
  store i32 %52, i32* %3, align 4
  br label %75

53:                                               ; preds = %19
  %54 = load i64, i64* %7, align 8
  %55 = icmp ult i64 %54, 6500
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @ITE_TXMPW_A, align 4
  store i32 %57, i32* %3, align 4
  br label %75

58:                                               ; preds = %53
  %59 = load i64, i64* %7, align 8
  %60 = icmp ult i64 %59, 7850
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @ITE_TXMPW_B, align 4
  store i32 %62, i32* %3, align 4
  br label %75

63:                                               ; preds = %58
  %64 = load i64, i64* %7, align 8
  %65 = icmp ult i64 %64, 9650
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @ITE_TXMPW_C, align 4
  store i32 %67, i32* %3, align 4
  br label %75

68:                                               ; preds = %63
  %69 = load i64, i64* %7, align 8
  %70 = icmp ult i64 %69, 11950
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @ITE_TXMPW_D, align 4
  store i32 %72, i32* %3, align 4
  br label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @ITE_TXMPW_E, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %71, %66, %61, %56, %51, %49, %44, %39, %34
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @ite_is_high_carrier_freq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
