; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_ca.c_mantis_ca_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_ca.c_mantis_ca_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { %struct.mantis_ca*, %struct.dvb_adapter }
%struct.mantis_ca = type { %struct.TYPE_2__, i32, i32, i32, i32, %struct.mantis_pci* }
%struct.TYPE_2__ = type { %struct.mantis_ca*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_adapter = type { i32 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Initializing Mantis CA\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Out of memory!, exiting ..\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@mantis_ca_read_attr_mem = common dso_local global i32 0, align 4
@mantis_ca_write_attr_mem = common dso_local global i32 0, align 4
@mantis_ca_read_cam_ctl = common dso_local global i32 0, align 4
@mantis_ca_write_cam_ctl = common dso_local global i32 0, align 4
@mantis_ca_slot_reset = common dso_local global i32 0, align 4
@mantis_ca_slot_shutdown = common dso_local global i32 0, align 4
@mantis_ts_control = common dso_local global i32 0, align 4
@mantis_slot_status = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Registering EN50221 device\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"EN50221: Initialization failed <%d>\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Registered EN50221 device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mantis_ca_init(%struct.mantis_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mantis_pci*, align 8
  %4 = alloca %struct.dvb_adapter*, align 8
  %5 = alloca %struct.mantis_ca*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mantis_pci* %0, %struct.mantis_pci** %3, align 8
  %8 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %9 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %8, i32 0, i32 1
  store %struct.dvb_adapter* %9, %struct.dvb_adapter** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @MANTIS_DEBUG, align 4
  %11 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %10, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mantis_ca* @kzalloc(i32 72, i32 %12)
  store %struct.mantis_ca* %13, %struct.mantis_ca** %5, align 8
  %14 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %15 = icmp ne %struct.mantis_ca* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @MANTIS_ERROR, align 4
  %18 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %17, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %99

21:                                               ; preds = %1
  %22 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %23 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %24 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %23, i32 0, i32 5
  store %struct.mantis_pci* %22, %struct.mantis_pci** %24, align 8
  %25 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %26 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %27 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %26, i32 0, i32 0
  store %struct.mantis_ca* %25, %struct.mantis_ca** %27, align 8
  %28 = load i32, i32* @DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @THIS_MODULE, align 4
  %30 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %31 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 9
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @mantis_ca_read_attr_mem, align 4
  %34 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %35 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 8
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @mantis_ca_write_attr_mem, align 4
  %38 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %39 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 7
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @mantis_ca_read_cam_ctl, align 4
  %42 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %43 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 6
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @mantis_ca_write_cam_ctl, align 4
  %46 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %47 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 5
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @mantis_ca_slot_reset, align 4
  %50 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %51 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @mantis_ca_slot_shutdown, align 4
  %54 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %55 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @mantis_ts_control, align 4
  %58 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %59 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @mantis_slot_status, align 4
  %62 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %63 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %66 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %67 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store %struct.mantis_ca* %65, %struct.mantis_ca** %68, align 8
  %69 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %70 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %69, i32 0, i32 4
  %71 = call i32 @mutex_init(i32* %70)
  %72 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %73 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %72, i32 0, i32 3
  %74 = call i32 @init_waitqueue_head(i32* %73)
  %75 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %76 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %75, i32 0, i32 2
  %77 = call i32 @init_waitqueue_head(i32* %76)
  %78 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %79 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %78, i32 0, i32 1
  %80 = call i32 @init_waitqueue_head(i32* %79)
  %81 = load i32, i32* @MANTIS_ERROR, align 4
  %82 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %81, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.dvb_adapter*, %struct.dvb_adapter** %4, align 8
  %84 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %85 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %84, i32 0, i32 0
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @dvb_ca_en50221_init(%struct.dvb_adapter* %83, %struct.TYPE_2__* %85, i32 %86, i32 1)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %21
  %91 = load i32, i32* @MANTIS_ERROR, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %91, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  br label %99

94:                                               ; preds = %21
  %95 = load i32, i32* @MANTIS_ERROR, align 4
  %96 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %95, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %98 = call i32 @mantis_evmgr_init(%struct.mantis_ca* %97)
  store i32 0, i32* %2, align 4
  br label %103

99:                                               ; preds = %90, %16
  %100 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %101 = call i32 @kfree(%struct.mantis_ca* %100)
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local %struct.mantis_ca* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @dvb_ca_en50221_init(%struct.dvb_adapter*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @mantis_evmgr_init(%struct.mantis_ca*) #1

declare dso_local i32 @kfree(%struct.mantis_ca*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
