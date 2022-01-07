; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_debugfs.c_mmc_add_host_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_debugfs.c_mmc_add_host_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, i32, %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ios\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@mmc_ios_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"caps\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"caps2\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@mmc_clock_fops = common dso_local global i32 0, align 4
@fail_default_attr = common dso_local global i32 0, align 4
@fail_request = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_add_host_debugfs(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = call i32 @mmc_hostname(%struct.mmc_host* %4)
  %6 = call %struct.dentry* @debugfs_create_dir(i32 %5, i32* null)
  store %struct.dentry* %6, %struct.dentry** %3, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %9 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 3
  store %struct.dentry* %7, %struct.dentry** %9, align 8
  %10 = load i32, i32* @S_IRUSR, align 4
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %13 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10, %struct.dentry* %11, %struct.mmc_host* %12, i32* @mmc_ios_fops)
  %14 = load i32, i32* @S_IRUSR, align 4
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 2
  %18 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %14, %struct.dentry* %15, i32* %17)
  %19 = load i32, i32* @S_IRUSR, align 4
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %22 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %21, i32 0, i32 1
  %23 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %19, %struct.dentry* %20, i32* %22)
  %24 = load i32, i32* @S_IRUSR, align 4
  %25 = load i32, i32* @S_IWUSR, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.dentry*, %struct.dentry** %3, align 8
  %28 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %29 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %26, %struct.dentry* %27, %struct.mmc_host* %28, i32* @mmc_clock_fops)
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.mmc_host*, i32*) #1

declare dso_local i32 @debugfs_create_x32(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
