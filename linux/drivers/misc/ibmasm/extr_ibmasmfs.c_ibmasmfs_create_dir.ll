; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_ibmasmfs.c_ibmasmfs_create_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_ibmasmfs.c_ibmasmfs_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32, i32* }

@S_IFDIR = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@ibmasmfs_dir_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, i8*)* @ibmasmfs_create_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ibmasmfs_create_dir(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.dentry* @d_alloc_name(%struct.dentry* %8, i8* %9)
  store %struct.dentry* %10, %struct.dentry** %6, align 8
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = icmp ne %struct.dentry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.dentry* null, %struct.dentry** %3, align 8
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @S_IFDIR, align 4
  %19 = or i32 %18, 320
  %20 = call %struct.inode* @ibmasmfs_make_inode(i32 %17, i32 %19)
  store %struct.inode* %20, %struct.inode** %7, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = call i32 @dput(%struct.dentry* %24)
  store %struct.dentry* null, %struct.dentry** %3, align 8
  br label %36

26:                                               ; preds = %14
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  store i32* @simple_dir_inode_operations, i32** %28, align 8
  %29 = load i32, i32* @ibmasmfs_dir_ops, align 4
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = call i32 @d_add(%struct.dentry* %32, %struct.inode* %33)
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %35, %struct.dentry** %3, align 8
  br label %36

36:                                               ; preds = %26, %23, %13
  %37 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %37
}

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i8*) #1

declare dso_local %struct.inode* @ibmasmfs_make_inode(i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
