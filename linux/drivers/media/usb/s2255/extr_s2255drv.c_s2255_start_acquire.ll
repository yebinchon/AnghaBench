; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_start_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_start_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2255_vc = type { i64, i32, %struct.TYPE_7__, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.s2255_dev = type { i32, %struct.TYPE_8__*, i64* }
%struct.TYPE_8__ = type { i32 }

@G_chnmap = common dso_local global i64* null, align 8
@SYS_FRAMES = common dso_local global i32 0, align 4
@IN_DATA_TOKEN = common dso_local global i64 0, align 8
@CMD_START = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"CMD_START error\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"start acquire exit[%d] %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2255_vc*)* @s2255_start_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2255_start_acquire(%struct.s2255_vc* %0) #0 {
  %2 = alloca %struct.s2255_vc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s2255_dev*, align 8
  %7 = alloca i64*, align 8
  store %struct.s2255_vc* %0, %struct.s2255_vc** %2, align 8
  %8 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %9 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.s2255_dev* @to_s2255_dev(i32 %11)
  store %struct.s2255_dev* %12, %struct.s2255_dev** %6, align 8
  %13 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %14 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %13, i32 0, i32 2
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %7, align 8
  %16 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %17 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i64*, i64** @G_chnmap, align 8
  %20 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %21 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  %25 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %26 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %25, i32 0, i32 1
  store i32 -1, i32* %26, align 8
  %27 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %28 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %30 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %52, %1
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SYS_FRAMES, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %37 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %45 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %31

55:                                               ; preds = %31
  %56 = load i64, i64* @IN_DATA_TOKEN, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i64 @cpu_to_le32(i64 %59)
  %61 = load i64*, i64** %7, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* @CMD_START, align 8
  %64 = load i64*, i64** %7, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %67 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i64*, i64** %7, align 8
  %70 = bitcast i64* %69 to i8*
  %71 = call i32 @s2255_write_config(%struct.TYPE_8__* %68, i8* %70, i32 512)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %55
  %75 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %76 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %74, %55
  %81 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %82 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %83 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @dprintk(%struct.s2255_dev* %81, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %84, i32 %85)
  %87 = load %struct.s2255_dev*, %struct.s2255_dev** %6, align 8
  %88 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.s2255_dev* @to_s2255_dev(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @cpu_to_le32(i64) #1

declare dso_local i32 @s2255_write_config(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dprintk(%struct.s2255_dev*, i32, i8*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
