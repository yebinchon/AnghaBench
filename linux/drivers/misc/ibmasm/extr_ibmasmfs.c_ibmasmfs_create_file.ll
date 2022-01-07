; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_ibmasmfs.c_ibmasmfs_create_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_ibmasmfs.c_ibmasmfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }
%struct.inode = type { i8*, %struct.file_operations* }

@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, i8*, %struct.file_operations*, i8*, i32)* @ibmasmfs_create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ibmasmfs_create_file(%struct.dentry* %0, i8* %1, %struct.file_operations* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.file_operations*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.file_operations* %2, %struct.file_operations** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.dentry*, %struct.dentry** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call %struct.dentry* @d_alloc_name(%struct.dentry* %14, i8* %15)
  store %struct.dentry* %16, %struct.dentry** %12, align 8
  %17 = load %struct.dentry*, %struct.dentry** %12, align 8
  %18 = icmp ne %struct.dentry* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store %struct.dentry* null, %struct.dentry** %6, align 8
  br label %44

20:                                               ; preds = %5
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @S_IFREG, align 4
  %25 = load i32, i32* %11, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.inode* @ibmasmfs_make_inode(i32 %23, i32 %26)
  store %struct.inode* %27, %struct.inode** %13, align 8
  %28 = load %struct.inode*, %struct.inode** %13, align 8
  %29 = icmp ne %struct.inode* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load %struct.dentry*, %struct.dentry** %12, align 8
  %32 = call i32 @dput(%struct.dentry* %31)
  store %struct.dentry* null, %struct.dentry** %6, align 8
  br label %44

33:                                               ; preds = %20
  %34 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %35 = load %struct.inode*, %struct.inode** %13, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  store %struct.file_operations* %34, %struct.file_operations** %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.inode*, %struct.inode** %13, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.dentry*, %struct.dentry** %12, align 8
  %41 = load %struct.inode*, %struct.inode** %13, align 8
  %42 = call i32 @d_add(%struct.dentry* %40, %struct.inode* %41)
  %43 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %43, %struct.dentry** %6, align 8
  br label %44

44:                                               ; preds = %33, %30, %19
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  ret %struct.dentry* %45
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
