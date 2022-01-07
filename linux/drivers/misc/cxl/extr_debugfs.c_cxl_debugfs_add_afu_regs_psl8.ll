; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_debugfs.c_cxl_debugfs_add_afu_regs_psl8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_debugfs.c_cxl_debugfs_add_afu_regs_psl8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"sstp0\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@CXL_SSTP0_An = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"sstp1\00", align 1
@CXL_SSTP1_An = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"fir\00", align 1
@CXL_PSL_FIR_SLICE_An = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"serr\00", align 1
@CXL_PSL_SERR_An = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"afu_debug\00", align 1
@CXL_AFU_DEBUG_An = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@CXL_PSL_SLICE_TRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_debugfs_add_afu_regs_psl8(%struct.cxl_afu* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.cxl_afu*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %5 = load i32, i32* @S_IRUSR, align 4
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %8 = load i32, i32* @CXL_SSTP0_An, align 4
  %9 = call i32 @_cxl_p2n_addr(%struct.cxl_afu* %7, i32 %8)
  %10 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %5, %struct.dentry* %6, i32 %9)
  %11 = load i32, i32* @S_IRUSR, align 4
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %14 = load i32, i32* @CXL_SSTP1_An, align 4
  %15 = call i32 @_cxl_p2n_addr(%struct.cxl_afu* %13, i32 %14)
  %16 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %11, %struct.dentry* %12, i32 %15)
  %17 = load i32, i32* @S_IRUSR, align 4
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %20 = load i32, i32* @CXL_PSL_FIR_SLICE_An, align 4
  %21 = call i32 @_cxl_p1n_addr(%struct.cxl_afu* %19, i32 %20)
  %22 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %17, %struct.dentry* %18, i32 %21)
  %23 = load i32, i32* @S_IRUSR, align 4
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %26 = load i32, i32* @CXL_PSL_SERR_An, align 4
  %27 = call i32 @_cxl_p1n_addr(%struct.cxl_afu* %25, i32 %26)
  %28 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %23, %struct.dentry* %24, i32 %27)
  %29 = load i32, i32* @S_IRUSR, align 4
  %30 = load %struct.dentry*, %struct.dentry** %4, align 8
  %31 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %32 = load i32, i32* @CXL_AFU_DEBUG_An, align 4
  %33 = call i32 @_cxl_p1n_addr(%struct.cxl_afu* %31, i32 %32)
  %34 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %29, %struct.dentry* %30, i32 %33)
  %35 = load i32, i32* @S_IRUSR, align 4
  %36 = load i32, i32* @S_IWUSR, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %40 = load i32, i32* @CXL_PSL_SLICE_TRACE, align 4
  %41 = call i32 @_cxl_p1n_addr(%struct.cxl_afu* %39, i32 %40)
  %42 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %37, %struct.dentry* %38, i32 %41)
  ret void
}

declare dso_local i32 @debugfs_create_io_x64(i8*, i32, %struct.dentry*, i32) #1

declare dso_local i32 @_cxl_p2n_addr(%struct.cxl_afu*, i32) #1

declare dso_local i32 @_cxl_p1n_addr(%struct.cxl_afu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
