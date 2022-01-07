; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_debugfs.c_mt76_register_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_debugfs.c_mt76_register_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.mt76_dev = type { i32, %struct.TYPE_6__, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"mt76\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"led_pin\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"regidx\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"regval\00", align 1
@fops_regval = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"otp\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"queues\00", align 1
@mt76_queues_read = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"rate_txpower\00", align 1
@mt76_read_rate_txpower = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @mt76_register_debugfs(%struct.mt76_dev* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  %5 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %5, i32 0, i32 5
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11)
  store %struct.dentry* %12, %struct.dentry** %4, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = icmp ne %struct.dentry* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store %struct.dentry* null, %struct.dentry** %2, align 8
  br label %56

16:                                               ; preds = %1
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %18, i32 0, i32 4
  %20 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 384, %struct.dentry* %17, i32* %19)
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %23 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %22, i32 0, i32 3
  %24 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 384, %struct.dentry* %21, i32* %23)
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %27 = call i32 @debugfs_create_file_unsafe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 384, %struct.dentry* %25, %struct.mt76_dev* %26, i32* @fops_regval)
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %29, i32 0, i32 2
  %31 = call i32 @debugfs_create_blob(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 256, %struct.dentry* %28, %struct.TYPE_6__* %30)
  %32 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %16
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %39, i32 0, i32 1
  %41 = call i32 @debugfs_create_blob(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 256, %struct.dentry* %38, %struct.TYPE_6__* %40)
  br label %42

42:                                               ; preds = %37, %16
  %43 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %44 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.dentry*, %struct.dentry** %4, align 8
  %47 = load i32, i32* @mt76_queues_read, align 4
  %48 = call i32 @debugfs_create_devm_seqfile(i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %struct.dentry* %46, i32 %47)
  %49 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %50 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dentry*, %struct.dentry** %4, align 8
  %53 = load i32, i32* @mt76_read_rate_txpower, align 4
  %54 = call i32 @debugfs_create_devm_seqfile(i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %struct.dentry* %52, i32 %53)
  %55 = load %struct.dentry*, %struct.dentry** %4, align 8
  store %struct.dentry* %55, %struct.dentry** %2, align 8
  br label %56

56:                                               ; preds = %42, %15
  %57 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %57
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_file_unsafe(i8*, i32, %struct.dentry*, %struct.mt76_dev*, i32*) #1

declare dso_local i32 @debugfs_create_blob(i8*, i32, %struct.dentry*, %struct.TYPE_6__*) #1

declare dso_local i32 @debugfs_create_devm_seqfile(i32, i8*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
