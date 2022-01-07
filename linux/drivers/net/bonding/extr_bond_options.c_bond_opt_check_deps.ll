; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_opt_check_deps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_opt_check_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_2__*, %struct.bond_params }
%struct.TYPE_2__ = type { i32 }
%struct.bond_params = type { i32 }
%struct.bond_option = type { i32, i32 }

@EACCES = common dso_local global i32 0, align 4
@BOND_OPTFLAG_NOSLAVES = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@BOND_OPTFLAG_IFDOWN = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bonding*, %struct.bond_option*)* @bond_opt_check_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_opt_check_deps(%struct.bonding* %0, %struct.bond_option* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.bond_option*, align 8
  %6 = alloca %struct.bond_params*, align 8
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store %struct.bond_option* %1, %struct.bond_option** %5, align 8
  %7 = load %struct.bonding*, %struct.bonding** %4, align 8
  %8 = getelementptr inbounds %struct.bonding, %struct.bonding* %7, i32 0, i32 1
  store %struct.bond_params* %8, %struct.bond_params** %6, align 8
  %9 = load %struct.bond_params*, %struct.bond_params** %6, align 8
  %10 = getelementptr inbounds %struct.bond_params, %struct.bond_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bond_option*, %struct.bond_option** %5, align 8
  %13 = getelementptr inbounds %struct.bond_option, %struct.bond_option* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EACCES, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %53

19:                                               ; preds = %2
  %20 = load %struct.bond_option*, %struct.bond_option** %5, align 8
  %21 = getelementptr inbounds %struct.bond_option, %struct.bond_option* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BOND_OPTFLAG_NOSLAVES, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.bonding*, %struct.bonding** %4, align 8
  %28 = call i64 @bond_has_slaves(%struct.bonding* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOTEMPTY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %53

33:                                               ; preds = %26, %19
  %34 = load %struct.bond_option*, %struct.bond_option** %5, align 8
  %35 = getelementptr inbounds %struct.bond_option, %struct.bond_option* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BOND_OPTFLAG_IFDOWN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load %struct.bonding*, %struct.bonding** %4, align 8
  %42 = getelementptr inbounds %struct.bonding, %struct.bonding* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IFF_UP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %40, %33
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %49, %30, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @bond_has_slaves(%struct.bonding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
