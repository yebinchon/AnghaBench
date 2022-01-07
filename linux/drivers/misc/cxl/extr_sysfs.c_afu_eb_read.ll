; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_afu_eb_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_afu_eb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cxl_afu*, i8*, i32, i64)* }
%struct.cxl_afu = type { i32 }
%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }

@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @afu_eb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afu_eb_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.bin_attribute*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.cxl_afu*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.kobject* %1, %struct.kobject** %8, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %14 = load %struct.kobject*, %struct.kobject** %8, align 8
  %15 = call i32 @kobj_to_dev(%struct.kobject* %14)
  %16 = call %struct.cxl_afu* @to_cxl_afu(i32 %15)
  store %struct.cxl_afu* %16, %struct.cxl_afu** %13, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.cxl_afu*, i8*, i32, i64)*, i32 (%struct.cxl_afu*, i8*, i32, i64)** %18, align 8
  %20 = load %struct.cxl_afu*, %struct.cxl_afu** %13, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i64, i64* %12, align 8
  %24 = call i32 %19(%struct.cxl_afu* %20, i8* %21, i32 %22, i64 %23)
  ret i32 %24
}

declare dso_local %struct.cxl_afu* @to_cxl_afu(i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
