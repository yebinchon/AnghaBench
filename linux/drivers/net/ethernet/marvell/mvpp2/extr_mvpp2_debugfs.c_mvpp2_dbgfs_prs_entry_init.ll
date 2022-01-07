; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_prs_entry_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_prs_entry_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mvpp2_dbgfs_prs_entry* }
%struct.mvpp2_dbgfs_prs_entry = type { i32, %struct.mvpp2* }

@MVPP2_PRS_TCAM_SRAM_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%03d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"sram\00", align 1
@mvpp2_dbgfs_prs_sram_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@mvpp2_dbgfs_prs_valid_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"lookup_id\00", align 1
@mvpp2_dbgfs_prs_lu_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"ai\00", align 1
@mvpp2_dbgfs_prs_ai_fops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"header_data\00", align 1
@mvpp2_dbgfs_prs_hdata_fops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"hits\00", align 1
@mvpp2_dbgfs_prs_hits_fops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"pmap\00", align 1
@mvpp2_dbgfs_prs_pmap_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.mvpp2*, i32)* @mvpp2_dbgfs_prs_entry_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_dbgfs_prs_entry_init(%struct.dentry* %0, %struct.mvpp2* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.mvpp2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvpp2_dbgfs_prs_entry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca [10 x i8], align 1
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.mvpp2* %1, %struct.mvpp2** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @MVPP2_PRS_TCAM_SRAM_SIZE, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %59

17:                                               ; preds = %3
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = call %struct.dentry* @debugfs_create_dir(i8* %21, %struct.dentry* %22)
  store %struct.dentry* %23, %struct.dentry** %9, align 8
  %24 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %25 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mvpp2_dbgfs_prs_entry, %struct.mvpp2_dbgfs_prs_entry* %28, i64 %30
  store %struct.mvpp2_dbgfs_prs_entry* %31, %struct.mvpp2_dbgfs_prs_entry** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %8, align 8
  %34 = getelementptr inbounds %struct.mvpp2_dbgfs_prs_entry, %struct.mvpp2_dbgfs_prs_entry* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %36 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %8, align 8
  %37 = getelementptr inbounds %struct.mvpp2_dbgfs_prs_entry, %struct.mvpp2_dbgfs_prs_entry* %36, i32 0, i32 1
  store %struct.mvpp2* %35, %struct.mvpp2** %37, align 8
  %38 = load %struct.dentry*, %struct.dentry** %9, align 8
  %39 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %8, align 8
  %40 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 292, %struct.dentry* %38, %struct.mvpp2_dbgfs_prs_entry* %39, i32* @mvpp2_dbgfs_prs_sram_fops)
  %41 = load %struct.dentry*, %struct.dentry** %9, align 8
  %42 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %8, align 8
  %43 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 420, %struct.dentry* %41, %struct.mvpp2_dbgfs_prs_entry* %42, i32* @mvpp2_dbgfs_prs_valid_fops)
  %44 = load %struct.dentry*, %struct.dentry** %9, align 8
  %45 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %8, align 8
  %46 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 420, %struct.dentry* %44, %struct.mvpp2_dbgfs_prs_entry* %45, i32* @mvpp2_dbgfs_prs_lu_fops)
  %47 = load %struct.dentry*, %struct.dentry** %9, align 8
  %48 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %8, align 8
  %49 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 420, %struct.dentry* %47, %struct.mvpp2_dbgfs_prs_entry* %48, i32* @mvpp2_dbgfs_prs_ai_fops)
  %50 = load %struct.dentry*, %struct.dentry** %9, align 8
  %51 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %8, align 8
  %52 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 420, %struct.dentry* %50, %struct.mvpp2_dbgfs_prs_entry* %51, i32* @mvpp2_dbgfs_prs_hdata_fops)
  %53 = load %struct.dentry*, %struct.dentry** %9, align 8
  %54 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %8, align 8
  %55 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 292, %struct.dentry* %53, %struct.mvpp2_dbgfs_prs_entry* %54, i32* @mvpp2_dbgfs_prs_hits_fops)
  %56 = load %struct.dentry*, %struct.dentry** %9, align 8
  %57 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %8, align 8
  %58 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 292, %struct.dentry* %56, %struct.mvpp2_dbgfs_prs_entry* %57, i32* @mvpp2_dbgfs_prs_pmap_fops)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %17, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.mvpp2_dbgfs_prs_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
