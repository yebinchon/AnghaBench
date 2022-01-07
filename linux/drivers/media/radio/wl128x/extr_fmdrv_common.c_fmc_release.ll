; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fmc_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fmc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_proto_s = type { i32 }
%struct.fmdev = type { i32, %struct.TYPE_4__, i32*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@fmc_release.fm_st_proto = internal global %struct.st_proto_s zeroinitializer, align 4
@FM_CORE_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"FM Core is already down\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to de-register FM from ST %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Successfully unregistered from ST\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fmc_release(%struct.fmdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fmdev*, align 8
  %4 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %3, align 8
  %5 = load i32, i32* @FM_CORE_READY, align 4
  %6 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %7 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %6, i32 0, i32 0
  %8 = call i32 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @fmdbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %50

12:                                               ; preds = %1
  %13 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %14 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @wake_up_interruptible(i32* %16)
  %18 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %19 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %18, i32 0, i32 6
  %20 = call i32 @tasklet_kill(i32* %19)
  %21 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %22 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %21, i32 0, i32 5
  %23 = call i32 @tasklet_kill(i32* %22)
  %24 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %25 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %24, i32 0, i32 4
  %26 = call i32 @skb_queue_purge(i32* %25)
  %27 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %28 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %27, i32 0, i32 3
  %29 = call i32 @skb_queue_purge(i32* %28)
  %30 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %31 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %33 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = call i32 @memset(%struct.st_proto_s* @fmc_release.fm_st_proto, i32 0, i32 4)
  store i32 8, i32* getelementptr inbounds (%struct.st_proto_s, %struct.st_proto_s* @fmc_release.fm_st_proto, i32 0, i32 0), align 4
  %36 = call i32 @st_unregister(%struct.st_proto_s* @fmc_release.fm_st_proto)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %12
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @fmerr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %44

42:                                               ; preds = %12
  %43 = call i32 @fmdbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* @FM_CORE_READY, align 4
  %46 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %47 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %46, i32 0, i32 0
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %10
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @fmdbg(i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @memset(%struct.st_proto_s*, i32, i32) #1

declare dso_local i32 @st_unregister(%struct.st_proto_s*) #1

declare dso_local i32 @fmerr(i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
