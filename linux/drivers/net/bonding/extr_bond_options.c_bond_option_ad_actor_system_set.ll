; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_option_ad_actor_system_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_option_ad_actor_system_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bond_opt_value = type { i32, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Setting ad_actor_system to %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Invalid ad_actor_system MAC address.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bonding*, %struct.bond_opt_value*)* @bond_option_ad_actor_system_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_option_ad_actor_system_set(%struct.bonding* %0, %struct.bond_opt_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.bond_opt_value*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store %struct.bond_opt_value* %1, %struct.bond_opt_value** %5, align 8
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.bond_opt_value*, %struct.bond_opt_value** %5, align 8
  %15 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.bond_opt_value*, %struct.bond_opt_value** %5, align 8
  %20 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @mac_pton(i64 %21, i32* %13)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %48

25:                                               ; preds = %18
  store i32* %13, i32** %8, align 8
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.bond_opt_value*, %struct.bond_opt_value** %5, align 8
  %28 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %27, i32 0, i32 0
  store i32* %28, i32** %8, align 8
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @is_valid_ether_addr(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %48

34:                                               ; preds = %29
  %35 = load %struct.bonding*, %struct.bonding** %4, align 8
  %36 = getelementptr inbounds %struct.bonding, %struct.bonding* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @netdev_dbg(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %38)
  %40 = load %struct.bonding*, %struct.bonding** %4, align 8
  %41 = getelementptr inbounds %struct.bonding, %struct.bonding* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @ether_addr_copy(i32 %43, i32* %44)
  %46 = load %struct.bonding*, %struct.bonding** %4, align 8
  %47 = call i32 @bond_3ad_update_ad_actor_settings(%struct.bonding* %46)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %55

48:                                               ; preds = %33, %24
  %49 = load %struct.bonding*, %struct.bonding** %4, align 8
  %50 = getelementptr inbounds %struct.bonding, %struct.bonding* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @netdev_err(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %48, %34
  %56 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mac_pton(i64, i32*) #2

declare dso_local i32 @is_valid_ether_addr(i32*) #2

declare dso_local i32 @netdev_dbg(i32, i8*, i32*) #2

declare dso_local i32 @ether_addr_copy(i32, i32*) #2

declare dso_local i32 @bond_3ad_update_ad_actor_settings(%struct.bonding*) #2

declare dso_local i32 @netdev_err(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
