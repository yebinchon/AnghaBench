; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_reload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i64, i32 }
%struct.qede_reload_args = type { i32 (%struct.qede_dev.0*, %struct.qede_reload_args*)* }
%struct.qede_dev.0 = type opaque

@QEDE_STATE_OPEN = common dso_local global i64 0, align 8
@QEDE_UNLOAD_NORMAL = common dso_local global i32 0, align 4
@QEDE_LOAD_RELOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qede_reload(%struct.qede_dev* %0, %struct.qede_reload_args* %1, i32 %2) #0 {
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca %struct.qede_reload_args*, align 8
  %6 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store %struct.qede_reload_args* %1, %struct.qede_reload_args** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %11 = call i32 @__qede_lock(%struct.qede_dev* %10)
  br label %12

12:                                               ; preds = %9, %3
  %13 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %14 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @QEDE_STATE_OPEN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %20 = load i32, i32* @QEDE_UNLOAD_NORMAL, align 4
  %21 = call i32 @qede_unload(%struct.qede_dev* %19, i32 %20, i32 1)
  %22 = load %struct.qede_reload_args*, %struct.qede_reload_args** %5, align 8
  %23 = icmp ne %struct.qede_reload_args* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.qede_reload_args*, %struct.qede_reload_args** %5, align 8
  %26 = getelementptr inbounds %struct.qede_reload_args, %struct.qede_reload_args* %25, i32 0, i32 0
  %27 = load i32 (%struct.qede_dev.0*, %struct.qede_reload_args*)*, i32 (%struct.qede_dev.0*, %struct.qede_reload_args*)** %26, align 8
  %28 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %29 = bitcast %struct.qede_dev* %28 to %struct.qede_dev.0*
  %30 = load %struct.qede_reload_args*, %struct.qede_reload_args** %5, align 8
  %31 = call i32 %27(%struct.qede_dev.0* %29, %struct.qede_reload_args* %30)
  br label %32

32:                                               ; preds = %24, %18
  %33 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %34 = load i32, i32* @QEDE_LOAD_RELOAD, align 4
  %35 = call i32 @qede_load(%struct.qede_dev* %33, i32 %34, i32 1)
  %36 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %37 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @qede_config_rx_mode(i32 %38)
  br label %52

40:                                               ; preds = %12
  %41 = load %struct.qede_reload_args*, %struct.qede_reload_args** %5, align 8
  %42 = icmp ne %struct.qede_reload_args* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.qede_reload_args*, %struct.qede_reload_args** %5, align 8
  %45 = getelementptr inbounds %struct.qede_reload_args, %struct.qede_reload_args* %44, i32 0, i32 0
  %46 = load i32 (%struct.qede_dev.0*, %struct.qede_reload_args*)*, i32 (%struct.qede_dev.0*, %struct.qede_reload_args*)** %45, align 8
  %47 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %48 = bitcast %struct.qede_dev* %47 to %struct.qede_dev.0*
  %49 = load %struct.qede_reload_args*, %struct.qede_reload_args** %5, align 8
  %50 = call i32 %46(%struct.qede_dev.0* %48, %struct.qede_reload_args* %49)
  br label %51

51:                                               ; preds = %43, %40
  br label %52

52:                                               ; preds = %51, %32
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %57 = call i32 @__qede_unlock(%struct.qede_dev* %56)
  br label %58

58:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @__qede_lock(%struct.qede_dev*) #1

declare dso_local i32 @qede_unload(%struct.qede_dev*, i32, i32) #1

declare dso_local i32 @qede_load(%struct.qede_dev*, i32, i32) #1

declare dso_local i32 @qede_config_rx_mode(i32) #1

declare dso_local i32 @__qede_unlock(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
