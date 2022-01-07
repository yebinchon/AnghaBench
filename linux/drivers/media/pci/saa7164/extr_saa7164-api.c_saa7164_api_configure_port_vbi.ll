; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-api.c_saa7164_api_configure_port_vbi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-api.c_saa7164_api_configure_port_vbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_dev = type { i32 }
%struct.saa7164_port = type { i64, %struct.TYPE_2__, i64, i64, i64, i64, i64, i64, i64, %struct.tmComResVBIFormatDescrHeader }
%struct.TYPE_2__ = type { i32, i64 }
%struct.tmComResVBIFormatDescrHeader = type { i64, i64, i64, i64, i64, i64 }

@DBGLVL_API = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"    bFormatIndex  = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"    VideoStandard = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"    StartLine     = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"    EndLine       = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"    FieldRate     = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"    bNumLines     = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"   = port->hwcfg.BARLocation = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"   = VS_FORMAT_VBI (becomes dev->en[%d])\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7164_dev*, %struct.saa7164_port*)* @saa7164_api_configure_port_vbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7164_api_configure_port_vbi(%struct.saa7164_dev* %0, %struct.saa7164_port* %1) #0 {
  %3 = alloca %struct.saa7164_dev*, align 8
  %4 = alloca %struct.saa7164_port*, align 8
  %5 = alloca %struct.tmComResVBIFormatDescrHeader*, align 8
  store %struct.saa7164_dev* %0, %struct.saa7164_dev** %3, align 8
  store %struct.saa7164_port* %1, %struct.saa7164_port** %4, align 8
  %6 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %7 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %6, i32 0, i32 9
  store %struct.tmComResVBIFormatDescrHeader* %7, %struct.tmComResVBIFormatDescrHeader** %5, align 8
  %8 = load i32, i32* @DBGLVL_API, align 4
  %9 = load %struct.tmComResVBIFormatDescrHeader*, %struct.tmComResVBIFormatDescrHeader** %5, align 8
  %10 = getelementptr inbounds %struct.tmComResVBIFormatDescrHeader, %struct.tmComResVBIFormatDescrHeader* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @dprintk(i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32, i32* @DBGLVL_API, align 4
  %14 = load %struct.tmComResVBIFormatDescrHeader*, %struct.tmComResVBIFormatDescrHeader** %5, align 8
  %15 = getelementptr inbounds %struct.tmComResVBIFormatDescrHeader, %struct.tmComResVBIFormatDescrHeader* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @dprintk(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  %18 = load i32, i32* @DBGLVL_API, align 4
  %19 = load %struct.tmComResVBIFormatDescrHeader*, %struct.tmComResVBIFormatDescrHeader** %5, align 8
  %20 = getelementptr inbounds %struct.tmComResVBIFormatDescrHeader, %struct.tmComResVBIFormatDescrHeader* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @dprintk(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @DBGLVL_API, align 4
  %24 = load %struct.tmComResVBIFormatDescrHeader*, %struct.tmComResVBIFormatDescrHeader** %5, align 8
  %25 = getelementptr inbounds %struct.tmComResVBIFormatDescrHeader, %struct.tmComResVBIFormatDescrHeader* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @dprintk(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @DBGLVL_API, align 4
  %29 = load %struct.tmComResVBIFormatDescrHeader*, %struct.tmComResVBIFormatDescrHeader** %5, align 8
  %30 = getelementptr inbounds %struct.tmComResVBIFormatDescrHeader, %struct.tmComResVBIFormatDescrHeader* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dprintk(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @DBGLVL_API, align 4
  %34 = load %struct.tmComResVBIFormatDescrHeader*, %struct.tmComResVBIFormatDescrHeader** %5, align 8
  %35 = getelementptr inbounds %struct.tmComResVBIFormatDescrHeader, %struct.tmComResVBIFormatDescrHeader* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @dprintk(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %36)
  %38 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %39 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %43 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %42, i32 0, i32 8
  store i64 %41, i64* %43, align 8
  %44 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %45 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 8
  %49 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %50 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %49, i32 0, i32 7
  store i64 %48, i64* %50, align 8
  %51 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %52 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 12
  %56 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %57 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %56, i32 0, i32 6
  store i64 %55, i64* %57, align 8
  %58 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %59 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 16
  %63 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %64 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %63, i32 0, i32 5
  store i64 %62, i64* %64, align 8
  %65 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %66 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 16
  %70 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %71 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = add i64 %69, %75
  %77 = add i64 %76, 4
  %78 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %79 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %78, i32 0, i32 4
  store i64 %77, i64* %79, align 8
  %80 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %81 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 16
  %85 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %86 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = add i64 %84, %90
  %92 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %93 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %92, i32 0, i32 3
  store i64 %91, i64* %93, align 8
  %94 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %95 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 16
  %99 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %100 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = mul i64 4, %103
  %105 = add i64 %98, %104
  %106 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %107 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = load i32, i32* @DBGLVL_API, align 4
  %109 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %110 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @dprintk(i32 %108, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %112)
  %114 = load i32, i32* @DBGLVL_API, align 4
  %115 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %116 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @dprintk(i32 %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %117)
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
