; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10021.c_tda10021_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10021.c_tda10021_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda10021_state*, i32 }
%struct.tda10021_state = type { i32, %struct.dvb_frontend, %struct.tda1002x_config*, i32, %struct.i2c_adapter* }
%struct.tda1002x_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@tda10021_inittab = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"TDA10021: i2c-addr = 0x%02x, id = 0x%02x\0A\00", align 1
@tda10021_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @tda10021_attach(%struct.tda1002x_config* %0, %struct.i2c_adapter* %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.tda1002x_config*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tda10021_state*, align 8
  %9 = alloca i32, align 4
  store %struct.tda1002x_config* %0, %struct.tda1002x_config** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.tda10021_state* null, %struct.tda10021_state** %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.tda10021_state* @kzalloc(i32 48, i32 %10)
  store %struct.tda10021_state* %11, %struct.tda10021_state** %8, align 8
  %12 = load %struct.tda10021_state*, %struct.tda10021_state** %8, align 8
  %13 = icmp eq %struct.tda10021_state* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %58

15:                                               ; preds = %3
  %16 = load %struct.tda1002x_config*, %struct.tda1002x_config** %5, align 8
  %17 = load %struct.tda10021_state*, %struct.tda10021_state** %8, align 8
  %18 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %17, i32 0, i32 2
  store %struct.tda1002x_config* %16, %struct.tda1002x_config** %18, align 8
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %20 = load %struct.tda10021_state*, %struct.tda10021_state** %8, align 8
  %21 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %20, i32 0, i32 4
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.tda10021_state*, %struct.tda10021_state** %8, align 8
  %24 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32*, i32** @tda10021_inittab, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tda10021_state*, %struct.tda10021_state** %8, align 8
  %29 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.tda10021_state*, %struct.tda10021_state** %8, align 8
  %31 = call i32 @tda10021_readreg(%struct.tda10021_state* %30, i32 26)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 240
  %34 = icmp ne i32 %33, 112
  br i1 %34, label %35, label %36

35:                                               ; preds = %15
  br label %58

36:                                               ; preds = %15
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 125
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %58

40:                                               ; preds = %36
  %41 = load %struct.tda10021_state*, %struct.tda10021_state** %8, align 8
  %42 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %41, i32 0, i32 2
  %43 = load %struct.tda1002x_config*, %struct.tda1002x_config** %42, align 8
  %44 = getelementptr inbounds %struct.tda1002x_config, %struct.tda1002x_config* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct.tda10021_state*, %struct.tda10021_state** %8, align 8
  %49 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %49, i32 0, i32 1
  %51 = call i32 @memcpy(i32* %50, i32* @tda10021_ops, i32 4)
  %52 = load %struct.tda10021_state*, %struct.tda10021_state** %8, align 8
  %53 = load %struct.tda10021_state*, %struct.tda10021_state** %8, align 8
  %54 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %54, i32 0, i32 0
  store %struct.tda10021_state* %52, %struct.tda10021_state** %55, align 8
  %56 = load %struct.tda10021_state*, %struct.tda10021_state** %8, align 8
  %57 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %56, i32 0, i32 1
  store %struct.dvb_frontend* %57, %struct.dvb_frontend** %4, align 8
  br label %61

58:                                               ; preds = %39, %35, %14
  %59 = load %struct.tda10021_state*, %struct.tda10021_state** %8, align 8
  %60 = call i32 @kfree(%struct.tda10021_state* %59)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %61

61:                                               ; preds = %58, %40
  %62 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %62
}

declare dso_local %struct.tda10021_state* @kzalloc(i32, i32) #1

declare dso_local i32 @tda10021_readreg(%struct.tda10021_state*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.tda10021_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
