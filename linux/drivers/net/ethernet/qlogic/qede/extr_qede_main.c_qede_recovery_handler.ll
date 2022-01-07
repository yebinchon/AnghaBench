; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_recovery_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_recovery_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i64, i32, i32*, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*)* }

@.str = private unnamed_addr constant [29 x i8] c"Starting a recovery process\0A\00", align 1
@QEDE_STATE_RECOVERY = common dso_local global i64 0, align 8
@QEDE_STATE_OPEN = common dso_local global i64 0, align 8
@QEDE_UNLOAD_RECOVERY = common dso_local global i32 0, align 4
@QEDE_REMOVE_RECOVERY = common dso_local global i32 0, align 4
@QEDE_PROBE_RECOVERY = common dso_local global i32 0, align 4
@QEDE_LOAD_RECOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Recovery handling is done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*)* @qede_recovery_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_recovery_handler(%struct.qede_dev* %0) #0 {
  %2 = alloca %struct.qede_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %2, align 8
  %5 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %6 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %9 = call i32 @DP_NOTICE(%struct.qede_dev* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @QEDE_STATE_RECOVERY, align 8
  %11 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %12 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %14 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %13, i32 0, i32 6
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (i32*)*, i32 (i32*)** %18, align 8
  %20 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %21 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 %19(i32* %22)
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @QEDE_STATE_OPEN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %29 = load i32, i32* @QEDE_UNLOAD_RECOVERY, align 4
  %30 = call i32 @qede_unload(%struct.qede_dev* %28, i32 %29, i32 1)
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %33 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @QEDE_REMOVE_RECOVERY, align 4
  %36 = call i32 @__qede_remove(i32 %34, i32 %35)
  %37 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %38 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %41 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %44 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %47 = call i32 @IS_VF(%struct.qede_dev* %46)
  %48 = load i32, i32* @QEDE_PROBE_RECOVERY, align 4
  %49 = call i32 @__qede_probe(i32 %39, i32 %42, i32 %45, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %31
  %53 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %54 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  br label %81

55:                                               ; preds = %31
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* @QEDE_STATE_OPEN, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %61 = load i32, i32* @QEDE_LOAD_RECOVERY, align 4
  %62 = call i32 @qede_load(%struct.qede_dev* %60, i32 %61, i32 1)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %81

66:                                               ; preds = %59
  %67 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %68 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @qede_config_rx_mode(i32 %69)
  %71 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %72 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @udp_tunnel_get_rx_info(i32 %73)
  br label %75

75:                                               ; preds = %66, %55
  %76 = load i64, i64* %3, align 8
  %77 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %78 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %80 = call i32 @DP_NOTICE(%struct.qede_dev* %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %84

81:                                               ; preds = %65, %52
  %82 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %83 = call i32 @qede_recovery_failed(%struct.qede_dev* %82)
  br label %84

84:                                               ; preds = %81, %75
  ret void
}

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*) #1

declare dso_local i32 @qede_unload(%struct.qede_dev*, i32, i32) #1

declare dso_local i32 @__qede_remove(i32, i32) #1

declare dso_local i32 @__qede_probe(i32, i32, i32, i32, i32) #1

declare dso_local i32 @IS_VF(%struct.qede_dev*) #1

declare dso_local i32 @qede_load(%struct.qede_dev*, i32, i32) #1

declare dso_local i32 @qede_config_rx_mode(i32) #1

declare dso_local i32 @udp_tunnel_get_rx_info(i32) #1

declare dso_local i32 @qede_recovery_failed(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
