; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_regd.c_ath_regd_get_default_country.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_regd.c_ath_regd_get_default_country.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.country_code_to_enum_rd = type { i32 }

@COUNTRY_ERD_FLAG = common dso_local global i32 0, align 4
@CTRY_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ath_regd_get_default_country to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_regd_get_default_country(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.country_code_to_enum_rd*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @COUNTRY_ERD_FLAG, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  store %struct.country_code_to_enum_rd* null, %struct.country_code_to_enum_rd** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @COUNTRY_ERD_FLAG, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.country_code_to_enum_rd* @ath_regd_find_country(i32 %15)
  store %struct.country_code_to_enum_rd* %16, %struct.country_code_to_enum_rd** %4, align 8
  %17 = load %struct.country_code_to_enum_rd*, %struct.country_code_to_enum_rd** %4, align 8
  %18 = icmp ne %struct.country_code_to_enum_rd* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* @CTRY_DEFAULT, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.country_code_to_enum_rd* @ath_regd_find_country(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
