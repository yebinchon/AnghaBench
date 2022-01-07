; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pcmciamtd.c_pcmciamtd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pcmciamtd.c_pcmciamtd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.pcmciamtd_dev* }
%struct.pcmciamtd_dev = type { %struct.pcmcia_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"dev=0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @pcmciamtd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmciamtd_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.pcmciamtd_dev*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.pcmciamtd_dev* @kzalloc(i32 8, i32 %5)
  store %struct.pcmciamtd_dev* %6, %struct.pcmciamtd_dev** %4, align 8
  %7 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %8 = icmp ne %struct.pcmciamtd_dev* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.pcmciamtd_dev* %13)
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %16 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %16, i32 0, i32 0
  store %struct.pcmcia_device* %15, %struct.pcmcia_device** %17, align 8
  %18 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 0
  store %struct.pcmciamtd_dev* %18, %struct.pcmciamtd_dev** %20, align 8
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %22 = call i32 @pcmciamtd_config(%struct.pcmcia_device* %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %12, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.pcmciamtd_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.pcmciamtd_dev*) #1

declare dso_local i32 @pcmciamtd_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
