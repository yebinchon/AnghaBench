; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_debugfs.c_genwqe_init_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_debugfs.c_genwqe_init_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { %struct.dentry*, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s%d_card\00", align 1
@GENWQE_DEVNAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"ddcb_info\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@ddcb_info_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@info_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"err_inject\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"ddcb_software_timeout\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"kill_timeout\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"curr_regs\00", align 1
@curr_regs_fops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"curr_dbg_uid0\00", align 1
@curr_dbg_uid0_fops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"curr_dbg_uid1\00", align 1
@curr_dbg_uid1_fops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"curr_dbg_uid2\00", align 1
@curr_dbg_uid2_fops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"prev_regs\00", align 1
@prev_regs_fops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"prev_dbg_uid0\00", align 1
@prev_dbg_uid0_fops = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"prev_dbg_uid1\00", align 1
@prev_dbg_uid1_fops = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"prev_dbg_uid2\00", align 1
@prev_dbg_uid2_fops = common dso_local global i32 0, align 4
@GENWQE_MAX_VFS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"vf%u_jobtimeout_msec\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"jobtimer\00", align 1
@jtimer_fops = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"queue_working_time\00", align 1
@queue_working_time_fops = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"skip_recovery\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"use_platform_recovery\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @genwqe_init_debugfs(%struct.genwqe_dev* %0) #0 {
  %2 = alloca %struct.genwqe_dev*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %2, align 8
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %8 = load i8*, i8** @GENWQE_DEVNAME, align 8
  %9 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %10 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %11)
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %14 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %15 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.dentry* @debugfs_create_dir(i8* %13, i32 %16)
  store %struct.dentry* %17, %struct.dentry** %3, align 8
  %18 = load i32, i32* @S_IRUGO, align 4
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %21 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %18, %struct.dentry* %19, %struct.genwqe_dev* %20, i32* @ddcb_info_fops)
  %22 = load i32, i32* @S_IRUGO, align 4
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %25 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %22, %struct.dentry* %23, %struct.genwqe_dev* %24, i32* @info_fops)
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %28 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %27, i32 0, i32 6
  %29 = call i32 @debugfs_create_x64(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 438, %struct.dentry* %26, i32* %28)
  %30 = load %struct.dentry*, %struct.dentry** %3, align 8
  %31 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %32 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %31, i32 0, i32 5
  %33 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 438, %struct.dentry* %30, i32* %32)
  %34 = load %struct.dentry*, %struct.dentry** %3, align 8
  %35 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %36 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %35, i32 0, i32 4
  %37 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 438, %struct.dentry* %34, i32* %36)
  %38 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %39 = call i32 @genwqe_is_privileged(%struct.genwqe_dev* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %1
  %42 = load %struct.dentry*, %struct.dentry** %3, align 8
  %43 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %44 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %43, i32 0, i32 0
  store %struct.dentry* %42, %struct.dentry** %44, align 8
  br label %118

45:                                               ; preds = %1
  %46 = load i32, i32* @S_IRUGO, align 4
  %47 = load %struct.dentry*, %struct.dentry** %3, align 8
  %48 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %49 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %46, %struct.dentry* %47, %struct.genwqe_dev* %48, i32* @curr_regs_fops)
  %50 = load i32, i32* @S_IRUGO, align 4
  %51 = load %struct.dentry*, %struct.dentry** %3, align 8
  %52 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %53 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %50, %struct.dentry* %51, %struct.genwqe_dev* %52, i32* @curr_dbg_uid0_fops)
  %54 = load i32, i32* @S_IRUGO, align 4
  %55 = load %struct.dentry*, %struct.dentry** %3, align 8
  %56 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %57 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %54, %struct.dentry* %55, %struct.genwqe_dev* %56, i32* @curr_dbg_uid1_fops)
  %58 = load i32, i32* @S_IRUGO, align 4
  %59 = load %struct.dentry*, %struct.dentry** %3, align 8
  %60 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %61 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %58, %struct.dentry* %59, %struct.genwqe_dev* %60, i32* @curr_dbg_uid2_fops)
  %62 = load i32, i32* @S_IRUGO, align 4
  %63 = load %struct.dentry*, %struct.dentry** %3, align 8
  %64 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %65 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %62, %struct.dentry* %63, %struct.genwqe_dev* %64, i32* @prev_regs_fops)
  %66 = load i32, i32* @S_IRUGO, align 4
  %67 = load %struct.dentry*, %struct.dentry** %3, align 8
  %68 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %69 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %66, %struct.dentry* %67, %struct.genwqe_dev* %68, i32* @prev_dbg_uid0_fops)
  %70 = load i32, i32* @S_IRUGO, align 4
  %71 = load %struct.dentry*, %struct.dentry** %3, align 8
  %72 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %73 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %70, %struct.dentry* %71, %struct.genwqe_dev* %72, i32* @prev_dbg_uid1_fops)
  %74 = load i32, i32* @S_IRUGO, align 4
  %75 = load %struct.dentry*, %struct.dentry** %3, align 8
  %76 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %77 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %74, %struct.dentry* %75, %struct.genwqe_dev* %76, i32* @prev_dbg_uid2_fops)
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %95, %45
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @GENWQE_MAX_VFS, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %84 = load i32, i32* %6, align 4
  %85 = call i32 (i8*, i8*, ...) @sprintf(i8* %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %84)
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %87 = load %struct.dentry*, %struct.dentry** %3, align 8
  %88 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %89 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i32 @debugfs_create_u32(i8* %86, i32 438, %struct.dentry* %87, i32* %93)
  br label %95

95:                                               ; preds = %82
  %96 = load i32, i32* %6, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %78

98:                                               ; preds = %78
  %99 = load i32, i32* @S_IRUGO, align 4
  %100 = load %struct.dentry*, %struct.dentry** %3, align 8
  %101 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %102 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %99, %struct.dentry* %100, %struct.genwqe_dev* %101, i32* @jtimer_fops)
  %103 = load i32, i32* @S_IRUGO, align 4
  %104 = load %struct.dentry*, %struct.dentry** %3, align 8
  %105 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %106 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %103, %struct.dentry* %104, %struct.genwqe_dev* %105, i32* @queue_working_time_fops)
  %107 = load %struct.dentry*, %struct.dentry** %3, align 8
  %108 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %109 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %108, i32 0, i32 2
  %110 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 438, %struct.dentry* %107, i32* %109)
  %111 = load %struct.dentry*, %struct.dentry** %3, align 8
  %112 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %113 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %112, i32 0, i32 1
  %114 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 438, %struct.dentry* %111, i32* %113)
  %115 = load %struct.dentry*, %struct.dentry** %3, align 8
  %116 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %117 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %116, i32 0, i32 0
  store %struct.dentry* %115, %struct.dentry** %117, align 8
  br label %118

118:                                              ; preds = %98, %41
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.genwqe_dev*, i32*) #1

declare dso_local i32 @debugfs_create_x64(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @genwqe_is_privileged(%struct.genwqe_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
