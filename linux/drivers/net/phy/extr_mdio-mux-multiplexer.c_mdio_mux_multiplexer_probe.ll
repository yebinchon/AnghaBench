; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-multiplexer.c_mdio_mux_multiplexer_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-multiplexer.c_mdio_mux_multiplexer_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mdio_mux_multiplexer_state = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to get mux: %d\0A\00", align 1
@mdio_mux_multiplexer_switch_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mdio_mux_multiplexer_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_mux_multiplexer_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mdio_mux_multiplexer_state*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mdio_mux_multiplexer_state* @devm_kzalloc(%struct.device* %10, i32 8, i32 %11)
  store %struct.mdio_mux_multiplexer_state* %12, %struct.mdio_mux_multiplexer_state** %5, align 8
  %13 = load %struct.mdio_mux_multiplexer_state*, %struct.mdio_mux_multiplexer_state** %5, align 8
  %14 = icmp ne %struct.mdio_mux_multiplexer_state* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @devm_mux_control_get(%struct.device* %19, i32* null)
  %21 = load %struct.mdio_mux_multiplexer_state*, %struct.mdio_mux_multiplexer_state** %5, align 8
  %22 = getelementptr inbounds %struct.mdio_mux_multiplexer_state, %struct.mdio_mux_multiplexer_state* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mdio_mux_multiplexer_state*, %struct.mdio_mux_multiplexer_state** %5, align 8
  %24 = getelementptr inbounds %struct.mdio_mux_multiplexer_state, %struct.mdio_mux_multiplexer_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %18
  %29 = load %struct.mdio_mux_multiplexer_state*, %struct.mdio_mux_multiplexer_state** %5, align 8
  %30 = getelementptr inbounds %struct.mdio_mux_multiplexer_state, %struct.mdio_mux_multiplexer_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @EPROBE_DEFER, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %28
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %60

44:                                               ; preds = %18
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.mdio_mux_multiplexer_state*, %struct.mdio_mux_multiplexer_state** %5, align 8
  %47 = call i32 @platform_set_drvdata(%struct.platform_device* %45, %struct.mdio_mux_multiplexer_state* %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @mdio_mux_multiplexer_switch_fn, align 4
  %55 = load %struct.mdio_mux_multiplexer_state*, %struct.mdio_mux_multiplexer_state** %5, align 8
  %56 = getelementptr inbounds %struct.mdio_mux_multiplexer_state, %struct.mdio_mux_multiplexer_state* %55, i32 0, i32 0
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = call i32 @mdio_mux_init(%struct.device* %49, i32 %53, i32 %54, i32* %56, %struct.platform_device* %57, i32* null)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %44, %42, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.mdio_mux_multiplexer_state* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_mux_control_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mdio_mux_multiplexer_state*) #1

declare dso_local i32 @mdio_mux_init(%struct.device*, i32, i32, i32*, %struct.platform_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
