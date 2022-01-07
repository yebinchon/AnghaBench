; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-bus.c_saa7164_bus_dumpmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-bus.c_saa7164_bus_dumpmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_dev = type { i32 }
%struct.tmComResInfo = type { i32, i32, i32, i32, i32, i32 }

@DBGLVL_BUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Dumping msg structure:\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c" .id               = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c" .flags            = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c" .size             = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c" .command          = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c" .controlselector  = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c" .seqno            = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c" .buffer (ignored)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7164_dev*, %struct.tmComResInfo*, i8*)* @saa7164_bus_dumpmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7164_bus_dumpmsg(%struct.saa7164_dev* %0, %struct.tmComResInfo* %1, i8* %2) #0 {
  %4 = alloca %struct.saa7164_dev*, align 8
  %5 = alloca %struct.tmComResInfo*, align 8
  %6 = alloca i8*, align 8
  store %struct.saa7164_dev* %0, %struct.saa7164_dev** %4, align 8
  store %struct.tmComResInfo* %1, %struct.tmComResInfo** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @DBGLVL_BUS, align 4
  %8 = call i32 (i32, i8*, ...) @dprintk(i32 %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @DBGLVL_BUS, align 4
  %10 = load %struct.tmComResInfo*, %struct.tmComResInfo** %5, align 8
  %11 = getelementptr inbounds %struct.tmComResInfo, %struct.tmComResInfo* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i32, i8*, ...) @dprintk(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @DBGLVL_BUS, align 4
  %15 = load %struct.tmComResInfo*, %struct.tmComResInfo** %5, align 8
  %16 = getelementptr inbounds %struct.tmComResInfo, %struct.tmComResInfo* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i8*, ...) @dprintk(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @DBGLVL_BUS, align 4
  %20 = load %struct.tmComResInfo*, %struct.tmComResInfo** %5, align 8
  %21 = getelementptr inbounds %struct.tmComResInfo, %struct.tmComResInfo* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, ...) @dprintk(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @DBGLVL_BUS, align 4
  %25 = load %struct.tmComResInfo*, %struct.tmComResInfo** %5, align 8
  %26 = getelementptr inbounds %struct.tmComResInfo, %struct.tmComResInfo* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @dprintk(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @DBGLVL_BUS, align 4
  %30 = load %struct.tmComResInfo*, %struct.tmComResInfo** %5, align 8
  %31 = getelementptr inbounds %struct.tmComResInfo, %struct.tmComResInfo* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @dprintk(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @DBGLVL_BUS, align 4
  %35 = load %struct.tmComResInfo*, %struct.tmComResInfo** %5, align 8
  %36 = getelementptr inbounds %struct.tmComResInfo, %struct.tmComResInfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @dprintk(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load i32, i32* @DBGLVL_BUS, align 4
  %43 = call i32 (i32, i8*, ...) @dprintk(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %3
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
