; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_cxl_sysfs_adapter_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_cxl_sysfs_adapter_remove.c"
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
define dso_local void @cxl_sysfs_adapter_remove(%struct.cxl* %0) #0 {
  %2 = alloca %struct.cxl*, align 8
  %3 = alloca %struct.device_attribute*, align 8
  %4 = alloca i32, align 4
  store %struct.cxl* %0, %struct.cxl** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.device_attribute*, %struct.device_attribute** @adapter_attrs, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.device_attribute* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %5
  %11 = load %struct.device_attribute*, %struct.device_attribute** @adapter_attrs, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %11, i64 %13
  store %struct.device_attribute* %14, %struct.device_attribute** %3, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64 (i32, i32)*, i64 (i32, i32)** %16, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %3, align 8
  %19 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CXL_ADAPTER_ATTRS, align 4
  %23 = call i64 %17(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %10
  %26 = load %struct.cxl*, %struct.cxl** %2, align 8
  %27 = getelementptr inbounds %struct.cxl, %struct.cxl* %26, i32 0, i32 0
  %28 = load %struct.device_attribute*, %struct.device_attribute** %3, align 8
  %29 = call i32 @device_remove_file(i32* %27, %struct.device_attribute* %28)
  br label %30

30:                                               ; preds = %25, %10
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %5

34:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.device_attribute*) #1

declare dso_local i32 @device_remove_file(i32*, %struct.device_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
