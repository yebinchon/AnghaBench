; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_cxl_sysfs_adapter_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_cxl_sysfs_adapter_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_attribute = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 (i32, i32)* }
%struct.cxl = type { i32 }

@adapter_attrs = common dso_local global %struct.device_attribute* null, align 8
@cxl_ops = common dso_local global %struct.TYPE_4__* null, align 8
@CXL_ADAPTER_ATTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_sysfs_adapter_add(%struct.cxl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl*, align 8
  %4 = alloca %struct.device_attribute*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cxl* %0, %struct.cxl** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.device_attribute*, %struct.device_attribute** @adapter_attrs, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.device_attribute* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %7
  %13 = load %struct.device_attribute*, %struct.device_attribute** @adapter_attrs, align 8
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
  %24 = load i32, i32* @CXL_ADAPTER_ATTRS, align 4
  %25 = call i64 %19(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %12
  %28 = load %struct.cxl*, %struct.cxl** %3, align 8
  %29 = getelementptr inbounds %struct.cxl, %struct.cxl* %28, i32 0, i32 0
  %30 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %31 = call i32 @device_create_file(i32* %29, %struct.device_attribute* %30)
  store i32 %31, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %40

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %12
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %7

39:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %72

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %67, %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  %47 = load %struct.device_attribute*, %struct.device_attribute** @adapter_attrs, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %47, i64 %49
  store %struct.device_attribute* %50, %struct.device_attribute** %4, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64 (i32, i32)*, i64 (i32, i32)** %52, align 8
  %54 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %55 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CXL_ADAPTER_ATTRS, align 4
  %59 = call i64 %53(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load %struct.cxl*, %struct.cxl** %3, align 8
  %63 = getelementptr inbounds %struct.cxl, %struct.cxl* %62, i32 0, i32 0
  %64 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %65 = call i32 @device_remove_file(i32* %63, %struct.device_attribute* %64)
  br label %66

66:                                               ; preds = %61, %46
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %5, align 4
  br label %43

70:                                               ; preds = %43
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %39
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @ARRAY_SIZE(%struct.device_attribute*) #1

declare dso_local i32 @device_create_file(i32*, %struct.device_attribute*) #1

declare dso_local i32 @device_remove_file(i32*, %struct.device_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
