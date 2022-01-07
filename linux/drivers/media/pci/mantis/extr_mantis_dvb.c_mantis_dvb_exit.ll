; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dvb.c_mantis_dvb_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dvb.c_mantis_dvb_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*)* }

@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Frontend exit while POWER ON! <%d>\00", align 1
@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"dvb_unregister_adapter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mantis_dvb_exit(%struct.mantis_pci* %0) #0 {
  %2 = alloca %struct.mantis_pci*, align 8
  %3 = alloca i32, align 4
  store %struct.mantis_pci* %0, %struct.mantis_pci** %2, align 8
  %4 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %5 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %4, i32 0, i32 7
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %10 = call i32 @mantis_frontend_shutdown(%struct.mantis_pci* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* @MANTIS_ERROR, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %14, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %8
  %18 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %19 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @dvb_unregister_frontend(i64 %20)
  %22 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %23 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dvb_frontend_detach(i64 %24)
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %28 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %27, i32 0, i32 6
  %29 = call i32 @tasklet_kill(i32* %28)
  %30 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %31 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %30, i32 0, i32 5
  %32 = call i32 @dvb_net_release(i32* %31)
  %33 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %34 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %36, align 8
  %38 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %39 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %42 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %41, i32 0, i32 4
  %43 = call i32 %37(%struct.TYPE_4__* %40, i32* %42)
  %44 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %45 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %47, align 8
  %49 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %50 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %53 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %52, i32 0, i32 3
  %54 = call i32 %48(%struct.TYPE_4__* %51, i32* %53)
  %55 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %56 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %55, i32 0, i32 2
  %57 = call i32 @dvb_dmxdev_release(i32* %56)
  %58 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %59 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %58, i32 0, i32 1
  %60 = call i32 @dvb_dmx_release(%struct.TYPE_5__* %59)
  %61 = load i32, i32* @MANTIS_DEBUG, align 4
  %62 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %61, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %64 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %63, i32 0, i32 0
  %65 = call i32 @dvb_unregister_adapter(i32* %64)
  ret i32 0
}

declare dso_local i32 @mantis_frontend_shutdown(%struct.mantis_pci*) #1

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i32 @dvb_unregister_frontend(i64) #1

declare dso_local i32 @dvb_frontend_detach(i64) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_5__*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
