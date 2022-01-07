; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_bond_3ad_adapter_speed_duplex_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_bond_3ad_adapter_speed_duplex_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.port = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.port }

@.str = private unnamed_addr constant [45 x i8] c"speed/duplex changed for uninitialized port\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Port %d changed speed/duplex\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bond_3ad_adapter_speed_duplex_changed(%struct.slave* %0) #0 {
  %2 = alloca %struct.slave*, align 8
  %3 = alloca %struct.port*, align 8
  store %struct.slave* %0, %struct.slave** %2, align 8
  %4 = load %struct.slave*, %struct.slave** %2, align 8
  %5 = call %struct.TYPE_4__* @SLAVE_AD_INFO(%struct.slave* %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store %struct.port* %6, %struct.port** %3, align 8
  %7 = load %struct.port*, %struct.port** %3, align 8
  %8 = getelementptr inbounds %struct.port, %struct.port* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = load %struct.slave*, %struct.slave** %2, align 8
  %13 = getelementptr inbounds %struct.slave, %struct.slave* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.slave*, %struct.slave** %2, align 8
  %18 = getelementptr inbounds %struct.slave, %struct.slave* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @slave_warn(i32 %16, i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %46

21:                                               ; preds = %1
  %22 = load %struct.slave*, %struct.slave** %2, align 8
  %23 = getelementptr inbounds %struct.slave, %struct.slave* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.port*, %struct.port** %3, align 8
  %28 = call i32 @ad_update_actor_keys(%struct.port* %27, i32 0)
  %29 = load %struct.slave*, %struct.slave** %2, align 8
  %30 = getelementptr inbounds %struct.slave, %struct.slave* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock_bh(i32* %32)
  %34 = load %struct.slave*, %struct.slave** %2, align 8
  %35 = getelementptr inbounds %struct.slave, %struct.slave* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.slave*, %struct.slave** %2, align 8
  %40 = getelementptr inbounds %struct.slave, %struct.slave* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.port*, %struct.port** %3, align 8
  %43 = getelementptr inbounds %struct.port, %struct.port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @slave_dbg(i32 %38, i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %21, %11
  ret void
}

declare dso_local %struct.TYPE_4__* @SLAVE_AD_INFO(%struct.slave*) #1

declare dso_local i32 @slave_warn(i32, i32, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ad_update_actor_keys(%struct.port*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @slave_dbg(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
