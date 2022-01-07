; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_netevent_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_netevent_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.mlxsw_sp_netevent_work = type { i32, %struct.neighbour*, %struct.mlxsw_sp* }
%struct.neighbour = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.mlxsw_sp = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.mlxsw_sp_port = type { %struct.mlxsw_sp* }
%struct.neigh_parms = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@DELAY_PROBE_TIME = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@mlxsw_sp_router_neigh_event_work = common dso_local global i32 0, align 4
@mlxsw_sp_router_mp_hash_event_work = common dso_local global i32 0, align 4
@mlxsw_sp_router_update_priority_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @mlxsw_sp_router_netevent_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_router_netevent_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlxsw_sp_netevent_work*, align 8
  %9 = alloca %struct.mlxsw_sp_port*, align 8
  %10 = alloca %struct.mlxsw_sp*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.neigh_parms*, align 8
  %13 = alloca %struct.neighbour*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i64, i64* %6, align 8
  switch i64 %14, label %133 [
    i64 132, label %15
    i64 128, label %65
    i64 130, label %123
    i64 129, label %123
    i64 131, label %128
  ]

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.neigh_parms*
  store %struct.neigh_parms* %17, %struct.neigh_parms** %12, align 8
  %18 = load %struct.neigh_parms*, %struct.neigh_parms** %12, align 8
  %19 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = load %struct.neigh_parms*, %struct.neigh_parms** %12, align 8
  %24 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AF_INET, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load %struct.neigh_parms*, %struct.neigh_parms** %12, align 8
  %32 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AF_INET6, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30, %15
  %39 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %39, i32* %4, align 4
  br label %135

40:                                               ; preds = %30, %22
  %41 = load %struct.neigh_parms*, %struct.neigh_parms** %12, align 8
  %42 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.mlxsw_sp_port* @mlxsw_sp_port_lower_dev_hold(i32 %43)
  store %struct.mlxsw_sp_port* %44, %struct.mlxsw_sp_port** %9, align 8
  %45 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %46 = icmp ne %struct.mlxsw_sp_port* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %48, i32* %4, align 4
  br label %135

49:                                               ; preds = %40
  %50 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %50, i32 0, i32 0
  %52 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %51, align 8
  store %struct.mlxsw_sp* %52, %struct.mlxsw_sp** %10, align 8
  %53 = load %struct.neigh_parms*, %struct.neigh_parms** %12, align 8
  %54 = load i32, i32* @DELAY_PROBE_TIME, align 4
  %55 = call i32 @NEIGH_VAR(%struct.neigh_parms* %53, i32 %54)
  %56 = call i64 @jiffies_to_msecs(i32 %55)
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i64 %57, i64* %62, align 8
  %63 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %64 = call i32 @mlxsw_sp_port_dev_put(%struct.mlxsw_sp_port* %63)
  br label %133

65:                                               ; preds = %3
  %66 = load i8*, i8** %7, align 8
  %67 = bitcast i8* %66 to %struct.neighbour*
  store %struct.neighbour* %67, %struct.neighbour** %13, align 8
  %68 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %69 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AF_INET, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %65
  %76 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %77 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @AF_INET6, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %84, i32* %4, align 4
  br label %135

85:                                               ; preds = %75, %65
  %86 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %87 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call %struct.mlxsw_sp_port* @mlxsw_sp_port_lower_dev_hold(i32 %88)
  store %struct.mlxsw_sp_port* %89, %struct.mlxsw_sp_port** %9, align 8
  %90 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %91 = icmp ne %struct.mlxsw_sp_port* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %93, i32* %4, align 4
  br label %135

94:                                               ; preds = %85
  %95 = load i32, i32* @GFP_ATOMIC, align 4
  %96 = call %struct.mlxsw_sp_netevent_work* @kzalloc(i32 24, i32 %95)
  store %struct.mlxsw_sp_netevent_work* %96, %struct.mlxsw_sp_netevent_work** %8, align 8
  %97 = load %struct.mlxsw_sp_netevent_work*, %struct.mlxsw_sp_netevent_work** %8, align 8
  %98 = icmp ne %struct.mlxsw_sp_netevent_work* %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %101 = call i32 @mlxsw_sp_port_dev_put(%struct.mlxsw_sp_port* %100)
  %102 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %102, i32* %4, align 4
  br label %135

103:                                              ; preds = %94
  %104 = load %struct.mlxsw_sp_netevent_work*, %struct.mlxsw_sp_netevent_work** %8, align 8
  %105 = getelementptr inbounds %struct.mlxsw_sp_netevent_work, %struct.mlxsw_sp_netevent_work* %104, i32 0, i32 0
  %106 = load i32, i32* @mlxsw_sp_router_neigh_event_work, align 4
  %107 = call i32 @INIT_WORK(i32* %105, i32 %106)
  %108 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %109 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %108, i32 0, i32 0
  %110 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %109, align 8
  %111 = load %struct.mlxsw_sp_netevent_work*, %struct.mlxsw_sp_netevent_work** %8, align 8
  %112 = getelementptr inbounds %struct.mlxsw_sp_netevent_work, %struct.mlxsw_sp_netevent_work* %111, i32 0, i32 2
  store %struct.mlxsw_sp* %110, %struct.mlxsw_sp** %112, align 8
  %113 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %114 = load %struct.mlxsw_sp_netevent_work*, %struct.mlxsw_sp_netevent_work** %8, align 8
  %115 = getelementptr inbounds %struct.mlxsw_sp_netevent_work, %struct.mlxsw_sp_netevent_work* %114, i32 0, i32 1
  store %struct.neighbour* %113, %struct.neighbour** %115, align 8
  %116 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %117 = call i32 @neigh_clone(%struct.neighbour* %116)
  %118 = load %struct.mlxsw_sp_netevent_work*, %struct.mlxsw_sp_netevent_work** %8, align 8
  %119 = getelementptr inbounds %struct.mlxsw_sp_netevent_work, %struct.mlxsw_sp_netevent_work* %118, i32 0, i32 0
  %120 = call i32 @mlxsw_core_schedule_work(i32* %119)
  %121 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %122 = call i32 @mlxsw_sp_port_dev_put(%struct.mlxsw_sp_port* %121)
  br label %133

123:                                              ; preds = %3, %3
  %124 = load i8*, i8** %7, align 8
  %125 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %126 = load i32, i32* @mlxsw_sp_router_mp_hash_event_work, align 4
  %127 = call i32 @mlxsw_sp_router_schedule_work(i8* %124, %struct.notifier_block* %125, i32 %126)
  store i32 %127, i32* %4, align 4
  br label %135

128:                                              ; preds = %3
  %129 = load i8*, i8** %7, align 8
  %130 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %131 = load i32, i32* @mlxsw_sp_router_update_priority_work, align 4
  %132 = call i32 @mlxsw_sp_router_schedule_work(i8* %129, %struct.notifier_block* %130, i32 %131)
  store i32 %132, i32* %4, align 4
  br label %135

133:                                              ; preds = %3, %103, %49
  %134 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %133, %128, %123, %99, %92, %83, %47, %38
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.mlxsw_sp_port* @mlxsw_sp_port_lower_dev_hold(i32) #1

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i32 @NEIGH_VAR(%struct.neigh_parms*, i32) #1

declare dso_local i32 @mlxsw_sp_port_dev_put(%struct.mlxsw_sp_port*) #1

declare dso_local %struct.mlxsw_sp_netevent_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @neigh_clone(%struct.neighbour*) #1

declare dso_local i32 @mlxsw_core_schedule_work(i32*) #1

declare dso_local i32 @mlxsw_sp_router_schedule_work(i8*, %struct.notifier_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
