; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c___mmc_test_register_dbgfs_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c___mmc_test_register_dbgfs_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i64 }
%struct.file_operations = type { i32 }
%struct.dentry = type { i32 }
%struct.mmc_test_dbgfs_file = type { i32, %struct.dentry*, %struct.mmc_card* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mmc_test_file_test = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i8*, i32, %struct.file_operations*)* @__mmc_test_register_dbgfs_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mmc_test_register_dbgfs_file(%struct.mmc_card* %0, i8* %1, i32 %2, %struct.file_operations* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_card*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file_operations*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.mmc_test_dbgfs_file*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.file_operations* %3, %struct.file_operations** %9, align 8
  store %struct.dentry* null, %struct.dentry** %10, align 8
  %12 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %13 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %20 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %23 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %24 = call i32 @debugfs_create_file(i8* %17, i32 %18, i64 %21, %struct.mmc_card* %22, %struct.file_operations* %23)
  br label %25

25:                                               ; preds = %16, %4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.mmc_test_dbgfs_file* @kmalloc(i32 24, i32 %26)
  store %struct.mmc_test_dbgfs_file* %27, %struct.mmc_test_dbgfs_file** %11, align 8
  %28 = load %struct.mmc_test_dbgfs_file*, %struct.mmc_test_dbgfs_file** %11, align 8
  %29 = icmp ne %struct.mmc_test_dbgfs_file* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.dentry*, %struct.dentry** %10, align 8
  %32 = call i32 @debugfs_remove(%struct.dentry* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %45

35:                                               ; preds = %25
  %36 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %37 = load %struct.mmc_test_dbgfs_file*, %struct.mmc_test_dbgfs_file** %11, align 8
  %38 = getelementptr inbounds %struct.mmc_test_dbgfs_file, %struct.mmc_test_dbgfs_file* %37, i32 0, i32 2
  store %struct.mmc_card* %36, %struct.mmc_card** %38, align 8
  %39 = load %struct.dentry*, %struct.dentry** %10, align 8
  %40 = load %struct.mmc_test_dbgfs_file*, %struct.mmc_test_dbgfs_file** %11, align 8
  %41 = getelementptr inbounds %struct.mmc_test_dbgfs_file, %struct.mmc_test_dbgfs_file* %40, i32 0, i32 1
  store %struct.dentry* %39, %struct.dentry** %41, align 8
  %42 = load %struct.mmc_test_dbgfs_file*, %struct.mmc_test_dbgfs_file** %11, align 8
  %43 = getelementptr inbounds %struct.mmc_test_dbgfs_file, %struct.mmc_test_dbgfs_file* %42, i32 0, i32 0
  %44 = call i32 @list_add(i32* %43, i32* @mmc_test_file_test)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %35, %30
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @debugfs_create_file(i8*, i32, i64, %struct.mmc_card*, %struct.file_operations*) #1

declare dso_local %struct.mmc_test_dbgfs_file* @kmalloc(i32, i32) #1

declare dso_local i32 @debugfs_remove(%struct.dentry*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
