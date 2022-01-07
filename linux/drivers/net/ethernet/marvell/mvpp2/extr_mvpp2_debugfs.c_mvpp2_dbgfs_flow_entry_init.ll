; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_flow_entry_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_flow_entry_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.mvpp2 = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mvpp2_dbgfs_flow_entry* }
%struct.mvpp2_dbgfs_flow_entry = type { i32, %struct.mvpp2* }

@.str = private unnamed_addr constant [5 x i8] c"%02d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dec_hits\00", align 1
@mvpp2_dbgfs_flow_dec_hits_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@mvpp2_dbgfs_flow_type_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@mvpp2_dbgfs_flow_id_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.mvpp2*, i32)* @mvpp2_dbgfs_flow_entry_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_dbgfs_flow_entry_init(%struct.dentry* %0, %struct.mvpp2* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.mvpp2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvpp2_dbgfs_flow_entry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca [10 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.mvpp2* %1, %struct.mvpp2** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = call %struct.dentry* @debugfs_create_dir(i8* %16, %struct.dentry* %17)
  store %struct.dentry* %18, %struct.dentry** %9, align 8
  %19 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %20 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.mvpp2_dbgfs_flow_entry*, %struct.mvpp2_dbgfs_flow_entry** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mvpp2_dbgfs_flow_entry, %struct.mvpp2_dbgfs_flow_entry* %23, i64 %25
  store %struct.mvpp2_dbgfs_flow_entry* %26, %struct.mvpp2_dbgfs_flow_entry** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.mvpp2_dbgfs_flow_entry*, %struct.mvpp2_dbgfs_flow_entry** %8, align 8
  %29 = getelementptr inbounds %struct.mvpp2_dbgfs_flow_entry, %struct.mvpp2_dbgfs_flow_entry* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %31 = load %struct.mvpp2_dbgfs_flow_entry*, %struct.mvpp2_dbgfs_flow_entry** %8, align 8
  %32 = getelementptr inbounds %struct.mvpp2_dbgfs_flow_entry, %struct.mvpp2_dbgfs_flow_entry* %31, i32 0, i32 1
  store %struct.mvpp2* %30, %struct.mvpp2** %32, align 8
  %33 = load %struct.dentry*, %struct.dentry** %9, align 8
  %34 = load %struct.mvpp2_dbgfs_flow_entry*, %struct.mvpp2_dbgfs_flow_entry** %8, align 8
  %35 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 292, %struct.dentry* %33, %struct.mvpp2_dbgfs_flow_entry* %34, i32* @mvpp2_dbgfs_flow_dec_hits_fops)
  %36 = load %struct.dentry*, %struct.dentry** %9, align 8
  %37 = load %struct.mvpp2_dbgfs_flow_entry*, %struct.mvpp2_dbgfs_flow_entry** %8, align 8
  %38 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 292, %struct.dentry* %36, %struct.mvpp2_dbgfs_flow_entry* %37, i32* @mvpp2_dbgfs_flow_type_fops)
  %39 = load %struct.dentry*, %struct.dentry** %9, align 8
  %40 = load %struct.mvpp2_dbgfs_flow_entry*, %struct.mvpp2_dbgfs_flow_entry** %8, align 8
  %41 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 292, %struct.dentry* %39, %struct.mvpp2_dbgfs_flow_entry* %40, i32* @mvpp2_dbgfs_flow_id_fops)
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %64, %3
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %45 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load %struct.dentry*, %struct.dentry** %9, align 8
  %50 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %51 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mvpp2_dbgfs_flow_entry*, %struct.mvpp2_dbgfs_flow_entry** %8, align 8
  %58 = call i32 @mvpp2_dbgfs_flow_port_init(%struct.dentry* %49, i32 %56, %struct.mvpp2_dbgfs_flow_entry* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %68

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %42

67:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %61
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.mvpp2_dbgfs_flow_entry*, i32*) #1

declare dso_local i32 @mvpp2_dbgfs_flow_port_init(%struct.dentry*, i32, %struct.mvpp2_dbgfs_flow_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
