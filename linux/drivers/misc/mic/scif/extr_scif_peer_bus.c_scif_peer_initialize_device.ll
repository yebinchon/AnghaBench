; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_peer_bus.c_scif_peer_initialize_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_peer_bus.c_scif_peer_initialize_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.scif_dev = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.scif_peer_dev = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@scif_peer_release_dev = common dso_local global i32 0, align 4
@scif_peer_bus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"scif_peer-dev%u\00", align 1
@scif_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@u32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"dnode %d: initialize_device rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scif_dev*)* @scif_peer_initialize_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scif_peer_initialize_device(%struct.scif_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca %struct.scif_peer_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.scif_peer_dev* @kzalloc(i32 24, i32 %6)
  store %struct.scif_peer_dev* %7, %struct.scif_peer_dev** %4, align 8
  %8 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %9 = icmp ne %struct.scif_peer_dev* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  br label %62

13:                                               ; preds = %1
  %14 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %15 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %21 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @scif_peer_release_dev, align 4
  %24 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %25 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %28 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %31 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %33 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32* @scif_peer_bus, i32** %34, align 8
  %35 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %36 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %35, i32 0, i32 1
  %37 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %38 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_set_name(%struct.TYPE_9__* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %42 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %41, i32 0, i32 1
  %43 = call i32 @device_initialize(%struct.TYPE_9__* %42)
  %44 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %45 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %44, i32 0, i32 1
  %46 = call i32 @get_device(%struct.TYPE_9__* %45)
  %47 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %48 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %51 = call i32 @rcu_assign_pointer(i32 %49, %struct.scif_peer_dev* %50)
  %52 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scif_info, i32 0, i32 0))
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scif_info, i32 0, i32 2), align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scif_info, i32 0, i32 2), align 4
  %55 = load i32, i32* @u32, align 4
  %56 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %57 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scif_info, i32 0, i32 1), align 4
  %60 = call i32 @max_t(i32 %55, i32 %58, i32 %59)
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scif_info, i32 0, i32 1), align 4
  %61 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scif_info, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %73

62:                                               ; preds = %10
  %63 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %64 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %68 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @dev_err(%struct.TYPE_10__* %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %62, %13
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.scif_peer_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_9__*) #1

declare dso_local i32 @get_device(%struct.TYPE_9__*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.scif_peer_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
