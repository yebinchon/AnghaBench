; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_cpia1.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_cpia1.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"CPIA Version:             %d.%02d (%d.%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"CPIA PnP-ID:              %04x:%04x:%04x\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"VP-Version:               %d.%d %04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = call i32 @sd_start(%struct.gspca_dev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %86

14:                                               ; preds = %1
  %15 = load %struct.sd*, %struct.sd** %4, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = call i32 @command_setlights(%struct.gspca_dev* %22)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = call i32 @sd_stopN(%struct.gspca_dev* %25)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = load i32, i32* @D_PROBE, align 4
  %29 = load %struct.sd*, %struct.sd** %4, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sd*, %struct.sd** %4, align 8
  %35 = getelementptr inbounds %struct.sd, %struct.sd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sd*, %struct.sd** %4, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sd*, %struct.sd** %4, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (%struct.gspca_dev*, i32, i8*, i32, i32, i32, ...) @gspca_dbg(%struct.gspca_dev* %27, i32 %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38, i32 %43, i32 %48)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %51 = load i32, i32* @D_PROBE, align 4
  %52 = load %struct.sd*, %struct.sd** %4, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sd*, %struct.sd** %4, align 8
  %58 = getelementptr inbounds %struct.sd, %struct.sd* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sd*, %struct.sd** %4, align 8
  %63 = getelementptr inbounds %struct.sd, %struct.sd* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (%struct.gspca_dev*, i32, i8*, i32, i32, i32, ...) @gspca_dbg(%struct.gspca_dev* %50, i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %61, i32 %66)
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %69 = load i32, i32* @D_PROBE, align 4
  %70 = load %struct.sd*, %struct.sd** %4, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.sd*, %struct.sd** %4, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sd*, %struct.sd** %4, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (%struct.gspca_dev*, i32, i8*, i32, i32, i32, ...) @gspca_dbg(%struct.gspca_dev* %68, i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %79, i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %24, %12
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @sd_start(%struct.gspca_dev*) #1

declare dso_local i32 @command_setlights(%struct.gspca_dev*) #1

declare dso_local i32 @sd_stopN(%struct.gspca_dev*) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
