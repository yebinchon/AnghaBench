; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_debugfs.c_i2400m_debugfs_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_debugfs.c_i2400m_debugfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32, i32, i32, %struct.dentry*, %struct.TYPE_2__ }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { %struct.dentry* }

@.str = private unnamed_addr constant [7 x i8] c"i2400m\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dl_\00", align 1
@control = common dso_local global i32 0, align 4
@driver = common dso_local global i32 0, align 4
@debugfs = common dso_local global i32 0, align 4
@fw = common dso_local global i32 0, align 4
@netdev = common dso_local global i32 0, align 4
@rfkill = common dso_local global i32 0, align 4
@rx = common dso_local global i32 0, align 4
@tx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"tx_in\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"tx_out\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"trace_msg_from_user\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"netdev_queue_stopped\00", align 1
@fops_netdev_queue_stopped = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"rx_stats\00", align 1
@i2400m_rx_stats_fops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"tx_stats\00", align 1
@i2400m_tx_stats_fops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@fops_i2400m_suspend = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@fops_i2400m_reset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400m_debugfs_add(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %4 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %5 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %4, i32 0, i32 5
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %7, %struct.dentry** %3, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.dentry* %8)
  store %struct.dentry* %9, %struct.dentry** %3, align 8
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %12 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %11, i32 0, i32 4
  store %struct.dentry* %10, %struct.dentry** %12, align 8
  %13 = load i32, i32* @control, align 4
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %13, %struct.dentry* %14)
  %16 = load i32, i32* @driver, align 4
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %16, %struct.dentry* %17)
  %19 = load i32, i32* @debugfs, align 4
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %19, %struct.dentry* %20)
  %22 = load i32, i32* @fw, align 4
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %22, %struct.dentry* %23)
  %25 = load i32, i32* @netdev, align 4
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %25, %struct.dentry* %26)
  %28 = load i32, i32* @rfkill, align 4
  %29 = load %struct.dentry*, %struct.dentry** %3, align 8
  %30 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %28, %struct.dentry* %29)
  %31 = load i32, i32* @rx, align 4
  %32 = load %struct.dentry*, %struct.dentry** %3, align 8
  %33 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %31, %struct.dentry* %32)
  %34 = load i32, i32* @tx, align 4
  %35 = load %struct.dentry*, %struct.dentry** %3, align 8
  %36 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %34, %struct.dentry* %35)
  %37 = load %struct.dentry*, %struct.dentry** %3, align 8
  %38 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %39 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %38, i32 0, i32 3
  %40 = call i32 @debugfs_create_size_t(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 256, %struct.dentry* %37, i32* %39)
  %41 = load %struct.dentry*, %struct.dentry** %3, align 8
  %42 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %43 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %42, i32 0, i32 2
  %44 = call i32 @debugfs_create_size_t(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 256, %struct.dentry* %41, i32* %43)
  %45 = load %struct.dentry*, %struct.dentry** %3, align 8
  %46 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %47 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %46, i32 0, i32 1
  %48 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 384, %struct.dentry* %45, i32* %47)
  %49 = load %struct.dentry*, %struct.dentry** %3, align 8
  %50 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %51 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %50, i32 0, i32 0
  %52 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 384, %struct.dentry* %49, i32* %51)
  %53 = load %struct.dentry*, %struct.dentry** %3, align 8
  %54 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %55 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 256, %struct.dentry* %53, %struct.i2400m* %54, i32* @fops_netdev_queue_stopped)
  %56 = load %struct.dentry*, %struct.dentry** %3, align 8
  %57 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %58 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 384, %struct.dentry* %56, %struct.i2400m* %57, i32* @i2400m_rx_stats_fops)
  %59 = load %struct.dentry*, %struct.dentry** %3, align 8
  %60 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %61 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 384, %struct.dentry* %59, %struct.i2400m* %60, i32* @i2400m_tx_stats_fops)
  %62 = load %struct.dentry*, %struct.dentry** %3, align 8
  %63 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %64 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 128, %struct.dentry* %62, %struct.i2400m* %63, i32* @fops_i2400m_suspend)
  %65 = load %struct.dentry*, %struct.dentry** %3, align 8
  %66 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %67 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 128, %struct.dentry* %65, %struct.i2400m* %66, i32* @fops_i2400m_reset)
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @d_level_register_debugfs(i8*, i32, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_size_t(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.i2400m*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
