; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c___bond_opt_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c___bond_opt_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32 }
%struct.bond_opt_value = type { i32 }
%struct.bond_option = type { i32 (%struct.bonding*, %struct.bond_opt_value.0*)* }
%struct.bond_opt_value.0 = type opaque

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bond_opt_set(%struct.bonding* %0, i32 %1, %struct.bond_opt_value* %2) #0 {
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bond_opt_value*, align 8
  %7 = alloca %struct.bond_opt_value*, align 8
  %8 = alloca %struct.bond_option*, align 8
  %9 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bond_opt_value* %2, %struct.bond_opt_value** %6, align 8
  store %struct.bond_opt_value* null, %struct.bond_opt_value** %7, align 8
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = call i32 (...) @ASSERT_RTNL()
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.bond_option* @bond_opt_get(i32 %13)
  store %struct.bond_option* %14, %struct.bond_option** %8, align 8
  %15 = load %struct.bond_opt_value*, %struct.bond_opt_value** %6, align 8
  %16 = icmp ne %struct.bond_opt_value* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load %struct.bond_option*, %struct.bond_option** %8, align 8
  %23 = icmp ne %struct.bond_option* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %3
  br label %53

29:                                               ; preds = %21
  %30 = load %struct.bonding*, %struct.bonding** %4, align 8
  %31 = load %struct.bond_option*, %struct.bond_option** %8, align 8
  %32 = call i32 @bond_opt_check_deps(%struct.bonding* %30, %struct.bond_option* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %53

36:                                               ; preds = %29
  %37 = load %struct.bond_option*, %struct.bond_option** %8, align 8
  %38 = load %struct.bond_opt_value*, %struct.bond_opt_value** %6, align 8
  %39 = call %struct.bond_opt_value* @bond_opt_parse(%struct.bond_option* %37, %struct.bond_opt_value* %38)
  store %struct.bond_opt_value* %39, %struct.bond_opt_value** %7, align 8
  %40 = load %struct.bond_opt_value*, %struct.bond_opt_value** %7, align 8
  %41 = icmp ne %struct.bond_opt_value* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %53

45:                                               ; preds = %36
  %46 = load %struct.bond_option*, %struct.bond_option** %8, align 8
  %47 = getelementptr inbounds %struct.bond_option, %struct.bond_option* %46, i32 0, i32 0
  %48 = load i32 (%struct.bonding*, %struct.bond_opt_value.0*)*, i32 (%struct.bonding*, %struct.bond_opt_value.0*)** %47, align 8
  %49 = load %struct.bonding*, %struct.bonding** %4, align 8
  %50 = load %struct.bond_opt_value*, %struct.bond_opt_value** %7, align 8
  %51 = bitcast %struct.bond_opt_value* %50 to %struct.bond_opt_value.0*
  %52 = call i32 %48(%struct.bonding* %49, %struct.bond_opt_value.0* %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %45, %42, %35, %28
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.bonding*, %struct.bonding** %4, align 8
  %58 = load %struct.bond_option*, %struct.bond_option** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.bond_opt_value*, %struct.bond_opt_value** %6, align 8
  %61 = call i32 @bond_opt_error_interpret(%struct.bonding* %57, %struct.bond_option* %58, i32 %59, %struct.bond_opt_value* %60)
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.bond_option* @bond_opt_get(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @bond_opt_check_deps(%struct.bonding*, %struct.bond_option*) #1

declare dso_local %struct.bond_opt_value* @bond_opt_parse(%struct.bond_option*, %struct.bond_opt_value*) #1

declare dso_local i32 @bond_opt_error_interpret(%struct.bonding*, %struct.bond_option*, i32, %struct.bond_opt_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
