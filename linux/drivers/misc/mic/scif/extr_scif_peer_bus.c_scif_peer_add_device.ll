; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_peer_bus.c_scif_peer_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_peer_bus.c_scif_peer_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.scif_dev = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.scif_peer_dev = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"dnode %d: peer device_add failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"scif-%d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"dnode %d: dmam_pool_create failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Added peer dnode %d\0A\00", align 1
@scif_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scif_dev*)* @scif_peer_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scif_peer_add_device(%struct.scif_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca %struct.scif_peer_dev*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  %7 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %8 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.scif_peer_dev* @rcu_dereference(i32 %9)
  store %struct.scif_peer_dev* %10, %struct.scif_peer_dev** %4, align 8
  %11 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %12 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %11, i32 0, i32 0
  %13 = call i32 @device_add(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %15 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %14, i32 0, i32 0
  %16 = call i32 @put_device(i32* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %21 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %25 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %68

28:                                               ; preds = %1
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %30 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %31 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @scnprintf(i8* %29, i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %35 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %36 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @dmam_pool_create(i8* %34, i32* %38, i32 4, i32 1, i32 0)
  %40 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %41 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %43 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %28
  %47 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %48 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %52 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %64

57:                                               ; preds = %28
  %58 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %59 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %58, i32 0, i32 0
  %60 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %61 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_dbg(i32* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  store i32 0, i32* %2, align 4
  br label %82

64:                                               ; preds = %46
  %65 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %66 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %65, i32 0, i32 0
  %67 = call i32 @device_del(i32* %66)
  br label %68

68:                                               ; preds = %64, %19
  %69 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %70 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @RCU_INIT_POINTER(i32 %71, i32* null)
  %73 = call i32 (...) @synchronize_rcu()
  %74 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %75 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %74, i32 0, i32 0
  %76 = call i32 @put_device(i32* %75)
  %77 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 0))
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 1), align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 1), align 4
  %80 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 0))
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %68, %57
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.scif_peer_dev* @rcu_dereference(i32) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @dmam_pool_create(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
