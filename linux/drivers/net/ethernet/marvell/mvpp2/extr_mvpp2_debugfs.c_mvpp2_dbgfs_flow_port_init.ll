; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_flow_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_flow_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.mvpp2_port = type { i64, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.mvpp2_dbgfs_port_flow_entry* }
%struct.mvpp2_dbgfs_port_flow_entry = type { %struct.mvpp2_dbgfs_flow_entry*, %struct.mvpp2_port* }
%struct.TYPE_5__ = type { i32 }
%struct.mvpp2_dbgfs_flow_entry = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"hash_opts\00", align 1
@mvpp2_dbgfs_port_flow_hash_opt_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@mvpp2_dbgfs_port_flow_engine_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.mvpp2_port*, %struct.mvpp2_dbgfs_flow_entry*)* @mvpp2_dbgfs_flow_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_dbgfs_flow_port_init(%struct.dentry* %0, %struct.mvpp2_port* %1, %struct.mvpp2_dbgfs_flow_entry* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca %struct.mvpp2_dbgfs_flow_entry*, align 8
  %7 = alloca %struct.mvpp2_dbgfs_port_flow_entry*, align 8
  %8 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.mvpp2_port* %1, %struct.mvpp2_port** %5, align 8
  store %struct.mvpp2_dbgfs_flow_entry* %2, %struct.mvpp2_dbgfs_flow_entry** %6, align 8
  %9 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %10 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = call %struct.dentry* @debugfs_create_dir(i32 %13, %struct.dentry* %14)
  store %struct.dentry* %15, %struct.dentry** %8, align 8
  %16 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %17 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.mvpp2_dbgfs_port_flow_entry*, %struct.mvpp2_dbgfs_port_flow_entry** %21, align 8
  %23 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %24 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.mvpp2_dbgfs_port_flow_entry, %struct.mvpp2_dbgfs_port_flow_entry* %22, i64 %25
  store %struct.mvpp2_dbgfs_port_flow_entry* %26, %struct.mvpp2_dbgfs_port_flow_entry** %7, align 8
  %27 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %28 = load %struct.mvpp2_dbgfs_port_flow_entry*, %struct.mvpp2_dbgfs_port_flow_entry** %7, align 8
  %29 = getelementptr inbounds %struct.mvpp2_dbgfs_port_flow_entry, %struct.mvpp2_dbgfs_port_flow_entry* %28, i32 0, i32 1
  store %struct.mvpp2_port* %27, %struct.mvpp2_port** %29, align 8
  %30 = load %struct.mvpp2_dbgfs_flow_entry*, %struct.mvpp2_dbgfs_flow_entry** %6, align 8
  %31 = load %struct.mvpp2_dbgfs_port_flow_entry*, %struct.mvpp2_dbgfs_port_flow_entry** %7, align 8
  %32 = getelementptr inbounds %struct.mvpp2_dbgfs_port_flow_entry, %struct.mvpp2_dbgfs_port_flow_entry* %31, i32 0, i32 0
  store %struct.mvpp2_dbgfs_flow_entry* %30, %struct.mvpp2_dbgfs_flow_entry** %32, align 8
  %33 = load %struct.dentry*, %struct.dentry** %8, align 8
  %34 = load %struct.mvpp2_dbgfs_port_flow_entry*, %struct.mvpp2_dbgfs_port_flow_entry** %7, align 8
  %35 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 292, %struct.dentry* %33, %struct.mvpp2_dbgfs_port_flow_entry* %34, i32* @mvpp2_dbgfs_port_flow_hash_opt_fops)
  %36 = load %struct.dentry*, %struct.dentry** %8, align 8
  %37 = load %struct.mvpp2_dbgfs_port_flow_entry*, %struct.mvpp2_dbgfs_port_flow_entry** %7, align 8
  %38 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 292, %struct.dentry* %36, %struct.mvpp2_dbgfs_port_flow_entry* %37, i32* @mvpp2_dbgfs_port_flow_engine_fops)
  ret i32 0
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.mvpp2_dbgfs_port_flow_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
