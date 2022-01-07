; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_vp1033.c_vp1033_frontend_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_vp1033.c_vp1033_frontend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.mantis_pci = type { %struct.dvb_frontend*, %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.dvb_frontend = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@POWER_ON = common dso_local global i32 0, align 4
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Probing for STV0299 (DVB-S)\00", align 1
@stv0299_attach = common dso_local global i32 0, align 4
@lgtdqcs001f_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@lgtdqcs001f_tuner_set = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"found STV0299 DVB-S frontend @ 0x%02x\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Mantis DVB-S STV0299 frontend attach success\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Frontend on <%s> POWER ON failed! <%d>\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Done!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mantis_pci*, %struct.dvb_frontend*)* @vp1033_frontend_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp1033_frontend_init(%struct.mantis_pci* %0, %struct.dvb_frontend* %1) #0 {
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
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %17 = call i32 @mantis_frontend_soft_reset(%struct.mantis_pci* %16)
  %18 = call i32 @msleep(i32 250)
  %19 = load i32, i32* @MANTIS_ERROR, align 4
  %20 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %19, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @stv0299_attach, align 4
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %23 = call %struct.dvb_frontend* @dvb_attach(i32 %21, %struct.TYPE_7__* @lgtdqcs001f_config, %struct.i2c_adapter* %22)
  store %struct.dvb_frontend* %23, %struct.dvb_frontend** %5, align 8
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %25 = icmp ne %struct.dvb_frontend* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %15
  %27 = load i32, i32* @lgtdqcs001f_tuner_set, align 4
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @MANTIS_ERROR, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lgtdqcs001f_config, i32 0, i32 0), align 4
  %34 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %32, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @MANTIS_ERROR, align 4
  %36 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %35, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %38

37:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %54

38:                                               ; preds = %26
  br label %48

39:                                               ; preds = %2
  %40 = load i32, i32* @MANTIS_ERROR, align 4
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %40, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %54

48:                                               ; preds = %38
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %50 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %51 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %50, i32 0, i32 0
  store %struct.dvb_frontend* %49, %struct.dvb_frontend** %51, align 8
  %52 = load i32, i32* @MANTIS_ERROR, align 4
  %53 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %52, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %39, %37
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mantis_frontend_power(%struct.mantis_pci*, i32) #1

declare dso_local i32 @mantis_frontend_soft_reset(%struct.mantis_pci*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local %struct.dvb_frontend* @dvb_attach(i32, %struct.TYPE_7__*, %struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
