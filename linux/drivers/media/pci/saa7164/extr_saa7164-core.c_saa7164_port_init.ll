; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-core.c_saa7164_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-core.c_saa7164_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_dev = type { %struct.saa7164_port* }
%struct.saa7164_port = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, %struct.saa7164_dev* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SAA7164_MAX_PORTS = common dso_local global i32 0, align 4
@SAA7164_PORT_TS1 = common dso_local global i32 0, align 4
@SAA7164_PORT_TS2 = common dso_local global i32 0, align 4
@SAA7164_MPEG_DVB = common dso_local global i32 0, align 4
@SAA7164_PORT_ENC1 = common dso_local global i32 0, align 4
@SAA7164_PORT_ENC2 = common dso_local global i32 0, align 4
@SAA7164_MPEG_ENCODER = common dso_local global i32 0, align 4
@saa7164_work_enchandler = common dso_local global i32 0, align 4
@SAA7164_PORT_VBI1 = common dso_local global i32 0, align 4
@SAA7164_PORT_VBI2 = common dso_local global i32 0, align 4
@SAA7164_MPEG_VBI = common dso_local global i32 0, align 4
@saa7164_work_vbihandler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"irq intervals\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"deferred intervals\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"irq to deferred intervals\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"encoder/vbi read() intervals\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"encoder/vbi poll() intervals\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7164_dev*, i32)* @saa7164_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7164_port_init(%struct.saa7164_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.saa7164_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa7164_port*, align 8
  store %struct.saa7164_dev* %0, %struct.saa7164_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.saa7164_port* null, %struct.saa7164_port** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SAA7164_MAX_PORTS, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %2
  %13 = call i32 (...) @BUG()
  br label %14

14:                                               ; preds = %12, %8
  %15 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %16 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %15, i32 0, i32 0
  %17 = load %struct.saa7164_port*, %struct.saa7164_port** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %17, i64 %19
  store %struct.saa7164_port* %20, %struct.saa7164_port** %5, align 8
  %21 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %22 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %23 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %22, i32 0, i32 14
  store %struct.saa7164_dev* %21, %struct.saa7164_dev** %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %26 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SAA7164_PORT_TS1, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %14
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SAA7164_PORT_TS2, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30, %14
  %35 = load i32, i32* @SAA7164_MPEG_DVB, align 4
  %36 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %37 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %36, i32 0, i32 13
  store i32 %35, i32* %37, align 4
  br label %74

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @SAA7164_PORT_ENC1, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @SAA7164_PORT_ENC2, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42, %38
  %47 = load i32, i32* @SAA7164_MPEG_ENCODER, align 4
  %48 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %49 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %48, i32 0, i32 13
  store i32 %47, i32* %49, align 4
  %50 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %51 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %50, i32 0, i32 12
  %52 = load i32, i32* @saa7164_work_enchandler, align 4
  %53 = call i32 @INIT_WORK(i32* %51, i32 %52)
  br label %73

54:                                               ; preds = %42
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @SAA7164_PORT_VBI1, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @SAA7164_PORT_VBI2, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58, %54
  %63 = load i32, i32* @SAA7164_MPEG_VBI, align 4
  %64 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %65 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %64, i32 0, i32 13
  store i32 %63, i32* %65, align 4
  %66 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %67 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %66, i32 0, i32 12
  %68 = load i32, i32* @saa7164_work_vbihandler, align 4
  %69 = call i32 @INIT_WORK(i32* %67, i32 %68)
  br label %72

70:                                               ; preds = %58
  %71 = call i32 (...) @BUG()
  br label %72

72:                                               ; preds = %70, %62
  br label %73

73:                                               ; preds = %72, %46
  br label %74

74:                                               ; preds = %73, %34
  %75 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %76 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %75, i32 0, i32 11
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = call i32 @mutex_init(i32* %77)
  %79 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %80 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %79, i32 0, i32 10
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = call i32 @INIT_LIST_HEAD(i32* %81)
  %83 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %84 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %83, i32 0, i32 9
  %85 = call i32 @mutex_init(i32* %84)
  %86 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %87 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = call i32 @INIT_LIST_HEAD(i32* %88)
  %90 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %91 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  %94 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %95 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %94, i32 0, i32 6
  %96 = call i32 @init_waitqueue_head(i32* %95)
  %97 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %98 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %97, i32 0, i32 5
  %99 = call i32 @saa7164_histogram_reset(i32* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %100 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %101 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %100, i32 0, i32 4
  %102 = call i32 @saa7164_histogram_reset(i32* %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %104 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %103, i32 0, i32 3
  %105 = call i32 @saa7164_histogram_reset(i32* %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %106 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %107 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %106, i32 0, i32 2
  %108 = call i32 @saa7164_histogram_reset(i32* %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %109 = load %struct.saa7164_port*, %struct.saa7164_port** %5, align 8
  %110 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %109, i32 0, i32 1
  %111 = call i32 @saa7164_histogram_reset(i32* %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @saa7164_histogram_reset(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
