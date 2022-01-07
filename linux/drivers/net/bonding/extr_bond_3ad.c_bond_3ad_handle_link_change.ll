; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_bond_3ad_handle_link_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_bond_3ad_handle_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.aggregator = type { i32 }
%struct.port = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.port }

@.str = private unnamed_addr constant [44 x i8] c"link status changed for uninitialized port\0A\00", align 1
@BOND_LINK_UP = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Port %d changed link status to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bond_3ad_handle_link_change(%struct.slave* %0, i8 signext %1) #0 {
  %3 = alloca %struct.slave*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.aggregator*, align 8
  %6 = alloca %struct.port*, align 8
  %7 = alloca i32, align 4
  store %struct.slave* %0, %struct.slave** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.slave*, %struct.slave** %3, align 8
  %9 = call %struct.TYPE_4__* @SLAVE_AD_INFO(%struct.slave* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.port* %10, %struct.port** %6, align 8
  %11 = load %struct.port*, %struct.port** %6, align 8
  %12 = getelementptr inbounds %struct.port, %struct.port* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.slave*, %struct.slave** %3, align 8
  %17 = getelementptr inbounds %struct.slave, %struct.slave* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.slave*, %struct.slave** %3, align 8
  %22 = getelementptr inbounds %struct.slave, %struct.slave* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @slave_warn(i32 %20, i32 %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %79

25:                                               ; preds = %2
  %26 = load %struct.slave*, %struct.slave** %3, align 8
  %27 = getelementptr inbounds %struct.slave, %struct.slave* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load i8, i8* %4, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @BOND_LINK_UP, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load %struct.port*, %struct.port** %6, align 8
  %38 = getelementptr inbounds %struct.port, %struct.port* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.port*, %struct.port** %6, align 8
  %40 = call i32 @ad_update_actor_keys(%struct.port* %39, i32 0)
  br label %46

41:                                               ; preds = %25
  %42 = load %struct.port*, %struct.port** %6, align 8
  %43 = getelementptr inbounds %struct.port, %struct.port* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load %struct.port*, %struct.port** %6, align 8
  %45 = call i32 @ad_update_actor_keys(%struct.port* %44, i32 1)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.port*, %struct.port** %6, align 8
  %48 = call %struct.aggregator* @__get_first_agg(%struct.port* %47)
  store %struct.aggregator* %48, %struct.aggregator** %5, align 8
  %49 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  %50 = call i32 @ad_agg_selection_logic(%struct.aggregator* %49, i32* %7)
  %51 = load %struct.slave*, %struct.slave** %3, align 8
  %52 = getelementptr inbounds %struct.slave, %struct.slave* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock_bh(i32* %54)
  %56 = load %struct.slave*, %struct.slave** %3, align 8
  %57 = getelementptr inbounds %struct.slave, %struct.slave* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.slave*, %struct.slave** %3, align 8
  %62 = getelementptr inbounds %struct.slave, %struct.slave* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.port*, %struct.port** %6, align 8
  %65 = getelementptr inbounds %struct.port, %struct.port* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i8, i8* %4, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* @BOND_LINK_UP, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %74 = call i32 @slave_dbg(i32 %60, i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %66, i8* %73)
  %75 = load %struct.slave*, %struct.slave** %3, align 8
  %76 = getelementptr inbounds %struct.slave, %struct.slave* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = call i32 @bond_update_slave_arr(%struct.TYPE_3__* %77, i32* null)
  br label %79

79:                                               ; preds = %46, %15
  ret void
}

declare dso_local %struct.TYPE_4__* @SLAVE_AD_INFO(%struct.slave*) #1

declare dso_local i32 @slave_warn(i32, i32, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ad_update_actor_keys(%struct.port*, i32) #1

declare dso_local %struct.aggregator* @__get_first_agg(%struct.port*) #1

declare dso_local i32 @ad_agg_selection_logic(%struct.aggregator*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @slave_dbg(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @bond_update_slave_arr(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
