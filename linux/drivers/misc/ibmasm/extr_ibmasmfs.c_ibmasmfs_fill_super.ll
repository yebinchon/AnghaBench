; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_ibmasmfs.c_ibmasmfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_ibmasmfs.c_ibmasmfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32*, i32, i32, i32 }
%struct.fs_context = type { i32 }
%struct.inode = type { i32, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@IBMASMFS_MAGIC = common dso_local global i32 0, align 4
@ibmasmfs_s_ops = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@ibmasmfs_dir_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @ibmasmfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmasmfs_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @PAGE_SHIFT, align 4
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @IBMASMFS_MAGIC, align 4
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 2
  store i32* @ibmasmfs_s_ops, i32** %17, align 8
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = load i32, i32* @S_IFDIR, align 4
  %22 = or i32 %21, 320
  %23 = call %struct.inode* @ibmasmfs_make_inode(%struct.super_block* %20, i32 %22)
  store %struct.inode* %23, %struct.inode** %6, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %49

29:                                               ; preds = %2
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  store i32* @simple_dir_inode_operations, i32** %31, align 8
  %32 = load i32, i32* @ibmasmfs_dir_ops, align 4
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call i32 @d_make_root(%struct.inode* %35)
  %37 = load %struct.super_block*, %struct.super_block** %4, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.super_block*, %struct.super_block** %4, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %29
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %29
  %47 = load %struct.super_block*, %struct.super_block** %4, align 8
  %48 = call i32 @ibmasmfs_create_files(%struct.super_block* %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %43, %26
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.inode* @ibmasmfs_make_inode(%struct.super_block*, i32) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

declare dso_local i32 @ibmasmfs_create_files(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
