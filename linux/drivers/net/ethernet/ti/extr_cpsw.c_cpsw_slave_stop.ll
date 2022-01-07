; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_slave_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_slave_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_slave = type { i32, i32*, i32 }
%struct.cpsw_common = type { i32 }

@ALE_PORT_STATE = common dso_local global i32 0, align 4
@ALE_PORT_STATE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_slave*, %struct.cpsw_common*)* @cpsw_slave_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_slave_stop(%struct.cpsw_slave* %0, %struct.cpsw_common* %1) #0 {
  %3 = alloca %struct.cpsw_slave*, align 8
  %4 = alloca %struct.cpsw_common*, align 8
  %5 = alloca i32, align 4
  store %struct.cpsw_slave* %0, %struct.cpsw_slave** %3, align 8
  store %struct.cpsw_common* %1, %struct.cpsw_common** %4, align 8
  %6 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %7 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @cpsw_get_slave_port(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %11 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %17 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @phy_stop(i32* %18)
  %20 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %21 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @phy_disconnect(i32* %22)
  %24 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %25 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %27 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ALE_PORT_STATE, align 4
  %31 = load i32, i32* @ALE_PORT_STATE_DISABLE, align 4
  %32 = call i32 @cpsw_ale_control_set(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %34 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @cpsw_sl_reset(i32 %35, i32 100)
  %37 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %38 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @cpsw_sl_ctl_reset(i32 %39)
  br label %41

41:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @cpsw_get_slave_port(i32) #1

declare dso_local i32 @phy_stop(i32*) #1

declare dso_local i32 @phy_disconnect(i32*) #1

declare dso_local i32 @cpsw_ale_control_set(i32, i32, i32, i32) #1

declare dso_local i32 @cpsw_sl_reset(i32, i32) #1

declare dso_local i32 @cpsw_sl_ctl_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
