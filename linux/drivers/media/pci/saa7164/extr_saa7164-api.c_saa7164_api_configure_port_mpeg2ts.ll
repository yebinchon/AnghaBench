; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-api.c_saa7164_api_configure_port_mpeg2ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-api.c_saa7164_api_configure_port_mpeg2ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_dev = type { i32 }
%struct.saa7164_port = type { i64, %struct.TYPE_2__, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.tmComResTSFormatDescrHeader = type { i64, i64, i64, i64 }

@DBGLVL_API = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"    bFormatIndex = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"    bDataOffset  = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"    bPacketLength= 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"    bStrideLength= 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"    bguid        = (....)\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"   = port->hwcfg.BARLocation = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"   = VS_FORMAT_MPEGTS (becomes dev->ts[%d])\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7164_dev*, %struct.saa7164_port*, %struct.tmComResTSFormatDescrHeader*)* @saa7164_api_configure_port_mpeg2ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7164_api_configure_port_mpeg2ts(%struct.saa7164_dev* %0, %struct.saa7164_port* %1, %struct.tmComResTSFormatDescrHeader* %2) #0 {
  %4 = alloca %struct.saa7164_dev*, align 8
  %5 = alloca %struct.saa7164_port*, align 8
  %6 = alloca %struct.tmComResTSFormatDescrHeader*, align 8
  store %struct.saa7164_dev* %0, %struct.saa7164_dev** %4, align 8
  store %struct.saa7164_port* %1, %struct.saa7164_port** %5, align 8
  store %struct.tmComResTSFormatDescrHeader* %2, %struct.tmComResTSFormatDescrHeader** %6, align 8
  %7 = load i32, i32* @DBGLVL_API, align 4
  %8 = load %struct.tmComResTSFormatDescrHeader*, %struct.tmComResTSFormatDescrHeader** %6, align 8
  %9 = getelementptr inbounds %struct.tmComResTSFormatDescrHeader, %struct.tmComResTSFormatDescrHeader* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = call i32 (i32, i8*, ...) @dprintk(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* @DBGLVL_API, align 4
  %13 = load %struct.tmComResTSFormatDescrHeader*, %struct.tmComResTSFormatDescrHeader** %6, align 8
  %14 = getelementptr inbounds %struct.tmComResTSFormatDescrHeader, %struct.tmComResTSFormatDescrHeader* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (i32, i8*, ...) @dprintk(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* @DBGLVL_API, align 4
  %18 = load %struct.tmComResTSFormatDescrHeader*, %struct.tmComResTSFormatDescrHeader** %6, align 8
  %19 = getelementptr inbounds %struct.tmComResTSFormatDescrHeader, %struct.tmComResTSFormatDescrHeader* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i32, i8*, ...) @dprintk(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @DBGLVL_API, align 4
  %23 = load %struct.tmComResTSFormatDescrHeader*, %struct.tmComResTSFormatDescrHeader** %6, align 8
  %24 = getelementptr inbounds %struct.tmComResTSFormatDescrHeader, %struct.tmComResTSFormatDescrHeader* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32, i8*, ...) @dprintk(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @DBGLVL_API, align 4
  %28 = call i32 (i32, i8*, ...) @dprintk(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %29 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %30 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %34 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %33, i32 0, i32 8
  store i64 %32, i64* %34, align 8
  %35 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %36 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 8
  %40 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %41 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %40, i32 0, i32 7
  store i64 %39, i64* %41, align 8
  %42 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %43 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 12
  %47 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %48 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %47, i32 0, i32 6
  store i64 %46, i64* %48, align 8
  %49 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %50 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 16
  %54 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %55 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %54, i32 0, i32 5
  store i64 %53, i64* %55, align 8
  %56 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %57 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 16
  %61 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %62 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = add i64 %60, %66
  %68 = add i64 %67, 4
  %69 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %70 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %69, i32 0, i32 4
  store i64 %68, i64* %70, align 8
  %71 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %72 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 16
  %76 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %77 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  %82 = add i64 %75, %81
  %83 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %84 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  %85 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %86 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 16
  %90 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %91 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = mul i64 4, %94
  %96 = add i64 %89, %95
  %97 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %98 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load i32, i32* @DBGLVL_API, align 4
  %100 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %101 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (i32, i8*, ...) @dprintk(i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %103)
  %105 = load i32, i32* @DBGLVL_API, align 4
  %106 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %107 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i32, i8*, ...) @dprintk(i32 %105, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i64 %108)
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
