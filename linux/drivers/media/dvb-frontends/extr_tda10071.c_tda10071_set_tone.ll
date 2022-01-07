; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_set_tone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_set_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda10071_dev* }
%struct.tda10071_dev = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.tda10071_cmd = type { i32*, i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"tone_mode=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid fe_sec_tone_mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CMD_LNB_PCB_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @tda10071_set_tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10071_set_tone(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tda10071_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.tda10071_cmd, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.tda10071_dev*, %struct.tda10071_dev** %12, align 8
  store %struct.tda10071_dev* %13, %struct.tda10071_dev** %6, align 8
  %14 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %15 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %14, i32 0, i32 1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %7, align 8
  %17 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %18 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %64

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %32 [
    i32 128, label %30
    i32 129, label %31
  ]

30:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  br label %38

31:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %38

32:                                               ; preds = %24
  %33 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %64

38:                                               ; preds = %31, %30
  %39 = load i32, i32* @CMD_LNB_PCB_CONFIG, align 4
  %40 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %39, i32* %42, align 4
  %43 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32 %52, i32* %55, align 4
  %56 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 1
  store i32 5, i32* %56, align 8
  %57 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %58 = call i32 @tda10071_cmd_execute(%struct.tda10071_dev* %57, %struct.tda10071_cmd* %8)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %38
  br label %64

62:                                               ; preds = %38
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %70

64:                                               ; preds = %61, %32, %21
  %65 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %62
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @tda10071_cmd_execute(%struct.tda10071_dev*, %struct.tda10071_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
