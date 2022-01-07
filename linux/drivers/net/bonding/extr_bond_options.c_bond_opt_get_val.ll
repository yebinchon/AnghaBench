; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_opt_get_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_opt_get_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bond_opt_value = type { i64, i64 }
%struct.bond_option = type { %struct.bond_opt_value* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bond_opt_value* @bond_opt_get_val(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.bond_opt_value*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.bond_option*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.bond_option* @bond_opt_get(i32 %8)
  store %struct.bond_option* %9, %struct.bond_option** %6, align 8
  %10 = load %struct.bond_option*, %struct.bond_option** %6, align 8
  %11 = icmp ne %struct.bond_option* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.bond_opt_value* null, %struct.bond_opt_value** %3, align 8
  br label %58

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %54, %17
  %19 = load %struct.bond_option*, %struct.bond_option** %6, align 8
  %20 = getelementptr inbounds %struct.bond_option, %struct.bond_option* %19, i32 0, i32 0
  %21 = load %struct.bond_opt_value*, %struct.bond_opt_value** %20, align 8
  %22 = icmp ne %struct.bond_opt_value* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.bond_option*, %struct.bond_option** %6, align 8
  %25 = getelementptr inbounds %struct.bond_option, %struct.bond_option* %24, i32 0, i32 0
  %26 = load %struct.bond_opt_value*, %struct.bond_opt_value** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %26, i64 %28
  %30 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %23, %18
  %34 = phi i1 [ false, %18 ], [ %32, %23 ]
  br i1 %34, label %35, label %57

35:                                               ; preds = %33
  %36 = load %struct.bond_option*, %struct.bond_option** %6, align 8
  %37 = getelementptr inbounds %struct.bond_option, %struct.bond_option* %36, i32 0, i32 0
  %38 = load %struct.bond_opt_value*, %struct.bond_opt_value** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %38, i64 %40
  %42 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %35
  %47 = load %struct.bond_option*, %struct.bond_option** %6, align 8
  %48 = getelementptr inbounds %struct.bond_option, %struct.bond_option* %47, i32 0, i32 0
  %49 = load %struct.bond_opt_value*, %struct.bond_opt_value** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %49, i64 %51
  store %struct.bond_opt_value* %52, %struct.bond_opt_value** %3, align 8
  br label %58

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %18

57:                                               ; preds = %33
  store %struct.bond_opt_value* null, %struct.bond_opt_value** %3, align 8
  br label %58

58:                                               ; preds = %57, %46, %16
  %59 = load %struct.bond_opt_value*, %struct.bond_opt_value** %3, align 8
  ret %struct.bond_opt_value* %59
}

declare dso_local %struct.bond_option* @bond_opt_get(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
