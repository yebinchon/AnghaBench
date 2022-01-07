; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_flash_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_flash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nsim_dev = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"Preparing to flash\00", align 1
@NSIM_DEV_FLASH_SIZE = common dso_local global i32 0, align 4
@NSIM_DEV_FLASH_CHUNK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Flashing\00", align 1
@NSIM_DEV_FLASH_CHUNK_TIME_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Flashing done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i8*, i8*, %struct.netlink_ext_ack*)* @nsim_dev_flash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_dev_flash_update(%struct.devlink* %0, i8* %1, i8* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.nsim_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  %11 = load %struct.devlink*, %struct.devlink** %5, align 8
  %12 = call %struct.nsim_dev* @devlink_priv(%struct.devlink* %11)
  store %struct.nsim_dev* %12, %struct.nsim_dev** %9, align 8
  %13 = load %struct.nsim_dev*, %struct.nsim_dev** %9, align 8
  %14 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.devlink*, %struct.devlink** %5, align 8
  %19 = call i32 @devlink_flash_update_begin_notify(%struct.devlink* %18)
  %20 = load %struct.devlink*, %struct.devlink** %5, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @devlink_flash_update_status_notify(%struct.devlink* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %21, i32 0, i32 0)
  br label %23

23:                                               ; preds = %17, %4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @NSIM_DEV_FLASH_SIZE, align 4
  %27 = load i32, i32* @NSIM_DEV_FLASH_CHUNK_SIZE, align 4
  %28 = sdiv i32 %26, %27
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = load %struct.nsim_dev*, %struct.nsim_dev** %9, align 8
  %32 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.devlink*, %struct.devlink** %5, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @NSIM_DEV_FLASH_CHUNK_SIZE, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* @NSIM_DEV_FLASH_SIZE, align 4
  %42 = call i32 @devlink_flash_update_status_notify(%struct.devlink* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %30
  %44 = load i32, i32* @NSIM_DEV_FLASH_CHUNK_TIME_MS, align 4
  %45 = call i32 @msleep(i32 %44)
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load %struct.nsim_dev*, %struct.nsim_dev** %9, align 8
  %51 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.devlink*, %struct.devlink** %5, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* @NSIM_DEV_FLASH_SIZE, align 4
  %58 = load i32, i32* @NSIM_DEV_FLASH_SIZE, align 4
  %59 = call i32 @devlink_flash_update_status_notify(%struct.devlink* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %56, i32 %57, i32 %58)
  %60 = load %struct.devlink*, %struct.devlink** %5, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @devlink_flash_update_status_notify(%struct.devlink* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %61, i32 0, i32 0)
  %63 = load %struct.devlink*, %struct.devlink** %5, align 8
  %64 = call i32 @devlink_flash_update_end_notify(%struct.devlink* %63)
  br label %65

65:                                               ; preds = %54, %49
  ret i32 0
}

declare dso_local %struct.nsim_dev* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @devlink_flash_update_begin_notify(%struct.devlink*) #1

declare dso_local i32 @devlink_flash_update_status_notify(%struct.devlink*, i8*, i8*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @devlink_flash_update_end_notify(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
