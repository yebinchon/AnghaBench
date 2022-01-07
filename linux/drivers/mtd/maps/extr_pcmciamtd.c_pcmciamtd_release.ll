; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pcmciamtd.c_pcmciamtd_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pcmciamtd.c_pcmciamtd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_2__**, %struct.pcmciamtd_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.pcmciamtd_dev = type { i32* }

@.str = private unnamed_addr constant [13 x i8] c"link = 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @pcmciamtd_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmciamtd_release(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.pcmciamtd_dev*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %4 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %4, i32 0, i32 1
  %6 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %5, align 8
  store %struct.pcmciamtd_dev* %6, %struct.pcmciamtd_dev** %3, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.pcmcia_device* %7)
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %10 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %3, align 8
  %24 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @iounmap(i32* %25)
  %27 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %3, align 8
  %28 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %22, %17
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %32 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %31)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.pcmcia_device*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
