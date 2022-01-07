; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_vp2033.c_vp2033_frontend_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_vp2033.c_vp2033_frontend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.mantis_pci = type { %struct.dvb_frontend*, %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.dvb_frontend = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@POWER_ON = common dso_local global i32 0, align 4
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Probing for CU1216 (DVB-C)\00", align 1
@tda10021_attach = common dso_local global i32 0, align 4
@vp2033_tda1002x_cu1216_config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"found Philips CU1216 DVB-C frontend (TDA10021) @ 0x%02x\00", align 1
@tda10023_attach = common dso_local global i32 0, align 4
@vp2033_tda10023_cu1216_config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"found Philips CU1216 DVB-C frontend (TDA10023) @ 0x%02x\00", align 1
@tda1002x_cu1216_tuner_set = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Mantis DVB-C Philips CU1216 frontend attach success\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Frontend on <%s> POWER ON failed! <%d>\00", align 1
@EIO = common dso_local global i32 0, align 4
@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"Done!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mantis_pci*, %struct.dvb_frontend*)* @vp2033_frontend_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp2033_frontend_init(%struct.mantis_pci* %0, %struct.dvb_frontend* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mantis_pci*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.mantis_pci* %0, %struct.mantis_pci** %4, align 8
  store %struct.dvb_frontend* %1, %struct.dvb_frontend** %5, align 8
  %8 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %9 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %8, i32 0, i32 1
  store %struct.i2c_adapter* %9, %struct.i2c_adapter** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %11 = load i32, i32* @POWER_ON, align 4
  %12 = call i32 @mantis_frontend_power(%struct.mantis_pci* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %2
  %16 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %17 = call i32 @mantis_frontend_soft_reset(%struct.mantis_pci* %16)
  %18 = call i32 @msleep(i32 250)
  %19 = load i32, i32* @MANTIS_ERROR, align 4
  %20 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %19, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @tda10021_attach, align 4
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %23 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %24 = call i32 @read_pwm(%struct.mantis_pci* %23)
  %25 = call %struct.dvb_frontend* @dvb_attach(i32 %21, %struct.TYPE_8__* @vp2033_tda1002x_cu1216_config, %struct.i2c_adapter* %22, i32 %24)
  store %struct.dvb_frontend* %25, %struct.dvb_frontend** %5, align 8
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %27 = icmp ne %struct.dvb_frontend* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = load i32, i32* @MANTIS_ERROR, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vp2033_tda1002x_cu1216_config, i32 0, i32 0), align 4
  %31 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %29, i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %45

32:                                               ; preds = %15
  %33 = load i32, i32* @tda10023_attach, align 4
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %35 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %36 = call i32 @read_pwm(%struct.mantis_pci* %35)
  %37 = call %struct.dvb_frontend* @dvb_attach(i32 %33, %struct.TYPE_8__* @vp2033_tda10023_cu1216_config, %struct.i2c_adapter* %34, i32 %36)
  store %struct.dvb_frontend* %37, %struct.dvb_frontend** %5, align 8
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %39 = icmp ne %struct.dvb_frontend* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @MANTIS_ERROR, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vp2033_tda1002x_cu1216_config, i32 0, i32 0), align 4
  %43 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %41, i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %32
  br label %45

45:                                               ; preds = %44, %28
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %47 = icmp ne %struct.dvb_frontend* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, i32* @tda1002x_cu1216_tuner_set, align 4
  %50 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %51 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* @MANTIS_ERROR, align 4
  %55 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %54, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %57

56:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %73

57:                                               ; preds = %48
  br label %67

58:                                               ; preds = %2
  %59 = load i32, i32* @MANTIS_ERROR, align 4
  %60 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %61 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %59, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %73

67:                                               ; preds = %57
  %68 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %69 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %70 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %69, i32 0, i32 0
  store %struct.dvb_frontend* %68, %struct.dvb_frontend** %70, align 8
  %71 = load i32, i32* @MANTIS_DEBUG, align 4
  %72 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %71, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %58, %56
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @mantis_frontend_power(%struct.mantis_pci*, i32) #1

declare dso_local i32 @mantis_frontend_soft_reset(%struct.mantis_pci*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local %struct.dvb_frontend* @dvb_attach(i32, %struct.TYPE_8__*, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @read_pwm(%struct.mantis_pci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
