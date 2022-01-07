; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_option_arp_interval_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_option_arp_interval_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32, i32, i32, i32*, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i32*, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.bond_opt_value = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"Setting ARP monitoring interval to %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"ARP monitoring cannot be used with MII monitoring. Disabling MII monitoring\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"ARP monitoring has been set up, but no ARP targets have been specified\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@bond_arp_rcv = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bonding*, %struct.bond_opt_value*)* @bond_option_arp_interval_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_option_arp_interval_set(%struct.bonding* %0, %struct.bond_opt_value* %1) #0 {
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca %struct.bond_opt_value*, align 8
  store %struct.bonding* %0, %struct.bonding** %3, align 8
  store %struct.bond_opt_value* %1, %struct.bond_opt_value** %4, align 8
  %5 = load %struct.bonding*, %struct.bonding** %3, align 8
  %6 = getelementptr inbounds %struct.bonding, %struct.bonding* %5, i32 0, i32 5
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.bond_opt_value*, %struct.bond_opt_value** %4, align 8
  %9 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 (%struct.TYPE_4__*, i8*, ...) @netdev_dbg(%struct.TYPE_4__* %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load %struct.bond_opt_value*, %struct.bond_opt_value** %4, align 8
  %13 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.bonding*, %struct.bonding** %3, align 8
  %16 = getelementptr inbounds %struct.bonding, %struct.bonding* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  store i64 %14, i64* %17, align 8
  %18 = load %struct.bond_opt_value*, %struct.bond_opt_value** %4, align 8
  %19 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load %struct.bonding*, %struct.bonding** %3, align 8
  %24 = getelementptr inbounds %struct.bonding, %struct.bonding* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.bonding*, %struct.bonding** %3, align 8
  %30 = getelementptr inbounds %struct.bonding, %struct.bonding* %29, i32 0, i32 5
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i32 (%struct.TYPE_4__*, i8*, ...) @netdev_dbg(%struct.TYPE_4__* %31, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.bonding*, %struct.bonding** %3, align 8
  %34 = getelementptr inbounds %struct.bonding, %struct.bonding* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %28, %22
  %37 = load %struct.bonding*, %struct.bonding** %3, align 8
  %38 = getelementptr inbounds %struct.bonding, %struct.bonding* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load %struct.bonding*, %struct.bonding** %3, align 8
  %46 = getelementptr inbounds %struct.bonding, %struct.bonding* %45, i32 0, i32 5
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 (%struct.TYPE_4__*, i8*, ...) @netdev_dbg(%struct.TYPE_4__* %47, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %36
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.bonding*, %struct.bonding** %3, align 8
  %52 = getelementptr inbounds %struct.bonding, %struct.bonding* %51, i32 0, i32 5
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IFF_UP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %91

59:                                               ; preds = %50
  %60 = load %struct.bond_opt_value*, %struct.bond_opt_value** %4, align 8
  %61 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %59
  %65 = load %struct.bonding*, %struct.bonding** %3, align 8
  %66 = getelementptr inbounds %struct.bonding, %struct.bonding* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.bonding*, %struct.bonding** %3, align 8
  %72 = getelementptr inbounds %struct.bonding, %struct.bonding* %71, i32 0, i32 3
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %70, %64
  %74 = load %struct.bonding*, %struct.bonding** %3, align 8
  %75 = getelementptr inbounds %struct.bonding, %struct.bonding* %74, i32 0, i32 0
  %76 = call i32 @cancel_delayed_work_sync(i32* %75)
  br label %90

77:                                               ; preds = %59
  %78 = load i32*, i32** @bond_arp_rcv, align 8
  %79 = load %struct.bonding*, %struct.bonding** %3, align 8
  %80 = getelementptr inbounds %struct.bonding, %struct.bonding* %79, i32 0, i32 3
  store i32* %78, i32** %80, align 8
  %81 = load %struct.bonding*, %struct.bonding** %3, align 8
  %82 = getelementptr inbounds %struct.bonding, %struct.bonding* %81, i32 0, i32 2
  %83 = call i32 @cancel_delayed_work_sync(i32* %82)
  %84 = load %struct.bonding*, %struct.bonding** %3, align 8
  %85 = getelementptr inbounds %struct.bonding, %struct.bonding* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.bonding*, %struct.bonding** %3, align 8
  %88 = getelementptr inbounds %struct.bonding, %struct.bonding* %87, i32 0, i32 0
  %89 = call i32 @queue_delayed_work(i32 %86, i32* %88, i32 0)
  br label %90

90:                                               ; preds = %77, %73
  br label %91

91:                                               ; preds = %90, %50
  ret i32 0
}

declare dso_local i32 @netdev_dbg(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
