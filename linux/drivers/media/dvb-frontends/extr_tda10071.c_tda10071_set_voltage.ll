; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda10071_dev* }
%struct.tda10071_dev = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.tda10071_cmd = type { i32*, i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"voltage=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid fe_sec_voltage\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CMD_LNB_SET_DC_LEVEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @tda10071_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10071_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
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
  br label %59

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %33 [
    i32 130, label %30
    i32 129, label %31
    i32 128, label %32
  ]

30:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %39

31:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  br label %39

32:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %39

33:                                               ; preds = %24
  %34 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %59

39:                                               ; preds = %32, %31, %30
  %40 = load i32, i32* @CMD_LNB_SET_DC_LEVEL, align 4
  %41 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %40, i32* %43, align 4
  %44 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %47, i32* %50, align 4
  %51 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 1
  store i32 3, i32* %51, align 8
  %52 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %53 = call i32 @tda10071_cmd_execute(%struct.tda10071_dev* %52, %struct.tda10071_cmd* %8)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  br label %59

57:                                               ; preds = %39
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %65

59:                                               ; preds = %56, %33, %21
  %60 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %57
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @tda10071_cmd_execute(%struct.tda10071_dev*, %struct.tda10071_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
