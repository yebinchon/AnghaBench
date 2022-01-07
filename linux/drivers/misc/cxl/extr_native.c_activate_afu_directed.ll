; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_activate_afu_directed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_activate_afu_directed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [30 x i8] c"Activating AFU directed mode\0A\00", align 1
@CXL_MODE_DIRECTED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CXL_PSL_SCNTL_An = common dso_local global i32 0, align 4
@CXL_PSL_SCNTL_An_PM_AFU = common dso_local global i32 0, align 4
@CXL_PSL_AMOR_An = common dso_local global i32 0, align 4
@CXL_PSL_ID_An = common dso_local global i32 0, align 4
@CXL_PSL_ID_An_F = common dso_local global i32 0, align 4
@CXL_PSL_ID_An_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*)* @activate_afu_directed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate_afu_directed(%struct.cxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_afu*, align 8
  %4 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  %5 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %6 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %5, i32 0, i32 4
  %7 = call i32 @dev_info(i32* %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %9 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %12 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %14 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %21 = load i32, i32* @CXL_MODE_DIRECTED, align 4
  %22 = call i64 @cxl_alloc_spa(%struct.cxl_afu* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %74

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %30 = call i32 @attach_spa(%struct.cxl_afu* %29)
  %31 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %32 = load i32, i32* @CXL_PSL_SCNTL_An, align 4
  %33 = load i32, i32* @CXL_PSL_SCNTL_An_PM_AFU, align 4
  %34 = call i32 @cxl_p1n_write(%struct.cxl_afu* %31, i32 %32, i32 %33)
  %35 = call i64 (...) @cxl_is_power8()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %39 = load i32, i32* @CXL_PSL_AMOR_An, align 4
  %40 = call i32 @cxl_p1n_write(%struct.cxl_afu* %38, i32 %39, i32 -1)
  br label %41

41:                                               ; preds = %37, %28
  %42 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %43 = load i32, i32* @CXL_PSL_ID_An, align 4
  %44 = load i32, i32* @CXL_PSL_ID_An_F, align 4
  %45 = load i32, i32* @CXL_PSL_ID_An_L, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @cxl_p1n_write(%struct.cxl_afu* %42, i32 %43, i32 %46)
  %48 = load i32, i32* @CXL_MODE_DIRECTED, align 4
  %49 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %50 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %52 = call i32 @cxl_chardev_m_afu_add(%struct.cxl_afu* %51)
  store i32 %52, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %74

56:                                               ; preds = %41
  %57 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %58 = call i32 @cxl_sysfs_afu_m_add(%struct.cxl_afu* %57)
  store i32 %58, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %70

61:                                               ; preds = %56
  %62 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %63 = call i32 @cxl_chardev_s_afu_add(%struct.cxl_afu* %62)
  store i32 %63, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %67

66:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %74

67:                                               ; preds = %65
  %68 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %69 = call i32 @cxl_sysfs_afu_m_remove(%struct.cxl_afu* %68)
  br label %70

70:                                               ; preds = %67, %60
  %71 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %72 = call i32 @cxl_chardev_afu_remove(%struct.cxl_afu* %71)
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %66, %54, %24
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @cxl_alloc_spa(%struct.cxl_afu*, i32) #1

declare dso_local i32 @attach_spa(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_p1n_write(%struct.cxl_afu*, i32, i32) #1

declare dso_local i64 @cxl_is_power8(...) #1

declare dso_local i32 @cxl_chardev_m_afu_add(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_sysfs_afu_m_add(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_chardev_s_afu_add(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_sysfs_afu_m_remove(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_chardev_afu_remove(%struct.cxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
