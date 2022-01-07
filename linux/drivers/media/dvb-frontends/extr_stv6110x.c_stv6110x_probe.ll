; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6110x.c_stv6110x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6110x.c_stv6110x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.stv6110x_config* }
%struct.stv6110x_config = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.stv6110x_state = type { %struct.TYPE_3__*, i32*, %struct.stv6110x_config*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stv6110x_ctl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Probed STV6110x\0A\00", align 1
@stv6110x_get_devctl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @stv6110x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv6110x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.stv6110x_config*, align 8
  %7 = alloca %struct.stv6110x_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.stv6110x_config*, %struct.stv6110x_config** %10, align 8
  store %struct.stv6110x_config* %11, %struct.stv6110x_config** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.stv6110x_state* @kzalloc(i32 32, i32 %12)
  store %struct.stv6110x_state* %13, %struct.stv6110x_state** %7, align 8
  %14 = load %struct.stv6110x_state*, %struct.stv6110x_state** %7, align 8
  %15 = icmp ne %struct.stv6110x_state* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.stv6110x_config*, %struct.stv6110x_config** %6, align 8
  %21 = getelementptr inbounds %struct.stv6110x_config, %struct.stv6110x_config* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.stv6110x_state*, %struct.stv6110x_state** %7, align 8
  %24 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load %struct.stv6110x_state*, %struct.stv6110x_state** %7, align 8
  %29 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %28, i32 0, i32 0
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %29, align 8
  %30 = load %struct.stv6110x_config*, %struct.stv6110x_config** %6, align 8
  %31 = load %struct.stv6110x_state*, %struct.stv6110x_state** %7, align 8
  %32 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %31, i32 0, i32 2
  store %struct.stv6110x_config* %30, %struct.stv6110x_config** %32, align 8
  %33 = load %struct.stv6110x_state*, %struct.stv6110x_state** %7, align 8
  %34 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %33, i32 0, i32 1
  store i32* @stv6110x_ctl, i32** %34, align 8
  %35 = load %struct.stv6110x_state*, %struct.stv6110x_state** %7, align 8
  %36 = call i32 @st6110x_init_regs(%struct.stv6110x_state* %35)
  %37 = load %struct.stv6110x_state*, %struct.stv6110x_state** %7, align 8
  %38 = call i32 @stv6110x_setup_divider(%struct.stv6110x_state* %37)
  %39 = load %struct.stv6110x_state*, %struct.stv6110x_state** %7, align 8
  %40 = call i32 @stv6110x_set_frontend_opts(%struct.stv6110x_state* %39)
  %41 = load %struct.stv6110x_state*, %struct.stv6110x_state** %7, align 8
  %42 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load %struct.stv6110x_state*, %struct.stv6110x_state** %7, align 8
  %48 = call i32 @i2c_set_clientdata(%struct.i2c_client* %46, %struct.stv6110x_state* %47)
  %49 = load i32, i32* @stv6110x_get_devctl, align 4
  %50 = load %struct.stv6110x_config*, %struct.stv6110x_config** %6, align 8
  %51 = getelementptr inbounds %struct.stv6110x_config, %struct.stv6110x_config* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %19, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.stv6110x_state* @kzalloc(i32, i32) #1

declare dso_local i32 @st6110x_init_regs(%struct.stv6110x_state*) #1

declare dso_local i32 @stv6110x_setup_divider(%struct.stv6110x_state*) #1

declare dso_local i32 @stv6110x_set_frontend_opts(%struct.stv6110x_state*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.stv6110x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
