; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crq_server_adapter = type { i32*, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.vio_dev = type { i32, i32 }
%struct.vio_device_id = type { i32 }

@ibmvmc_adapter = common dso_local global %struct.crq_server_adapter zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c"Probe for UA 0x%x\0A\00", align 1
@ibmvmc_state_failed = common dso_local global i8* null, align 8
@ibmvmc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Probe: liobn 0x%x, riobn 0x%x\0A\00", align 1
@ibmvmc_reset_task = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ibmvmc\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to start reset thread\0A\00", align 1
@H_RESOURCE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Error initializing CRQ.  rc = 0x%x\0A\00", align 1
@ibmvmc_state_crqinit = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to send initialize CRQ message\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*, %struct.vio_device_id*)* @ibmvmc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvmc_probe(%struct.vio_dev* %0, %struct.vio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_dev*, align 8
  %5 = alloca %struct.vio_device_id*, align 8
  %6 = alloca %struct.crq_server_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.vio_dev* %0, %struct.vio_dev** %4, align 8
  store %struct.vio_device_id* %1, %struct.vio_device_id** %5, align 8
  store %struct.crq_server_adapter* @ibmvmc_adapter, %struct.crq_server_adapter** %6, align 8
  %8 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %9 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %8, i32 0, i32 0
  %10 = call i32 @dev_set_drvdata(i32* %9, %struct.crq_server_adapter* null)
  %11 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %12 = call i32 @memset(%struct.crq_server_adapter* %11, i32 0, i32 32)
  %13 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %14 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %13, i32 0, i32 0
  %15 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %21 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_info(i32* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %25 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %26 = call i32 @read_dma_window(%struct.vio_dev* %24, %struct.crq_server_adapter* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i8*, i8** @ibmvmc_state_failed, align 8
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 8
  store i32 -1, i32* %3, align 4
  br label %112

31:                                               ; preds = %2
  %32 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %43 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %42, i32 0, i32 2
  %44 = call i32 @init_waitqueue_head(i32* %43)
  %45 = load i32, i32* @ibmvmc_reset_task, align 4
  %46 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %47 = call i32* @kthread_run(i32 %45, %struct.crq_server_adapter* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %51 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @IS_ERR(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %31
  %56 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %57 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i8*, i8** @ibmvmc_state_failed, align 8
  store i8* %60, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 8
  %61 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %62 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @PTR_ERR(i32* %63)
  store i32 %64, i32* %7, align 4
  %65 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %66 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %112

68:                                               ; preds = %31
  %69 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %70 = call i32 @ibmvmc_init_crq_queue(%struct.crq_server_adapter* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @H_RESOURCE, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %79 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (i32*, i8*, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load i8*, i8** @ibmvmc_state_failed, align 8
  store i8* %83, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 8
  br label %103

84:                                               ; preds = %73, %68
  %85 = load i8*, i8** @ibmvmc_state_crqinit, align 8
  store i8* %85, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 8
  %86 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %87 = call i64 @ibmvmc_send_crq(%struct.crq_server_adapter* %86, i32 0, i32 0)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @H_RESOURCE, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %95 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @dev_warn(i32* %96, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %98

98:                                               ; preds = %93, %89, %84
  %99 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %100 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %99, i32 0, i32 0
  %101 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %102 = call i32 @dev_set_drvdata(i32* %100, %struct.crq_server_adapter* %101)
  store i32 0, i32* %3, align 4
  br label %112

103:                                              ; preds = %77
  %104 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %105 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @kthread_stop(i32* %106)
  %108 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %109 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %108, i32 0, i32 0
  store i32* null, i32** %109, align 8
  %110 = load i32, i32* @EPERM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %103, %98, %55, %29
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @dev_set_drvdata(i32*, %struct.crq_server_adapter*) #1

declare dso_local i32 @memset(%struct.crq_server_adapter*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @read_dma_window(%struct.vio_dev*, %struct.crq_server_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32* @kthread_run(i32, %struct.crq_server_adapter*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ibmvmc_init_crq_queue(%struct.crq_server_adapter*) #1

declare dso_local i64 @ibmvmc_send_crq(%struct.crq_server_adapter*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @kthread_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
