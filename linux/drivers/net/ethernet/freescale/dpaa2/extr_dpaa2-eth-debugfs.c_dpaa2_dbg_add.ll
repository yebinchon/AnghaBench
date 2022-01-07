; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth-debugfs.c_dpaa2_dbg_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth-debugfs.c_dpaa2_dbg_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.TYPE_3__ = type { i32 }

@dpaa2_dbg_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cpu_stats\00", align 1
@dpaa2_dbg_cpu_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"fq_stats\00", align 1
@dpaa2_dbg_fq_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ch_stats\00", align 1
@dpaa2_dbg_ch_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpaa2_dbg_add(%struct.dpaa2_eth_priv* %0) #0 {
  %2 = alloca %struct.dpaa2_eth_priv*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %2, align 8
  %4 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %5 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @dpaa2_dbg_root, align 4
  %10 = call %struct.dentry* @debugfs_create_dir(i32 %8, i32 %9)
  store %struct.dentry* %10, %struct.dentry** %3, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %13 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.dentry* %11, %struct.dentry** %14, align 8
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %17 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 292, %struct.dentry* %15, %struct.dpaa2_eth_priv* %16, i32* @dpaa2_dbg_cpu_ops)
  %18 = load %struct.dentry*, %struct.dentry** %3, align 8
  %19 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %20 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 292, %struct.dentry* %18, %struct.dpaa2_eth_priv* %19, i32* @dpaa2_dbg_fq_ops)
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  %22 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %23 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 292, %struct.dentry* %21, %struct.dpaa2_eth_priv* %22, i32* @dpaa2_dbg_ch_ops)
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.dpaa2_eth_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
