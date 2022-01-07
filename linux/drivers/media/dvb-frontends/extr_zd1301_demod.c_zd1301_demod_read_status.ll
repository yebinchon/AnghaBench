; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zd1301_demod.c_zd1301_demod_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zd1301_demod.c_zd1301_demod_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.zd1301_demod_dev* }
%struct.zd1301_demod_dev = type { i64, %struct.platform_device* }
%struct.platform_device = type { i32 }

@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"lock byte=%02x\0A\00", align 1
@zd1301_demod_gain = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @zd1301_demod_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1301_demod_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.zd1301_demod_dev*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %11, align 8
  store %struct.zd1301_demod_dev* %12, %struct.zd1301_demod_dev** %6, align 8
  %13 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %6, align 8
  %14 = getelementptr inbounds %struct.zd1301_demod_dev, %struct.zd1301_demod_dev* %13, i32 0, i32 1
  %15 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  store %struct.platform_device* %15, %struct.platform_device** %7, align 8
  %16 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %6, align 8
  %17 = call i32 @zd1301_demod_rreg(%struct.zd1301_demod_dev* %16, i32 27172, i32* %9)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %64

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 32
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %29 = load i32, i32* @FE_HAS_CARRIER, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @FE_HAS_VITERBI, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @FE_HAS_SYNC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FE_HAS_LOCK, align 4
  %36 = or i32 %34, %35
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  br label %40

38:                                               ; preds = %24, %21
  %39 = load i32*, i32** %5, align 8
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %27
  %41 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dev_dbg(i32* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %6, align 8
  %46 = getelementptr inbounds %struct.zd1301_demod_dev, %struct.zd1301_demod_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @zd1301_demod_gain, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %40
  %51 = load i64, i64* @zd1301_demod_gain, align 8
  %52 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %6, align 8
  %53 = getelementptr inbounds %struct.zd1301_demod_dev, %struct.zd1301_demod_dev* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %6, align 8
  %55 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %6, align 8
  %56 = getelementptr inbounds %struct.zd1301_demod_dev, %struct.zd1301_demod_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %54, i32 27203, i64 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %64

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %40
  store i32 0, i32* %3, align 4
  br label %70

64:                                               ; preds = %61, %20
  %65 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @dev_dbg(i32* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %63
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @zd1301_demod_rreg(%struct.zd1301_demod_dev*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
