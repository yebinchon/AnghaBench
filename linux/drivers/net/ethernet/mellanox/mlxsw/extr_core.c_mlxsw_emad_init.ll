; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { %struct.workqueue_struct*, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.workqueue_struct = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { {}* }
%struct.TYPE_4__ = type { i32 }

@MLXSW_BUS_F_TXRX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"mlxsw_core_emad\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_emad_rx_listener = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*)* @mlxsw_emad_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_emad_init(%struct.mlxsw_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_core*, align 8
  %4 = alloca %struct.workqueue_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %3, align 8
  %7 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MLXSW_BUS_F_TXRX, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

16:                                               ; preds = %1
  %17 = call %struct.workqueue_struct* @alloc_workqueue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.workqueue_struct* %17, %struct.workqueue_struct** %4, align 8
  %18 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %19 = icmp ne %struct.workqueue_struct* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %75

23:                                               ; preds = %16
  %24 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %25 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %26 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %25, i32 0, i32 0
  store %struct.workqueue_struct* %24, %struct.workqueue_struct** %26, align 8
  %27 = call i32 @get_random_bytes(i32* %5, i32 4)
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 %28, 32
  store i32 %29, i32* %5, align 4
  %30 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %31 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @atomic64_set(i32* %32, i32 %33)
  %35 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %36 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %40 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %44 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %45 = call i32 @mlxsw_core_trap_register(%struct.mlxsw_core* %43, i32* @mlxsw_emad_rx_listener, %struct.mlxsw_core* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %23
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %75

50:                                               ; preds = %23
  %51 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %52 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = bitcast {}** %54 to i32 (%struct.mlxsw_core*)**
  %56 = load i32 (%struct.mlxsw_core*)*, i32 (%struct.mlxsw_core*)** %55, align 8
  %57 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %58 = call i32 %56(%struct.mlxsw_core* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %66

62:                                               ; preds = %50
  %63 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %64 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  store i32 0, i32* %2, align 4
  br label %75

66:                                               ; preds = %61
  %67 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %68 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %69 = call i32 @mlxsw_core_trap_unregister(%struct.mlxsw_core* %67, i32* @mlxsw_emad_rx_listener, %struct.mlxsw_core* %68)
  %70 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %71 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %70, i32 0, i32 0
  %72 = load %struct.workqueue_struct*, %struct.workqueue_struct** %71, align 8
  %73 = call i32 @destroy_workqueue(%struct.workqueue_struct* %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %66, %62, %48, %20, %15
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.workqueue_struct* @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mlxsw_core_trap_register(%struct.mlxsw_core*, i32*, %struct.mlxsw_core*) #1

declare dso_local i32 @mlxsw_core_trap_unregister(%struct.mlxsw_core*, i32*, %struct.mlxsw_core*) #1

declare dso_local i32 @destroy_workqueue(%struct.workqueue_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
