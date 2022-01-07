; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6110x.c_stv6110x_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6110x.c_stv6110x_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv6110x_devctl = type { i32 }
%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.stv6110x_state* }
%struct.TYPE_2__ = type { i32 }
%struct.stv6110x_state = type { %struct.stv6110x_devctl*, %struct.i2c_adapter*, %struct.stv6110x_config*, %struct.dvb_frontend* }
%struct.stv6110x_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@stv6110x_ctl = common dso_local global %struct.stv6110x_devctl zeroinitializer, align 4
@stv6110x_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Attaching STV6110x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.stv6110x_devctl* @stv6110x_attach(%struct.dvb_frontend* %0, %struct.stv6110x_config* %1, %struct.i2c_adapter* %2) #0 {
  %4 = alloca %struct.stv6110x_devctl*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.stv6110x_config*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.stv6110x_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.stv6110x_config* %1, %struct.stv6110x_config** %6, align 8
  store %struct.i2c_adapter* %2, %struct.i2c_adapter** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.stv6110x_state* @kzalloc(i32 32, i32 %9)
  store %struct.stv6110x_state* %10, %struct.stv6110x_state** %8, align 8
  %11 = load %struct.stv6110x_state*, %struct.stv6110x_state** %8, align 8
  %12 = icmp ne %struct.stv6110x_state* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.stv6110x_devctl* null, %struct.stv6110x_devctl** %4, align 8
  br label %47

14:                                               ; preds = %3
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %16 = load %struct.stv6110x_state*, %struct.stv6110x_state** %8, align 8
  %17 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %16, i32 0, i32 3
  store %struct.dvb_frontend* %15, %struct.dvb_frontend** %17, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %19 = load %struct.stv6110x_state*, %struct.stv6110x_state** %8, align 8
  %20 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %19, i32 0, i32 1
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %20, align 8
  %21 = load %struct.stv6110x_config*, %struct.stv6110x_config** %6, align 8
  %22 = load %struct.stv6110x_state*, %struct.stv6110x_state** %8, align 8
  %23 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %22, i32 0, i32 2
  store %struct.stv6110x_config* %21, %struct.stv6110x_config** %23, align 8
  %24 = load %struct.stv6110x_state*, %struct.stv6110x_state** %8, align 8
  %25 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %24, i32 0, i32 0
  store %struct.stv6110x_devctl* @stv6110x_ctl, %struct.stv6110x_devctl** %25, align 8
  %26 = load %struct.stv6110x_state*, %struct.stv6110x_state** %8, align 8
  %27 = call i32 @st6110x_init_regs(%struct.stv6110x_state* %26)
  %28 = load %struct.stv6110x_state*, %struct.stv6110x_state** %8, align 8
  %29 = call i32 @stv6110x_setup_divider(%struct.stv6110x_state* %28)
  %30 = load %struct.stv6110x_state*, %struct.stv6110x_state** %8, align 8
  %31 = call i32 @stv6110x_set_frontend_opts(%struct.stv6110x_state* %30)
  %32 = load %struct.stv6110x_state*, %struct.stv6110x_state** %8, align 8
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %33, i32 0, i32 1
  store %struct.stv6110x_state* %32, %struct.stv6110x_state** %34, align 8
  %35 = load i32, i32* @stv6110x_ops, align 4
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.stv6110x_state*, %struct.stv6110x_state** %8, align 8
  %40 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %39, i32 0, i32 1
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %40, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %41, i32 0, i32 0
  %43 = call i32 @dev_info(i32* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.stv6110x_state*, %struct.stv6110x_state** %8, align 8
  %45 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %44, i32 0, i32 0
  %46 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %45, align 8
  store %struct.stv6110x_devctl* %46, %struct.stv6110x_devctl** %4, align 8
  br label %47

47:                                               ; preds = %14, %13
  %48 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %4, align 8
  ret %struct.stv6110x_devctl* %48
}

declare dso_local %struct.stv6110x_state* @kzalloc(i32, i32) #1

declare dso_local i32 @st6110x_init_regs(%struct.stv6110x_state*) #1

declare dso_local i32 @stv6110x_setup_divider(%struct.stv6110x_state*) #1

declare dso_local i32 @stv6110x_set_frontend_opts(%struct.stv6110x_state*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
