; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c__bond_option_arp_ip_target_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c__bond_option_arp_ip_target_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [48 x i8] c"invalid ARP target %pI4 specified for addition\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ARP target %pI4 is already present\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ARP target table is full!\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Adding ARP target %pI4\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bonding*, i32)* @_bond_option_arp_ip_target_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bond_option_arp_ip_target_add(%struct.bonding* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bonding*, %struct.bonding** %4, align 8
  %9 = getelementptr inbounds %struct.bonding, %struct.bonding* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @bond_is_ip_target_ok(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.bonding*, %struct.bonding** %4, align 8
  %17 = getelementptr inbounds %struct.bonding, %struct.bonding* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, ...) @netdev_err(i32 %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32* %5)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %56

22:                                               ; preds = %2
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @bond_get_targets_ip(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.bonding*, %struct.bonding** %4, align 8
  %29 = getelementptr inbounds %struct.bonding, %struct.bonding* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, ...) @netdev_err(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %56

34:                                               ; preds = %22
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @bond_get_targets_ip(i32* %35, i32 0)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.bonding*, %struct.bonding** %4, align 8
  %41 = getelementptr inbounds %struct.bonding, %struct.bonding* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, ...) @netdev_err(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %56

46:                                               ; preds = %34
  %47 = load %struct.bonding*, %struct.bonding** %4, align 8
  %48 = getelementptr inbounds %struct.bonding, %struct.bonding* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @netdev_dbg(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %5)
  %51 = load %struct.bonding*, %struct.bonding** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @jiffies, align 4
  %55 = call i32 @_bond_options_arp_ip_target_set(%struct.bonding* %51, i32 %52, i32 %53, i32 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %46, %39, %27, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @bond_is_ip_target_ok(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @bond_get_targets_ip(i32*, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32*) #1

declare dso_local i32 @_bond_options_arp_ip_target_set(%struct.bonding*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
