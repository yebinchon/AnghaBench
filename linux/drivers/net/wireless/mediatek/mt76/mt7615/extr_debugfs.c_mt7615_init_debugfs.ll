; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_debugfs.c_mt7615_init_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_debugfs.c_mt7615_init_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.dentry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"scs\00", align 1
@fops_scs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@mt7615_radio_read = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"dfs_hw_pattern\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"pattern_len\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"pulse_period\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"pulse_width\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"pulse_power\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"radar_trigger\00", align 1
@fops_radar_pattern = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@mt7615_read_temperature = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7615_init_debugfs(%struct.mt7615_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7615_dev*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  %5 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %5, i32 0, i32 0
  %7 = call %struct.dentry* @mt76_register_debugfs(%struct.TYPE_4__* %6)
  store %struct.dentry* %7, %struct.dentry** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = icmp ne %struct.dentry* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %58

13:                                               ; preds = %1
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %16 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 384, %struct.dentry* %14, %struct.mt7615_dev* %15, i32* @fops_scs)
  %17 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = load i32, i32* @mt7615_radio_read, align 4
  %23 = call i32 @debugfs_create_devm_seqfile(i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %21, i32 %22)
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %25, i32 0, i32 2
  %27 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 256, %struct.dentry* %24, i32* %26)
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 384, %struct.dentry* %28, i32* %31)
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 384, %struct.dentry* %33, i32* %36)
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = call i32 @debugfs_create_u16(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 384, %struct.dentry* %38, i32* %41)
  %43 = load %struct.dentry*, %struct.dentry** %4, align 8
  %44 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @debugfs_create_u16(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 384, %struct.dentry* %43, i32* %46)
  %48 = load %struct.dentry*, %struct.dentry** %4, align 8
  %49 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %50 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 128, %struct.dentry* %48, %struct.mt7615_dev* %49, i32* @fops_radar_pattern)
  %51 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %52 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dentry*, %struct.dentry** %4, align 8
  %56 = load i32, i32* @mt7615_read_temperature, align 4
  %57 = call i32 @debugfs_create_devm_seqfile(i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), %struct.dentry* %55, i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %13, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.dentry* @mt76_register_debugfs(%struct.TYPE_4__*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.mt7615_dev*, i32*) #1

declare dso_local i32 @debugfs_create_devm_seqfile(i32, i8*, %struct.dentry*, i32) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u16(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
