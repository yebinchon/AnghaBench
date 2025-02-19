; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_debug.c_ath5k_debug_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_debug.c_ath5k_debug_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dentry = type { i32 }

@ath5k_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ath5k\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@fops_debug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@fops_registers = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"beacon\00", align 1
@fops_beacon = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@fops_reset = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"antenna\00", align 1
@fops_antenna = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@fops_misc = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@fops_eeprom = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"frameerrors\00", align 1
@fops_frameerrors = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"ani\00", align 1
@fops_ani = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@fops_queue = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"32khz_clock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_debug_init_device(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %4 = load i32, i32* @ath5k_debug, align 4
  %5 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %4, i32* %7, align 8
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %14)
  store %struct.dentry* %15, %struct.dentry** %3, align 8
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = icmp ne %struct.dentry* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %54

19:                                               ; preds = %1
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %22 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 384, %struct.dentry* %20, %struct.ath5k_hw* %21, i32* @fops_debug)
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %25 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 256, %struct.dentry* %23, %struct.ath5k_hw* %24, i32* @fops_registers)
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %28 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 384, %struct.dentry* %26, %struct.ath5k_hw* %27, i32* @fops_beacon)
  %29 = load %struct.dentry*, %struct.dentry** %3, align 8
  %30 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %31 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 128, %struct.dentry* %29, %struct.ath5k_hw* %30, i32* @fops_reset)
  %32 = load %struct.dentry*, %struct.dentry** %3, align 8
  %33 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %34 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 384, %struct.dentry* %32, %struct.ath5k_hw* %33, i32* @fops_antenna)
  %35 = load %struct.dentry*, %struct.dentry** %3, align 8
  %36 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %37 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 256, %struct.dentry* %35, %struct.ath5k_hw* %36, i32* @fops_misc)
  %38 = load %struct.dentry*, %struct.dentry** %3, align 8
  %39 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %40 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 256, %struct.dentry* %38, %struct.ath5k_hw* %39, i32* @fops_eeprom)
  %41 = load %struct.dentry*, %struct.dentry** %3, align 8
  %42 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %43 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 384, %struct.dentry* %41, %struct.ath5k_hw* %42, i32* @fops_frameerrors)
  %44 = load %struct.dentry*, %struct.dentry** %3, align 8
  %45 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %46 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 384, %struct.dentry* %44, %struct.ath5k_hw* %45, i32* @fops_ani)
  %47 = load %struct.dentry*, %struct.dentry** %3, align 8
  %48 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %49 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 384, %struct.dentry* %47, %struct.ath5k_hw* %48, i32* @fops_queue)
  %50 = load %struct.dentry*, %struct.dentry** %3, align 8
  %51 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %52 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %51, i32 0, i32 0
  %53 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 384, %struct.dentry* %50, i32* %52)
  br label %54

54:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.ath5k_hw*, i32*) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
