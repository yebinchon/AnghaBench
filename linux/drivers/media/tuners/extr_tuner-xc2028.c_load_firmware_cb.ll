; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-xc2028.c_load_firmware_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-xc2028.c_load_firmware_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.dvb_frontend = type { %struct.xc2028_data* }
%struct.xc2028_data = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"request_firmware_nowait(): %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not load firmware %s.\0A\00", align 1
@XC2028_NODEV = common dso_local global i32 0, align 4
@XC2028_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @load_firmware_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_firmware_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.xc2028_data*, align 8
  %7 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.dvb_frontend*
  store %struct.dvb_frontend* %9, %struct.dvb_frontend** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.xc2028_data*, %struct.xc2028_data** %11, align 8
  store %struct.xc2028_data* %12, %struct.xc2028_data** %6, align 8
  %13 = load %struct.firmware*, %struct.firmware** %3, align 8
  %14 = icmp ne %struct.firmware* %13, null
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 @tuner_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.firmware*, %struct.firmware** %3, align 8
  %19 = icmp ne %struct.firmware* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load %struct.xc2028_data*, %struct.xc2028_data** %6, align 8
  %22 = getelementptr inbounds %struct.xc2028_data, %struct.xc2028_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @tuner_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @XC2028_NODEV, align 4
  %26 = load %struct.xc2028_data*, %struct.xc2028_data** %6, align 8
  %27 = getelementptr inbounds %struct.xc2028_data, %struct.xc2028_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %41

28:                                               ; preds = %2
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %30 = load %struct.firmware*, %struct.firmware** %3, align 8
  %31 = call i32 @load_all_firmwares(%struct.dvb_frontend* %29, %struct.firmware* %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.firmware*, %struct.firmware** %3, align 8
  %33 = call i32 @release_firmware(%struct.firmware* %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %41

37:                                               ; preds = %28
  %38 = load i32, i32* @XC2028_ACTIVE, align 4
  %39 = load %struct.xc2028_data*, %struct.xc2028_data** %6, align 8
  %40 = getelementptr inbounds %struct.xc2028_data, %struct.xc2028_data* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %36, %20
  ret void
}

declare dso_local i32 @tuner_dbg(i8*, i8*) #1

declare dso_local i32 @tuner_err(i8*, i32) #1

declare dso_local i32 @load_all_firmwares(%struct.dvb_frontend*, %struct.firmware*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
