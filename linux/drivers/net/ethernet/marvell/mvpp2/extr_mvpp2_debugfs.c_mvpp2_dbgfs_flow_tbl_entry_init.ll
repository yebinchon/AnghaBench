; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_flow_tbl_entry_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_flow_tbl_entry_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mvpp2_dbgfs_flow_tbl_entry* }
%struct.mvpp2_dbgfs_flow_tbl_entry = type { i32, %struct.mvpp2* }

@MVPP2_CLS_FLOWS_TBL_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%03d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"hits\00", align 1
@mvpp2_dbgfs_flow_flt_hits_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.mvpp2*, i32)* @mvpp2_dbgfs_flow_tbl_entry_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_dbgfs_flow_tbl_entry_init(%struct.dentry* %0, %struct.mvpp2* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.mvpp2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvpp2_dbgfs_flow_tbl_entry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca [10 x i8], align 1
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.mvpp2* %1, %struct.mvpp2** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @MVPP2_CLS_FLOWS_TBL_SIZE, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %47

17:                                               ; preds = %3
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = call %struct.dentry* @debugfs_create_dir(i8* %21, %struct.dentry* %22)
  store %struct.dentry* %23, %struct.dentry** %9, align 8
  %24 = load %struct.dentry*, %struct.dentry** %9, align 8
  %25 = icmp ne %struct.dentry* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %47

29:                                               ; preds = %17
  %30 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %31 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.mvpp2_dbgfs_flow_tbl_entry*, %struct.mvpp2_dbgfs_flow_tbl_entry** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mvpp2_dbgfs_flow_tbl_entry, %struct.mvpp2_dbgfs_flow_tbl_entry* %34, i64 %36
  store %struct.mvpp2_dbgfs_flow_tbl_entry* %37, %struct.mvpp2_dbgfs_flow_tbl_entry** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.mvpp2_dbgfs_flow_tbl_entry*, %struct.mvpp2_dbgfs_flow_tbl_entry** %8, align 8
  %40 = getelementptr inbounds %struct.mvpp2_dbgfs_flow_tbl_entry, %struct.mvpp2_dbgfs_flow_tbl_entry* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %42 = load %struct.mvpp2_dbgfs_flow_tbl_entry*, %struct.mvpp2_dbgfs_flow_tbl_entry** %8, align 8
  %43 = getelementptr inbounds %struct.mvpp2_dbgfs_flow_tbl_entry, %struct.mvpp2_dbgfs_flow_tbl_entry* %42, i32 0, i32 1
  store %struct.mvpp2* %41, %struct.mvpp2** %43, align 8
  %44 = load %struct.dentry*, %struct.dentry** %9, align 8
  %45 = load %struct.mvpp2_dbgfs_flow_tbl_entry*, %struct.mvpp2_dbgfs_flow_tbl_entry** %8, align 8
  %46 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 292, %struct.dentry* %44, %struct.mvpp2_dbgfs_flow_tbl_entry* %45, i32* @mvpp2_dbgfs_flow_flt_hits_fops)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %29, %26, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.mvpp2_dbgfs_flow_tbl_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
