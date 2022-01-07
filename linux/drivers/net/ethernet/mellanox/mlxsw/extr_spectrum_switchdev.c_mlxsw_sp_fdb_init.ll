; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_fdb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_fdb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.mlxsw_sp = type { %struct.TYPE_3__*, %struct.mlxsw_sp_bridge* }
%struct.TYPE_3__ = type { i32 }
%struct.mlxsw_sp_bridge = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@MLXSW_SP_DEFAULT_AGEING_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to set default ageing time\0A\00", align 1
@mlxsw_sp_switchdev_notifier = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to register switchdev notifier\0A\00", align 1
@mlxsw_sp_switchdev_blocking_notifier = common dso_local global %struct.notifier_block zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Failed to register switchdev blocking notifier\0A\00", align 1
@mlxsw_sp_fdb_notify_work = common dso_local global i32 0, align 4
@MLXSW_SP_DEFAULT_LEARNING_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*)* @mlxsw_sp_fdb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fdb_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_bridge*, align 8
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %7 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %7, i32 0, i32 1
  %9 = load %struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge** %8, align 8
  store %struct.mlxsw_sp_bridge* %9, %struct.mlxsw_sp_bridge** %4, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %11 = load i32, i32* @MLXSW_SP_DEFAULT_AGEING_TIME, align 4
  %12 = call i32 @mlxsw_sp_ageing_set(%struct.mlxsw_sp* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %62

23:                                               ; preds = %1
  %24 = call i32 @register_switchdev_notifier(i32* @mlxsw_sp_switchdev_notifier)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %62

35:                                               ; preds = %23
  store %struct.notifier_block* @mlxsw_sp_switchdev_blocking_notifier, %struct.notifier_block** %5, align 8
  %36 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %37 = call i32 @register_switchdev_blocking_notifier(%struct.notifier_block* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %59

47:                                               ; preds = %35
  %48 = load %struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge** %4, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_bridge, %struct.mlxsw_sp_bridge* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* @mlxsw_sp_fdb_notify_work, align 4
  %52 = call i32 @INIT_DELAYED_WORK(i32* %50, i32 %51)
  %53 = load i32, i32* @MLXSW_SP_DEFAULT_LEARNING_INTERVAL, align 4
  %54 = load %struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge** %4, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_bridge, %struct.mlxsw_sp_bridge* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %58 = call i32 @mlxsw_sp_fdb_notify_work_schedule(%struct.mlxsw_sp* %57)
  store i32 0, i32* %2, align 4
  br label %62

59:                                               ; preds = %40
  %60 = call i32 @unregister_switchdev_notifier(i32* @mlxsw_sp_switchdev_notifier)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %47, %27, %15
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @mlxsw_sp_ageing_set(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @register_switchdev_notifier(i32*) #1

declare dso_local i32 @register_switchdev_blocking_notifier(%struct.notifier_block*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mlxsw_sp_fdb_notify_work_schedule(%struct.mlxsw_sp*) #1

declare dso_local i32 @unregister_switchdev_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
