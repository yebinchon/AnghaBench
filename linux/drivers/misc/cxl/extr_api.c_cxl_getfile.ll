; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_api.c_cxl_getfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_api.c_cxl_getfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.file = type { i8* }
%struct.file_operations = type { i64 }
%struct.inode = type { i8* }

@ENOENT = common dso_local global i32 0, align 4
@cxl_fs_type = common dso_local global i32 0, align 4
@cxl_vfs_mount = common dso_local global %struct.TYPE_5__* null, align 8
@cxl_fs_cnt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot mount cxl pseudo filesystem: %d\0A\00", align 1
@O_ACCMODE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (i8*, %struct.file_operations*, i8*, i32)* @cxl_getfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @cxl_getfile(i8* %0, %struct.file_operations* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.file_operations*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.file_operations* %1, %struct.file_operations** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %14 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %19 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @try_module_get(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.inode* @ERR_PTR(i32 %25)
  %27 = bitcast %struct.inode* %26 to %struct.file*
  store %struct.file* %27, %struct.file** %5, align 8
  br label %83

28:                                               ; preds = %17, %4
  %29 = call i32 @simple_pin_fs(i32* @cxl_fs_type, %struct.TYPE_5__** @cxl_vfs_mount, i32* @cxl_fs_cnt)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = call %struct.inode* @ERR_PTR(i32 %35)
  %37 = bitcast %struct.inode* %36 to %struct.file*
  store %struct.file* %37, %struct.file** %10, align 8
  br label %77

38:                                               ; preds = %28
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cxl_vfs_mount, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.inode* @alloc_anon_inode(i32 %41)
  store %struct.inode* %42, %struct.inode** %11, align 8
  %43 = load %struct.inode*, %struct.inode** %11, align 8
  %44 = call i64 @IS_ERR(%struct.inode* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.inode*, %struct.inode** %11, align 8
  %48 = call %struct.inode* @ERR_CAST(%struct.inode* %47)
  %49 = bitcast %struct.inode* %48 to %struct.file*
  store %struct.file* %49, %struct.file** %10, align 8
  br label %75

50:                                               ; preds = %38
  %51 = load %struct.inode*, %struct.inode** %11, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cxl_vfs_mount, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @O_ACCMODE, align 4
  %56 = load i32, i32* @O_NONBLOCK, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %60 = call %struct.inode* @alloc_file_pseudo(%struct.inode* %51, %struct.TYPE_5__* %52, i8* %53, i32 %58, %struct.file_operations* %59)
  %61 = bitcast %struct.inode* %60 to %struct.file*
  store %struct.file* %61, %struct.file** %10, align 8
  %62 = load %struct.file*, %struct.file** %10, align 8
  %63 = bitcast %struct.file* %62 to %struct.inode*
  %64 = call i64 @IS_ERR(%struct.inode* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %50
  br label %72

67:                                               ; preds = %50
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.file*, %struct.file** %10, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %71, %struct.file** %5, align 8
  br label %83

72:                                               ; preds = %66
  %73 = load %struct.inode*, %struct.inode** %11, align 8
  %74 = call i32 @iput(%struct.inode* %73)
  br label %75

75:                                               ; preds = %72, %46
  %76 = call i32 @simple_release_fs(%struct.TYPE_5__** @cxl_vfs_mount, i32* @cxl_fs_cnt)
  br label %77

77:                                               ; preds = %75, %32
  %78 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %79 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @module_put(i64 %80)
  %82 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %82, %struct.file** %5, align 8
  br label %83

83:                                               ; preds = %77, %67, %23
  %84 = load %struct.file*, %struct.file** %5, align 8
  ret %struct.file* %84
}

declare dso_local i32 @try_module_get(i64) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @simple_pin_fs(i32*, %struct.TYPE_5__**, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.inode* @alloc_anon_inode(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.inode* @alloc_file_pseudo(%struct.inode*, %struct.TYPE_5__*, i8*, i32, %struct.file_operations*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @simple_release_fs(%struct.TYPE_5__**, i32*) #1

declare dso_local i32 @module_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
