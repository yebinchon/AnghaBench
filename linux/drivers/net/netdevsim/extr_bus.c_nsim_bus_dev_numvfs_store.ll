; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bus.c_nsim_bus_dev_numvfs_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bus.c_nsim_bus_dev_numvfs_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nsim_bus_dev = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @nsim_bus_dev_numvfs_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_bus_dev_numvfs_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nsim_bus_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.nsim_bus_dev* @to_nsim_bus_dev(%struct.device* %13)
  store %struct.nsim_bus_dev* %14, %struct.nsim_bus_dev** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtouint(i8* %15, i32 0, i32* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %61

21:                                               ; preds = %4
  %22 = call i32 (...) @rtnl_lock()
  %23 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %10, align 8
  %24 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %55

29:                                               ; preds = %21
  %30 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %10, align 8
  %31 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %58

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @nsim_bus_dev_vfs_enable(%struct.nsim_bus_dev* %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %58

50:                                               ; preds = %43
  br label %54

51:                                               ; preds = %40
  %52 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %10, align 8
  %53 = call i32 @nsim_bus_dev_vfs_disable(%struct.nsim_bus_dev* %52)
  br label %54

54:                                               ; preds = %51, %50
  br label %55

55:                                               ; preds = %54, %28
  %56 = load i64, i64* %9, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %55, %49, %37
  %59 = call i32 (...) @rtnl_unlock()
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %19
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.nsim_bus_dev* @to_nsim_bus_dev(%struct.device*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @nsim_bus_dev_vfs_enable(%struct.nsim_bus_dev*, i32) #1

declare dso_local i32 @nsim_bus_dev_vfs_disable(%struct.nsim_bus_dev*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
