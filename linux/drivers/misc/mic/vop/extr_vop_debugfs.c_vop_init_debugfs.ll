; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_debugfs.c_vop_init_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_debugfs.c_vop_init_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@KBUILD_MODNAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@vop_dp_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"vdev_info\00", align 1
@vop_vdev_info_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vop_init_debugfs(%struct.vop_info* %0) #0 {
  %2 = alloca %struct.vop_info*, align 8
  %3 = alloca [16 x i8], align 16
  store %struct.vop_info* %0, %struct.vop_info** %2, align 8
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %5 = load i8*, i8** @KBUILD_MODNAME, align 8
  %6 = load %struct.vop_info*, %struct.vop_info** %2, align 8
  %7 = getelementptr inbounds %struct.vop_info, %struct.vop_info* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @snprintf(i8* %4, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %5, i32 %10)
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %13 = call i32 @debugfs_create_dir(i8* %12, i32* null)
  %14 = load %struct.vop_info*, %struct.vop_info** %2, align 8
  %15 = getelementptr inbounds %struct.vop_info, %struct.vop_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.vop_info*, %struct.vop_info** %2, align 8
  %17 = getelementptr inbounds %struct.vop_info, %struct.vop_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.vop_info*, %struct.vop_info** %2, align 8
  %20 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 292, i32 %18, %struct.vop_info* %19, i32* @vop_dp_fops)
  %21 = load %struct.vop_info*, %struct.vop_info** %2, align 8
  %22 = getelementptr inbounds %struct.vop_info, %struct.vop_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.vop_info*, %struct.vop_info** %2, align 8
  %25 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 292, i32 %23, %struct.vop_info* %24, i32* @vop_vdev_info_fops)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.vop_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
