; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_diseqc_send_burst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_diseqc_send_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda10071_dev* }
%struct.tda10071_dev = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.tda10071_cmd = type { i32*, i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"fe_sec_mini_cmd=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid fe_sec_mini_cmd\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"loop=%d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CMD_LNB_SEND_TONEBURST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @tda10071_diseqc_send_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10071_diseqc_send_burst(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tda10071_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.tda10071_cmd, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = load %struct.tda10071_dev*, %struct.tda10071_dev** %14, align 8
  store %struct.tda10071_dev* %15, %struct.tda10071_dev** %6, align 8
  %16 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %17 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %16, i32 0, i32 2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %7, align 8
  %19 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %20 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %104

26:                                               ; preds = %2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %34 [
    i32 129, label %32
    i32 128, label %33
  ]

32:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  br label %40

33:                                               ; preds = %26
  store i32 1, i32* %12, align 4
  br label %40

34:                                               ; preds = %26
  %35 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %104

40:                                               ; preds = %33, %32
  store i32 500, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %63, %40
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %50, label %66

50:                                               ; preds = %48
  %51 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %52 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @regmap_read(i32 %53, i32 71, i32* %11)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %104

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  %60 = lshr i32 %59, 0
  %61 = and i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %10, align 4
  br label %41

66:                                               ; preds = %48
  %67 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = load i32, i32* %10, align 4
  %70 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @ETIMEDOUT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %9, align 4
  br label %104

76:                                               ; preds = %66
  %77 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %78 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @regmap_update_bits(i32 %79, i32 71, i32 1, i32 0)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %104

84:                                               ; preds = %76
  %85 = load i32, i32* @CMD_LNB_SEND_TONEBURST, align 4
  %86 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %85, i32* %88, align 4
  %89 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* %12, align 4
  %93 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 %92, i32* %95, align 4
  %96 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 1
  store i32 3, i32* %96, align 8
  %97 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %98 = call i32 @tda10071_cmd_execute(%struct.tda10071_dev* %97, %struct.tda10071_cmd* %8)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %84
  br label %104

102:                                              ; preds = %84
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %110

104:                                              ; preds = %101, %83, %73, %57, %34, %23
  %105 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = load i32, i32* %9, align 4
  %108 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %104, %102
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @tda10071_cmd_execute(%struct.tda10071_dev*, %struct.tda10071_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
