; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_debugfs.c_cxl_debugfs_adapter_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_debugfs.c_cxl_debugfs_adapter_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32, %struct.TYPE_4__*, %struct.dentry* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.cxl*, %struct.dentry*)* }
%struct.dentry = type { i32 }

@cxl_debugfs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"card%i\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"err_ivte\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@CXL_PSL_ErrIVTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_debugfs_adapter_add(%struct.cxl* %0) #0 {
  %2 = alloca %struct.cxl*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca [32 x i8], align 16
  store %struct.cxl* %0, %struct.cxl** %2, align 8
  %5 = load i32, i32* @cxl_debugfs, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %45

8:                                                ; preds = %1
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %10 = load %struct.cxl*, %struct.cxl** %2, align 8
  %11 = getelementptr inbounds %struct.cxl, %struct.cxl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @snprintf(i8* %9, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %15 = load i32, i32* @cxl_debugfs, align 4
  %16 = call %struct.dentry* @debugfs_create_dir(i8* %14, i32 %15)
  store %struct.dentry* %16, %struct.dentry** %3, align 8
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = load %struct.cxl*, %struct.cxl** %2, align 8
  %19 = getelementptr inbounds %struct.cxl, %struct.cxl* %18, i32 0, i32 2
  store %struct.dentry* %17, %struct.dentry** %19, align 8
  %20 = load i32, i32* @S_IRUSR, align 4
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  %22 = load %struct.cxl*, %struct.cxl** %2, align 8
  %23 = load i32, i32* @CXL_PSL_ErrIVTE, align 4
  %24 = call i32 @_cxl_p1_addr(%struct.cxl* %22, i32 %23)
  %25 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %20, %struct.dentry* %21, i32 %24)
  %26 = load %struct.cxl*, %struct.cxl** %2, align 8
  %27 = getelementptr inbounds %struct.cxl, %struct.cxl* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.cxl*, %struct.dentry*)*, i32 (%struct.cxl*, %struct.dentry*)** %31, align 8
  %33 = icmp ne i32 (%struct.cxl*, %struct.dentry*)* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %8
  %35 = load %struct.cxl*, %struct.cxl** %2, align 8
  %36 = getelementptr inbounds %struct.cxl, %struct.cxl* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (%struct.cxl*, %struct.dentry*)*, i32 (%struct.cxl*, %struct.dentry*)** %40, align 8
  %42 = load %struct.cxl*, %struct.cxl** %2, align 8
  %43 = load %struct.dentry*, %struct.dentry** %3, align 8
  %44 = call i32 %41(%struct.cxl* %42, %struct.dentry* %43)
  br label %45

45:                                               ; preds = %7, %34, %8
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_io_x64(i8*, i32, %struct.dentry*, i32) #1

declare dso_local i32 @_cxl_p1_addr(%struct.cxl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
