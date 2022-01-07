; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c__bond_option_delay_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c__bond_option_delay_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bond_opt_value = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Unable to set %s as MII monitoring is disabled\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"%s (%d) is not a multiple of miimon (%d), value rounded to %d ms\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Setting %s to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bonding*, %struct.bond_opt_value*, i8*, i32*)* @_bond_option_delay_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bond_option_delay_set(%struct.bonding* %0, %struct.bond_opt_value* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bonding*, align 8
  %7 = alloca %struct.bond_opt_value*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %6, align 8
  store %struct.bond_opt_value* %1, %struct.bond_opt_value** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.bond_opt_value*, %struct.bond_opt_value** %7, align 8
  %12 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.bonding*, %struct.bonding** %6, align 8
  %15 = getelementptr inbounds %struct.bonding, %struct.bonding* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %4
  %20 = load %struct.bonding*, %struct.bonding** %6, align 8
  %21 = getelementptr inbounds %struct.bonding, %struct.bonding* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @netdev_err(i32 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %77

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.bonding*, %struct.bonding** %6, align 8
  %30 = getelementptr inbounds %struct.bonding, %struct.bonding* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = srem i32 %28, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %27
  %36 = load %struct.bonding*, %struct.bonding** %6, align 8
  %37 = getelementptr inbounds %struct.bonding, %struct.bonding* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.bonding*, %struct.bonding** %6, align 8
  %42 = getelementptr inbounds %struct.bonding, %struct.bonding* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.bonding*, %struct.bonding** %6, align 8
  %47 = getelementptr inbounds %struct.bonding, %struct.bonding* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %45, %49
  %51 = load %struct.bonding*, %struct.bonding** %6, align 8
  %52 = getelementptr inbounds %struct.bonding, %struct.bonding* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %50, %54
  %56 = call i32 @netdev_warn(i32 %38, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %40, i32 %44, i32 %55)
  br label %57

57:                                               ; preds = %35, %27
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.bonding*, %struct.bonding** %6, align 8
  %60 = getelementptr inbounds %struct.bonding, %struct.bonding* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %58, %62
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.bonding*, %struct.bonding** %6, align 8
  %66 = getelementptr inbounds %struct.bonding, %struct.bonding* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bonding*, %struct.bonding** %6, align 8
  %72 = getelementptr inbounds %struct.bonding, %struct.bonding* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %70, %74
  %76 = call i32 @netdev_dbg(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %68, i32 %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %57, %19
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @netdev_err(i32, i8*, i8*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
