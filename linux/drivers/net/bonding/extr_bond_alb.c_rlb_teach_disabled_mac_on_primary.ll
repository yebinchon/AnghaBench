; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_rlb_teach_disabled_mac_on_primary.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_rlb_teach_disabled_mac_on_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.slave = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bonding*, i32*)* @rlb_teach_disabled_mac_on_primary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rlb_teach_disabled_mac_on_primary(%struct.bonding* %0, i32* %1) #0 {
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.slave*, align 8
  store %struct.bonding* %0, %struct.bonding** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.bonding*, %struct.bonding** %3, align 8
  %7 = getelementptr inbounds %struct.bonding, %struct.bonding* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.slave* @rtnl_dereference(i32 %8)
  store %struct.slave* %9, %struct.slave** %5, align 8
  %10 = load %struct.slave*, %struct.slave** %5, align 8
  %11 = icmp ne %struct.slave* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.bonding*, %struct.bonding** %3, align 8
  %15 = getelementptr inbounds %struct.bonding, %struct.bonding* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %13
  %20 = load %struct.slave*, %struct.slave** %5, align 8
  %21 = getelementptr inbounds %struct.slave, %struct.slave* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_set_promiscuity(i32 %22, i32 1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load %struct.bonding*, %struct.bonding** %3, align 8
  %27 = getelementptr inbounds %struct.bonding, %struct.bonding* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %33

29:                                               ; preds = %19
  %30 = load %struct.bonding*, %struct.bonding** %3, align 8
  %31 = getelementptr inbounds %struct.bonding, %struct.bonding* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %13
  %35 = load %struct.bonding*, %struct.bonding** %3, align 8
  %36 = getelementptr inbounds %struct.bonding, %struct.bonding* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.slave*, %struct.slave** %5, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @alb_send_learning_packets(%struct.slave* %38, i32* %39, i32 1)
  br label %41

41:                                               ; preds = %34, %12
  ret void
}

declare dso_local %struct.slave* @rtnl_dereference(i32) #1

declare dso_local i32 @dev_set_promiscuity(i32, i32) #1

declare dso_local i32 @alb_send_learning_packets(%struct.slave*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
