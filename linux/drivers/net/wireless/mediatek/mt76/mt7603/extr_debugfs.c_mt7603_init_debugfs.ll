; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_debugfs.c_mt7603_init_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_debugfs.c_mt7603_init_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"edcca\00", align 1
@fops_edcca = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"reset_test\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@mt7603_reset_read = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@mt7603_radio_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7603_init_debugfs(%struct.mt7603_dev* %0) #0 {
  %2 = alloca %struct.mt7603_dev*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %2, align 8
  %4 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %4, i32 0, i32 0
  %6 = call %struct.dentry* @mt76_register_debugfs(%struct.TYPE_2__* %5)
  store %struct.dentry* %6, %struct.dentry** %3, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = icmp ne %struct.dentry* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %32

10:                                               ; preds = %1
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %13 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 384, %struct.dentry* %11, %struct.mt7603_dev* %12, i32* @fops_edcca)
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %16 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %15, i32 0, i32 1
  %17 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 384, %struct.dentry* %14, i32* %16)
  %18 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %19 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dentry*, %struct.dentry** %3, align 8
  %23 = load i32, i32* @mt7603_reset_read, align 4
  %24 = call i32 @debugfs_create_devm_seqfile(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.dentry* %22, i32 %23)
  %25 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %26 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dentry*, %struct.dentry** %3, align 8
  %30 = load i32, i32* @mt7603_radio_read, align 4
  %31 = call i32 @debugfs_create_devm_seqfile(i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.dentry* %29, i32 %30)
  br label %32

32:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.dentry* @mt76_register_debugfs(%struct.TYPE_2__*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.mt7603_dev*, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_devm_seqfile(i32, i8*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
