; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt20xx.c_mt2032_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt20xx.c_mt2032_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.microtune_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.microtune_priv = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"mt2032: xogc = 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"mt2032: xok = 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 2)\0A\00", align 1
@mt2032_tuner_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mt2032_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2032_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.microtune_priv*, align 8
  %4 = alloca [21 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  %10 = load %struct.microtune_priv*, %struct.microtune_priv** %9, align 8
  store %struct.microtune_priv* %10, %struct.microtune_priv** %3, align 8
  store i32 0, i32* %7, align 4
  %11 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 1
  store i8 2, i8* %11, align 1
  %12 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 2
  store i8 -1, i8* %12, align 2
  %13 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 3
  store i8 15, i8* %13, align 1
  %14 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 4
  store i8 31, i8* %14, align 4
  %15 = load %struct.microtune_priv*, %struct.microtune_priv** %3, align 8
  %16 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %15, i32 0, i32 1
  %17 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = call i32 @tuner_i2c_xfer_send(i32* %16, i8* %18, i32 4)
  store i32 %19, i32* %5, align 4
  %20 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 5
  store i8 6, i8* %20, align 1
  %21 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 6
  store i8 -28, i8* %21, align 2
  %22 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 7
  store i8 -113, i8* %22, align 1
  %23 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 8
  store i8 -61, i8* %23, align 8
  %24 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 9
  store i8 78, i8* %24, align 1
  %25 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 10
  store i8 -20, i8* %25, align 2
  %26 = load %struct.microtune_priv*, %struct.microtune_priv** %3, align 8
  %27 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0
  %29 = getelementptr inbounds i8, i8* %28, i64 5
  %30 = call i32 @tuner_i2c_xfer_send(i32* %27, i8* %29, i32 6)
  store i32 %30, i32* %5, align 4
  %31 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 12
  store i8 13, i8* %31, align 4
  %32 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 13
  store i8 50, i8* %32, align 1
  %33 = load %struct.microtune_priv*, %struct.microtune_priv** %3, align 8
  %34 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %33, i32 0, i32 1
  %35 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0
  %36 = getelementptr inbounds i8, i8* %35, i64 12
  %37 = call i32 @tuner_i2c_xfer_send(i32* %34, i8* %36, i32 2)
  store i32 %37, i32* %5, align 4
  store i32 7, i32* %6, align 4
  br label %38

38:                                               ; preds = %86, %1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 7
  %41 = call i32 @tuner_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = call i32 @mdelay(i32 10)
  %43 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0
  store i8 14, i8* %43, align 16
  %44 = load %struct.microtune_priv*, %struct.microtune_priv** %3, align 8
  %45 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %44, i32 0, i32 1
  %46 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0
  %47 = call i32 @tuner_i2c_xfer_send(i32* %45, i8* %46, i32 1)
  %48 = load %struct.microtune_priv*, %struct.microtune_priv** %3, align 8
  %49 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %48, i32 0, i32 1
  %50 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0
  %51 = call i32 @tuner_i2c_xfer_recv(i32* %49, i8* %50, i32 1)
  %52 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0
  %53 = load i8, i8* %52, align 16
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @tuner_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %38
  br label %89

61:                                               ; preds = %38
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 7
  %66 = call i32 @tuner_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 4, i32* %6, align 4
  br label %89

70:                                               ; preds = %61
  %71 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0
  store i8 7, i8* %71, align 16
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 136, %72
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 1
  store i8 %74, i8* %75, align 1
  %76 = load %struct.microtune_priv*, %struct.microtune_priv** %3, align 8
  %77 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0
  %79 = call i32 @tuner_i2c_xfer_send(i32* %77, i8* %78, i32 2)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 2
  br i1 %81, label %82, label %85

82:                                               ; preds = %70
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %70
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 1
  br i1 %88, label %38, label %89

89:                                               ; preds = %86, %69, %60
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.microtune_priv*, %struct.microtune_priv** %3, align 8
  %92 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %94 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = call i32 @memcpy(i32* %95, i32* @mt2032_tuner_ops, i32 4)
  ret i32 1
}

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #1

declare dso_local i32 @tuner_dbg(i8*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @tuner_i2c_xfer_recv(i32*, i8*, i32) #1

declare dso_local i32 @tuner_warn(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
