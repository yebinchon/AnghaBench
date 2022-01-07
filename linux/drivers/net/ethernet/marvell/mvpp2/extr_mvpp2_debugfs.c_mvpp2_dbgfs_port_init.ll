; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.mvpp2_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"parser_entries\00", align 1
@mvpp2_dbgfs_port_parser_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"mac_filter\00", align 1
@mvpp2_dbgfs_filter_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"vid_filter\00", align 1
@mvpp2_dbgfs_port_vid_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.mvpp2_port*)* @mvpp2_dbgfs_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_dbgfs_port_init(%struct.dentry* %0, %struct.mvpp2_port* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.mvpp2_port* %1, %struct.mvpp2_port** %4, align 8
  %6 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %7 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = call %struct.dentry* @debugfs_create_dir(i32 %10, %struct.dentry* %11)
  store %struct.dentry* %12, %struct.dentry** %5, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %15 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 292, %struct.dentry* %13, %struct.mvpp2_port* %14, i32* @mvpp2_dbgfs_port_parser_fops)
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %18 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 292, %struct.dentry* %16, %struct.mvpp2_port* %17, i32* @mvpp2_dbgfs_filter_fops)
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %21 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 292, %struct.dentry* %19, %struct.mvpp2_port* %20, i32* @mvpp2_dbgfs_port_vid_fops)
  ret i32 0
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.mvpp2_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
