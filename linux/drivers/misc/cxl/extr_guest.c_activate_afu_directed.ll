; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_activate_afu_directed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_activate_afu_directed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Activating AFU(%d) directed mode\0A\00", align 1
@CXL_MODE_DIRECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*)* @activate_afu_directed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate_afu_directed(%struct.cxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_afu*, align 8
  %4 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  %5 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %6 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %5, i32 0, i32 4
  %7 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %8 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_info(i32* %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @CXL_MODE_DIRECTED, align 4
  %12 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %13 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %15 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %18 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %20 = call i32 @cxl_chardev_m_afu_add(%struct.cxl_afu* %19)
  store i32 %20, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %42

24:                                               ; preds = %1
  %25 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %26 = call i32 @cxl_sysfs_afu_m_add(%struct.cxl_afu* %25)
  store i32 %26, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %38

29:                                               ; preds = %24
  %30 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %31 = call i32 @cxl_chardev_s_afu_add(%struct.cxl_afu* %30)
  store i32 %31, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %35

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %42

35:                                               ; preds = %33
  %36 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %37 = call i32 @cxl_sysfs_afu_m_remove(%struct.cxl_afu* %36)
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %40 = call i32 @cxl_chardev_afu_remove(%struct.cxl_afu* %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %34, %22
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

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
