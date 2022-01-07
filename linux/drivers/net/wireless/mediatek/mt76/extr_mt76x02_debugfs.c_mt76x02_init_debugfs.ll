; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_debugfs.c_mt76x02_init_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_debugfs.c_mt76x02_init_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tpc\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"edcca\00", align 1
@fops_edcca = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"ampdu_stat\00", align 1
@fops_ampdu_stat = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"dfs_stats\00", align 1
@fops_dfs_stat = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"txpower\00", align 1
@read_txpower = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"agc\00", align 1
@read_agc = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"tx_hang_reset\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_init_debugfs(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %4 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %4, i32 0, i32 1
  %6 = call %struct.dentry* @mt76_register_debugfs(%struct.TYPE_4__* %5)
  store %struct.dentry* %6, %struct.dentry** %3, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = icmp ne %struct.dentry* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 256, %struct.dentry* %11, i32* %14)
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %17, i32 0, i32 2
  %19 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 384, %struct.dentry* %16, i32* %18)
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %22 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 384, %struct.dentry* %20, %struct.mt76x02_dev* %21, i32* @fops_edcca)
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %25 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 256, %struct.dentry* %23, %struct.mt76x02_dev* %24, i32* @fops_ampdu_stat)
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %28 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 256, %struct.dentry* %26, %struct.mt76x02_dev* %27, i32* @fops_dfs_stat)
  %29 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %30 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dentry*, %struct.dentry** %3, align 8
  %34 = load i32, i32* @read_txpower, align 4
  %35 = call i32 @debugfs_create_devm_seqfile(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.dentry* %33, i32 %34)
  %36 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %37 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dentry*, %struct.dentry** %3, align 8
  %41 = load i32, i32* @read_agc, align 4
  %42 = call i32 @debugfs_create_devm_seqfile(i32 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.dentry* %40, i32 %41)
  %43 = load %struct.dentry*, %struct.dentry** %3, align 8
  %44 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %45 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %44, i32 0, i32 0
  %46 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 256, %struct.dentry* %43, i32* %45)
  br label %47

47:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.dentry* @mt76_register_debugfs(%struct.TYPE_4__*) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.mt76x02_dev*, i32*) #1

declare dso_local i32 @debugfs_create_devm_seqfile(i32, i8*, %struct.dentry*, i32) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
