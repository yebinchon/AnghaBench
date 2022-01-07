; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_activate_dedicated_process_psl9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_activate_dedicated_process_psl9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [35 x i8] c"Activating dedicated process mode\0A\00", align 1
@CXL_MODE_DEDICATED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CXL_PSL_SCNTL_An = common dso_local global i32 0, align 4
@CXL_PSL_SCNTL_An_PM_Process = common dso_local global i32 0, align 4
@CXL_PSL_ID_An = common dso_local global i32 0, align 4
@CXL_PSL_ID_An_F = common dso_local global i32 0, align 4
@CXL_PSL_ID_An_L = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_activate_dedicated_process_psl9(%struct.cxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_afu*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  %4 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %5 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %4, i32 0, i32 3
  %6 = call i32 @dev_info(i32* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %8 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %10 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %17 = load i32, i32* @CXL_MODE_DEDICATED, align 4
  %18 = call i64 @cxl_alloc_spa(%struct.cxl_afu* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %42

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %26 = call i32 @attach_spa(%struct.cxl_afu* %25)
  %27 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %28 = load i32, i32* @CXL_PSL_SCNTL_An, align 4
  %29 = load i32, i32* @CXL_PSL_SCNTL_An_PM_Process, align 4
  %30 = call i32 @cxl_p1n_write(%struct.cxl_afu* %27, i32 %28, i32 %29)
  %31 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %32 = load i32, i32* @CXL_PSL_ID_An, align 4
  %33 = load i32, i32* @CXL_PSL_ID_An_F, align 4
  %34 = load i32, i32* @CXL_PSL_ID_An_L, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @cxl_p1n_write(%struct.cxl_afu* %31, i32 %32, i32 %35)
  %37 = load i32, i32* @CXL_MODE_DEDICATED, align 4
  %38 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %39 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %41 = call i32 @cxl_chardev_d_afu_add(%struct.cxl_afu* %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %24, %20
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @cxl_alloc_spa(%struct.cxl_afu*, i32) #1

declare dso_local i32 @attach_spa(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_p1n_write(%struct.cxl_afu*, i32, i32) #1

declare dso_local i32 @cxl_chardev_d_afu_add(%struct.cxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
