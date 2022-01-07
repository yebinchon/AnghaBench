; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pcmciamtd.c_pcmciamtd_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pcmciamtd.c_pcmciamtd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.pcmciamtd_dev* }
%struct.pcmciamtd_dev = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"link=0x%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"mtd%d: Removing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @pcmciamtd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmciamtd_detach(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.pcmciamtd_dev*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %4 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %4, i32 0, i32 0
  %6 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %5, align 8
  store %struct.pcmciamtd_dev* %6, %struct.pcmciamtd_dev** %3, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.pcmcia_device* %7)
  %9 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = call i32 @mtd_device_unregister(%struct.TYPE_5__* %16)
  %18 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %3, align 8
  %23 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_info(i32* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %3, align 8
  %29 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = call i32 @map_destroy(%struct.TYPE_5__* %30)
  br label %32

32:                                               ; preds = %13, %1
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %34 = call i32 @pcmciamtd_release(%struct.pcmcia_device* %33)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.pcmcia_device*) #1

declare dso_local i32 @mtd_device_unregister(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @map_destroy(%struct.TYPE_5__*) #1

declare dso_local i32 @pcmciamtd_release(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
