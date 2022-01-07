; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-core.c_saa7164_dump_hwdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-core.c_saa7164_dump_hwdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"@0x%p hwdesc sizeof(struct tmComResHWDescr) = %d bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c" .bLength = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c" .bDescriptorType = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c" .bDescriptorSubtype = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c" .bcdSpecVersion = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c" .dwClockFrequency = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c" .dwClockUpdateRes = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c" .bCapabilities = 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c" .dwDeviceRegistersLocation = 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c" .dwHostMemoryRegion = 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c" .dwHostMemoryRegionSize = 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c" .dwHostHibernatMemRegion = 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c" .dwHostHibernatMemRegionSize = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7164_dev*)* @saa7164_dump_hwdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7164_dump_hwdesc(%struct.saa7164_dev* %0) #0 {
  %2 = alloca %struct.saa7164_dev*, align 8
  store %struct.saa7164_dev* %0, %struct.saa7164_dev** %2, align 8
  %3 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %4 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %3, i32 0, i32 0
  %5 = call i32 (i32, i8*, %struct.TYPE_2__*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), %struct.TYPE_2__* %4, i32 4)
  %6 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %7 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 11
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  %12 = call i32 (i32, i8*, %struct.TYPE_2__*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_2__* %11)
  %13 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %14 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_2__*
  %19 = call i32 (i32, i8*, %struct.TYPE_2__*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_2__* %18)
  %20 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %21 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.TYPE_2__*
  %26 = call i32 (i32, i8*, %struct.TYPE_2__*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_2__* %25)
  %27 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %28 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.TYPE_2__*
  %33 = call i32 (i32, i8*, %struct.TYPE_2__*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_2__* %32)
  %34 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %35 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.TYPE_2__*
  %40 = call i32 (i32, i8*, %struct.TYPE_2__*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_2__* %39)
  %41 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %42 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to %struct.TYPE_2__*
  %47 = call i32 (i32, i8*, %struct.TYPE_2__*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_2__* %46)
  %48 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %49 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to %struct.TYPE_2__*
  %54 = call i32 (i32, i8*, %struct.TYPE_2__*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_2__* %53)
  %55 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %56 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to %struct.TYPE_2__*
  %61 = call i32 (i32, i8*, %struct.TYPE_2__*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_2__* %60)
  %62 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %63 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to %struct.TYPE_2__*
  %68 = call i32 (i32, i8*, %struct.TYPE_2__*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_2__* %67)
  %69 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %70 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to %struct.TYPE_2__*
  %75 = call i32 (i32, i8*, %struct.TYPE_2__*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_2__* %74)
  %76 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %77 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to %struct.TYPE_2__*
  %82 = call i32 (i32, i8*, %struct.TYPE_2__*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_2__* %81)
  %83 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %84 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to %struct.TYPE_2__*
  %89 = call i32 (i32, i8*, %struct.TYPE_2__*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_2__* %88)
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, %struct.TYPE_2__*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
