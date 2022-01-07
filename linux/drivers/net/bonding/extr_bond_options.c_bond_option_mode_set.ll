; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_option_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_option_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i64, i64 }
%struct.bond_opt_value = type { i64, i64 }

@.str = private unnamed_addr constant [67 x i8] c"%s mode is incompatible with arp monitoring, start mii monitoring\0A\00", align 1
@BOND_DEFAULT_MIIMON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Setting MII monitoring interval to %d\0A\00", align 1
@BOND_MODE_ALB = common dso_local global i64 0, align 8
@BOND_ARP_VALIDATE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bonding*, %struct.bond_opt_value*)* @bond_option_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_option_mode_set(%struct.bonding* %0, %struct.bond_opt_value* %1) #0 {
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca %struct.bond_opt_value*, align 8
  store %struct.bonding* %0, %struct.bonding** %3, align 8
  store %struct.bond_opt_value* %1, %struct.bond_opt_value** %4, align 8
  %5 = load %struct.bond_opt_value*, %struct.bond_opt_value** %4, align 8
  %6 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @bond_mode_uses_arp(i64 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %2
  %11 = load %struct.bonding*, %struct.bonding** %3, align 8
  %12 = getelementptr inbounds %struct.bonding, %struct.bonding* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.bonding*, %struct.bonding** %3, align 8
  %18 = getelementptr inbounds %struct.bonding, %struct.bonding* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.bond_opt_value*, %struct.bond_opt_value** %4, align 8
  %21 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @netdev_dbg(i32 %19, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.bonding*, %struct.bonding** %3, align 8
  %25 = getelementptr inbounds %struct.bonding, %struct.bonding* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %16, %10
  %28 = load %struct.bonding*, %struct.bonding** %3, align 8
  %29 = getelementptr inbounds %struct.bonding, %struct.bonding* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %27
  %34 = load i64, i64* @BOND_DEFAULT_MIIMON, align 8
  %35 = load %struct.bonding*, %struct.bonding** %3, align 8
  %36 = getelementptr inbounds %struct.bonding, %struct.bonding* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i64 %34, i64* %37, align 8
  %38 = load %struct.bonding*, %struct.bonding** %3, align 8
  %39 = getelementptr inbounds %struct.bonding, %struct.bonding* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.bonding*, %struct.bonding** %3, align 8
  %42 = getelementptr inbounds %struct.bonding, %struct.bonding* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @netdev_dbg(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %33, %27
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.bond_opt_value*, %struct.bond_opt_value** %4, align 8
  %49 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BOND_MODE_ALB, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.bonding*, %struct.bonding** %3, align 8
  %55 = getelementptr inbounds %struct.bonding, %struct.bonding* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i32, i32* @BOND_ARP_VALIDATE_NONE, align 4
  %59 = load %struct.bonding*, %struct.bonding** %3, align 8
  %60 = getelementptr inbounds %struct.bonding, %struct.bonding* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  %62 = load %struct.bond_opt_value*, %struct.bond_opt_value** %4, align 8
  %63 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.bonding*, %struct.bonding** %3, align 8
  %66 = getelementptr inbounds %struct.bonding, %struct.bonding* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i64 %64, i64* %67, align 8
  ret i32 0
}

declare dso_local i32 @bond_mode_uses_arp(i64) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
