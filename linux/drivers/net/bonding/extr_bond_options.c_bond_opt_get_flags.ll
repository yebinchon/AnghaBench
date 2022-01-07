; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_opt_get_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_opt_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bond_opt_value = type { i32, i64 }
%struct.bond_option = type { %struct.bond_opt_value* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bond_opt_value* (%struct.bond_option*, i32)* @bond_opt_get_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bond_opt_value* @bond_opt_get_flags(%struct.bond_option* %0, i32 %1) #0 {
  %3 = alloca %struct.bond_opt_value*, align 8
  %4 = alloca %struct.bond_option*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bond_option* %0, %struct.bond_option** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %44, %2
  %8 = load %struct.bond_option*, %struct.bond_option** %4, align 8
  %9 = getelementptr inbounds %struct.bond_option, %struct.bond_option* %8, i32 0, i32 0
  %10 = load %struct.bond_opt_value*, %struct.bond_opt_value** %9, align 8
  %11 = icmp ne %struct.bond_opt_value* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load %struct.bond_option*, %struct.bond_option** %4, align 8
  %14 = getelementptr inbounds %struct.bond_option, %struct.bond_option* %13, i32 0, i32 0
  %15 = load %struct.bond_opt_value*, %struct.bond_opt_value** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %15, i64 %17
  %19 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %12, %7
  %23 = phi i1 [ false, %7 ], [ %21, %12 ]
  br i1 %23, label %24, label %47

24:                                               ; preds = %22
  %25 = load %struct.bond_option*, %struct.bond_option** %4, align 8
  %26 = getelementptr inbounds %struct.bond_option, %struct.bond_option* %25, i32 0, i32 0
  %27 = load %struct.bond_opt_value*, %struct.bond_opt_value** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %27, i64 %29
  %31 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load %struct.bond_option*, %struct.bond_option** %4, align 8
  %38 = getelementptr inbounds %struct.bond_option, %struct.bond_option* %37, i32 0, i32 0
  %39 = load %struct.bond_opt_value*, %struct.bond_opt_value** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %39, i64 %41
  store %struct.bond_opt_value* %42, %struct.bond_opt_value** %3, align 8
  br label %48

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %7

47:                                               ; preds = %22
  store %struct.bond_opt_value* null, %struct.bond_opt_value** %3, align 8
  br label %48

48:                                               ; preds = %47, %36
  %49 = load %struct.bond_opt_value*, %struct.bond_opt_value** %3, align 8
  ret %struct.bond_opt_value* %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
