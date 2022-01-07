; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-dvb.c_yuan_mpc718_mt352_reqfw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-dvb.c_yuan_mpc718_mt352_reqfw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { %struct.cx18* }
%struct.cx18 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i64 }

@FWFILE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Unable to open firmware file %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Firmware %s has a bad size: %lu bytes\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [84 x i8] c"The MPC718 board variant with the MT352 DVB-T demodulator will not work without it\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Run 'linux/scripts/get_dvb_firmware mpc718' if you need the firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18_stream*, %struct.firmware**)* @yuan_mpc718_mt352_reqfw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yuan_mpc718_mt352_reqfw(%struct.cx18_stream* %0, %struct.firmware** %1) #0 {
  %3 = alloca %struct.cx18_stream*, align 8
  %4 = alloca %struct.firmware**, align 8
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.cx18_stream* %0, %struct.cx18_stream** %3, align 8
  store %struct.firmware** %1, %struct.firmware*** %4, align 8
  %9 = load %struct.cx18_stream*, %struct.cx18_stream** %3, align 8
  %10 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %9, i32 0, i32 0
  %11 = load %struct.cx18*, %struct.cx18** %10, align 8
  store %struct.cx18* %11, %struct.cx18** %5, align 8
  %12 = load i8*, i8** @FWFILE, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.firmware**, %struct.firmware*** %4, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.cx18*, %struct.cx18** %5, align 8
  %16 = getelementptr inbounds %struct.cx18, %struct.cx18* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @request_firmware(%struct.firmware** %13, i8* %14, i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %50

25:                                               ; preds = %2
  %26 = load %struct.firmware**, %struct.firmware*** %4, align 8
  %27 = load %struct.firmware*, %struct.firmware** %26, align 8
  %28 = getelementptr inbounds %struct.firmware, %struct.firmware* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ult i64 %30, 2
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = icmp ugt i64 %33, 64
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %8, align 8
  %37 = urem i64 %36, 2
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35, %32, %25
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %40, i64 %41)
  %43 = load i32, i32* @EILSEQ, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  %45 = load %struct.firmware**, %struct.firmware*** %4, align 8
  %46 = load %struct.firmware*, %struct.firmware** %45, align 8
  %47 = call i32 @release_firmware(%struct.firmware* %46)
  %48 = load %struct.firmware**, %struct.firmware*** %4, align 8
  store %struct.firmware* null, %struct.firmware** %48, align 8
  br label %49

49:                                               ; preds = %39, %35
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @CX18_ERR(i8*, ...) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
