; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt20xx.c_microtune_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt20xx.c_microtune_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_8__, %struct.microtune_priv* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.microtune_priv = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, %struct.i2c_adapter*, i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mt20xx\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"MT20xx hexdump: %*ph\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"microtune: companycode=%04x part=%02x rev=%02x\0A\00", align 1
@microtune_part = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"microtune %s found, not (yet?) supported, sorry :-/\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"microtune %s found, OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @microtune_attach(%struct.dvb_frontend* %0, %struct.i2c_adapter* %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.microtune_priv*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [21 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.microtune_priv* null, %struct.microtune_priv** %8, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.microtune_priv* @kzalloc(i32 24, i32 %12)
  store %struct.microtune_priv* %13, %struct.microtune_priv** %8, align 8
  %14 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %15 = icmp eq %struct.microtune_priv* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %111

17:                                               ; preds = %3
  %18 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 1
  store %struct.microtune_priv* %18, %struct.microtune_priv** %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %23 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %26 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %27 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store %struct.i2c_adapter* %25, %struct.i2c_adapter** %28, align 8
  %29 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %30 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %33 = call i32 @memset(i8* %32, i32 0, i32 21)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %34 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %35 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %37 = call i32 @tuner_i2c_xfer_send(%struct.TYPE_9__* %35, i8* %36, i32 1)
  %38 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %39 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %41 = call i32 @tuner_i2c_xfer_recv(%struct.TYPE_9__* %39, i8* %40, i32 21)
  %42 = load i64, i64* @debug, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %17
  %45 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %46 = call i32 @tuner_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 21, i8* %45)
  br label %47

47:                                               ; preds = %44, %17
  %48 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 17
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 8
  %52 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 18
  %53 = load i8, i8* %52, align 2
  %54 = zext i8 %53 to i32
  %55 = or i32 %51, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 19
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 20
  %61 = load i8, i8* %60, align 4
  %62 = zext i8 %61 to i32
  %63 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %59, i32 %62)
  %64 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 19
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8**, i8*** @microtune_part, align 8
  %68 = call zeroext i8 @ARRAY_SIZE(i8** %67)
  %69 = zext i8 %68 to i32
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %47
  %72 = load i8**, i8*** @microtune_part, align 8
  %73 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 19
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %72, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* null, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load i8**, i8*** @microtune_part, align 8
  %81 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 19
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %80, i64 %83
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %9, align 8
  br label %86

86:                                               ; preds = %79, %71, %47
  %87 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 19
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  switch i32 %89, label %96 [
    i32 129, label %90
    i32 128, label %93
  ]

90:                                               ; preds = %86
  %91 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %92 = call i32 @mt2032_init(%struct.dvb_frontend* %91)
  br label %99

93:                                               ; preds = %86
  %94 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %95 = call i32 @mt2050_init(%struct.dvb_frontend* %94)
  br label %99

96:                                               ; preds = %86
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %97)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %111

99:                                               ; preds = %93, %90
  %100 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %101 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @strscpy(i32 %105, i8* %106, i32 4)
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %108)
  %110 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %110, %struct.dvb_frontend** %4, align 8
  br label %111

111:                                              ; preds = %99, %96, %16
  %112 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %112
}

declare dso_local %struct.microtune_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @tuner_i2c_xfer_send(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @tuner_i2c_xfer_recv(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @tuner_dbg(i8*, i32, i8*) #1

declare dso_local i32 @tuner_info(i8*, ...) #1

declare dso_local zeroext i8 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @mt2032_init(%struct.dvb_frontend*) #1

declare dso_local i32 @mt2050_init(%struct.dvb_frontend*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
