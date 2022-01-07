; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_cxl_sysfs_afu_m_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_cxl_sysfs_afu_m_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_attribute = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 (i32, i32)* }
%struct.cxl_afu = type { i32 }

@afu_master_attrs = common dso_local global %struct.device_attribute* null, align 8
@cxl_ops = common dso_local global %struct.TYPE_4__* null, align 8
@CXL_AFU_MASTER_ATTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_sysfs_afu_m_add(%struct.cxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_afu*, align 8
  %4 = alloca %struct.device_attribute*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %40, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.device_attribute*, %struct.device_attribute** @afu_master_attrs, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.device_attribute* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %7
  %13 = load %struct.device_attribute*, %struct.device_attribute** @afu_master_attrs, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %13, i64 %15
  store %struct.device_attribute* %16, %struct.device_attribute** %4, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64 (i32, i32)*, i64 (i32, i32)** %18, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %21 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CXL_AFU_MASTER_ATTRS, align 4
  %25 = call i64 %19(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %12
  %28 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %29 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.device_attribute*, %struct.device_attribute** @afu_master_attrs, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %31, i64 %33
  %35 = call i32 @device_create_file(i32 %30, %struct.device_attribute* %34)
  store i32 %35, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %44

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %12
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %7

43:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %80

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %75, %44
  %48 = load i32, i32* %5, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %47
  %51 = load %struct.device_attribute*, %struct.device_attribute** @afu_master_attrs, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %51, i64 %53
  store %struct.device_attribute* %54, %struct.device_attribute** %4, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64 (i32, i32)*, i64 (i32, i32)** %56, align 8
  %58 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %59 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CXL_AFU_MASTER_ATTRS, align 4
  %63 = call i64 %57(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %50
  %66 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %67 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.device_attribute*, %struct.device_attribute** @afu_master_attrs, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %69, i64 %71
  %73 = call i32 @device_remove_file(i32 %68, %struct.device_attribute* %72)
  br label %74

74:                                               ; preds = %65, %50
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %5, align 4
  br label %47

78:                                               ; preds = %47
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %43
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @ARRAY_SIZE(%struct.device_attribute*) #1

declare dso_local i32 @device_create_file(i32, %struct.device_attribute*) #1

declare dso_local i32 @device_remove_file(i32, %struct.device_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
