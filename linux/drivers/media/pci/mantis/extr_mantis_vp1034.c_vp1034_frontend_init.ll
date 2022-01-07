; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_vp1034.c_vp1034_frontend_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_vp1034.c_vp1034_frontend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.mantis_pci = type { %struct.dvb_frontend*, %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.dvb_frontend = type { i32 }

@POWER_ON = common dso_local global i32 0, align 4
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Probing for MB86A16 (DVB-S/DSS)\00", align 1
@mb86a16_attach = common dso_local global i32 0, align 4
@vp1034_mb86a16_config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"found MB86A16 DVB-S/DSS frontend @0x%02x\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Frontend on <%s> POWER ON failed! <%d>\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Done!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mantis_pci*, %struct.dvb_frontend*)* @vp1034_frontend_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp1034_frontend_init(%struct.mantis_pci* %0, %struct.dvb_frontend* %1) #0 {
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
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %17 = call i32 @mantis_frontend_soft_reset(%struct.mantis_pci* %16)
  %18 = call i32 @msleep(i32 250)
  %19 = load i32, i32* @MANTIS_ERROR, align 4
  %20 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %19, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @mb86a16_attach, align 4
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %23 = call %struct.dvb_frontend* @dvb_attach(i32 %21, %struct.TYPE_3__* @vp1034_mb86a16_config, %struct.i2c_adapter* %22)
  store %struct.dvb_frontend* %23, %struct.dvb_frontend** %5, align 8
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %25 = icmp ne %struct.dvb_frontend* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load i32, i32* @MANTIS_ERROR, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vp1034_mb86a16_config, i32 0, i32 0), align 4
  %29 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %27, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %31

30:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %47

31:                                               ; preds = %26
  br label %41

32:                                               ; preds = %2
  %33 = load i32, i32* @MANTIS_ERROR, align 4
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %33, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %47

41:                                               ; preds = %31
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %43 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %44 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %43, i32 0, i32 0
  store %struct.dvb_frontend* %42, %struct.dvb_frontend** %44, align 8
  %45 = load i32, i32* @MANTIS_ERROR, align 4
  %46 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %45, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %32, %30
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @mantis_frontend_power(%struct.mantis_pci*, i32) #1

declare dso_local i32 @mantis_frontend_soft_reset(%struct.mantis_pci*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local %struct.dvb_frontend* @dvb_attach(i32, %struct.TYPE_3__*, %struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
