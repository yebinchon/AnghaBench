; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_debugfs_create_iomem_x32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_debugfs_create_iomem_x32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.wil6210_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.wil_debugfs_iomem_data* }
%struct.wil_debugfs_iomem_data = type { i8*, %struct.wil6210_priv* }

@fops_iomem_x32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.dentry*, i8*, %struct.wil6210_priv*)* @wil_debugfs_create_iomem_x32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_debugfs_create_iomem_x32(i8* %0, i32 %1, %struct.dentry* %2, i8* %3, %struct.wil6210_priv* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wil6210_priv*, align 8
  %11 = alloca %struct.wil_debugfs_iomem_data*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.wil6210_priv* %4, %struct.wil6210_priv** %10, align 8
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %13 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.wil_debugfs_iomem_data*, %struct.wil_debugfs_iomem_data** %14, align 8
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %17 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.wil_debugfs_iomem_data, %struct.wil_debugfs_iomem_data* %15, i64 %19
  store %struct.wil_debugfs_iomem_data* %20, %struct.wil_debugfs_iomem_data** %11, align 8
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %22 = load %struct.wil_debugfs_iomem_data*, %struct.wil_debugfs_iomem_data** %11, align 8
  %23 = getelementptr inbounds %struct.wil_debugfs_iomem_data, %struct.wil_debugfs_iomem_data* %22, i32 0, i32 1
  store %struct.wil6210_priv* %21, %struct.wil6210_priv** %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.wil_debugfs_iomem_data*, %struct.wil_debugfs_iomem_data** %11, align 8
  %26 = getelementptr inbounds %struct.wil_debugfs_iomem_data, %struct.wil_debugfs_iomem_data* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.dentry*, %struct.dentry** %8, align 8
  %30 = load %struct.wil_debugfs_iomem_data*, %struct.wil_debugfs_iomem_data** %11, align 8
  %31 = call i32 @debugfs_create_file_unsafe(i8* %27, i32 %28, %struct.dentry* %29, %struct.wil_debugfs_iomem_data* %30, i32* @fops_iomem_x32)
  %32 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %33 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %34, align 8
  ret void
}

declare dso_local i32 @debugfs_create_file_unsafe(i8*, i32, %struct.dentry*, %struct.wil_debugfs_iomem_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
