; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_opt_check_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_opt_check_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bond_option = type { i32 }
%struct.bond_opt_value = type { i64 }

@BOND_VALFLAG_MIN = common dso_local global i32 0, align 4
@BOND_VALFLAG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bond_option*, i64)* @bond_opt_check_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_opt_check_range(%struct.bond_option* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bond_option*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bond_opt_value*, align 8
  %7 = alloca %struct.bond_opt_value*, align 8
  store %struct.bond_option* %0, %struct.bond_option** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.bond_option*, %struct.bond_option** %4, align 8
  %9 = load i32, i32* @BOND_VALFLAG_MIN, align 4
  %10 = call %struct.bond_opt_value* @bond_opt_get_flags(%struct.bond_option* %8, i32 %9)
  store %struct.bond_opt_value* %10, %struct.bond_opt_value** %6, align 8
  %11 = load %struct.bond_option*, %struct.bond_option** %4, align 8
  %12 = load i32, i32* @BOND_VALFLAG_MAX, align 4
  %13 = call %struct.bond_opt_value* @bond_opt_get_flags(%struct.bond_option* %11, i32 %12)
  store %struct.bond_opt_value* %13, %struct.bond_opt_value** %7, align 8
  %14 = load %struct.bond_opt_value*, %struct.bond_opt_value** %7, align 8
  %15 = icmp ne %struct.bond_opt_value* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.bond_opt_value*, %struct.bond_opt_value** %6, align 8
  %18 = icmp ne %struct.bond_opt_value* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.bond_opt_value*, %struct.bond_opt_value** %6, align 8
  %22 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19, %16
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.bond_opt_value*, %struct.bond_opt_value** %7, align 8
  %28 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19, %2
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.bond_opt_value* @bond_opt_get_flags(%struct.bond_option*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
