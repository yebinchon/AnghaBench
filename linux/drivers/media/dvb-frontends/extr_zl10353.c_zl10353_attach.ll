; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zl10353.c_zl10353_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zl10353.c_zl10353_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zl10353_config = type { i32 }
%struct.dvb_frontend = type { %struct.zl10353_state*, i32 }
%struct.zl10353_state = type { %struct.dvb_frontend, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CHIP_ID = common dso_local global i32 0, align 4
@ID_ZL10353 = common dso_local global i32 0, align 4
@ID_CE6230 = common dso_local global i32 0, align 4
@ID_CE6231 = common dso_local global i32 0, align 4
@zl10353_ops = common dso_local global %struct.zl10353_config zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @zl10353_attach(%struct.zl10353_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.zl10353_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.zl10353_state*, align 8
  %7 = alloca i32, align 4
  store %struct.zl10353_config* %0, %struct.zl10353_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.zl10353_state* null, %struct.zl10353_state** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.zl10353_state* @kzalloc(i32 32, i32 %8)
  store %struct.zl10353_state* %9, %struct.zl10353_state** %6, align 8
  %10 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  %11 = icmp eq %struct.zl10353_state* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  %16 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %15, i32 0, i32 2
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %16, align 8
  %17 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  %18 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %17, i32 0, i32 1
  %19 = load %struct.zl10353_config*, %struct.zl10353_config** %4, align 8
  %20 = call i32 @memcpy(i32* %18, %struct.zl10353_config* %19, i32 4)
  %21 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  %22 = load i32, i32* @CHIP_ID, align 4
  %23 = call i32 @zl10353_read_register(%struct.zl10353_state* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @ID_ZL10353, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %13
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ID_CE6230, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ID_CE6231, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %47

36:                                               ; preds = %31, %27, %13
  %37 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  %38 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %38, i32 0, i32 1
  %40 = call i32 @memcpy(i32* %39, %struct.zl10353_config* @zl10353_ops, i32 4)
  %41 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  %42 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  %43 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %43, i32 0, i32 0
  store %struct.zl10353_state* %41, %struct.zl10353_state** %44, align 8
  %45 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  %46 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %45, i32 0, i32 0
  store %struct.dvb_frontend* %46, %struct.dvb_frontend** %3, align 8
  br label %50

47:                                               ; preds = %35, %12
  %48 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  %49 = call i32 @kfree(%struct.zl10353_state* %48)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %50

50:                                               ; preds = %47, %36
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %51
}

declare dso_local %struct.zl10353_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.zl10353_config*, i32) #1

declare dso_local i32 @zl10353_read_register(%struct.zl10353_state*, i32) #1

declare dso_local i32 @kfree(%struct.zl10353_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
