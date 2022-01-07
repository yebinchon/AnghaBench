; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_afu_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_afu_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.cxl_afu*, i32, i32, i64*)* }
%struct.cxl_afu = type { i32 }
%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.afu_config_record = type { i32 }

@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @afu_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @afu_read_config(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.bin_attribute*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.afu_config_record*, align 8
  %14 = alloca %struct.cxl_afu*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.kobject* %1, %struct.kobject** %8, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %19 = load %struct.kobject*, %struct.kobject** %8, align 8
  %20 = call %struct.afu_config_record* @to_cr(%struct.kobject* %19)
  store %struct.afu_config_record* %20, %struct.afu_config_record** %13, align 8
  %21 = load %struct.kobject*, %struct.kobject** %8, align 8
  %22 = getelementptr inbounds %struct.kobject, %struct.kobject* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kobj_to_dev(i32 %23)
  %25 = call %struct.cxl_afu* @to_cxl_afu(i32 %24)
  store %struct.cxl_afu* %25, %struct.cxl_afu** %14, align 8
  store i64 0, i64* %15, align 8
  br label %26

26:                                               ; preds = %74, %6
  %27 = load i64, i64* %15, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %75

30:                                               ; preds = %26
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64 (%struct.cxl_afu*, i32, i32, i64*)*, i64 (%struct.cxl_afu*, i32, i32, i64*)** %32, align 8
  %34 = load %struct.cxl_afu*, %struct.cxl_afu** %14, align 8
  %35 = load %struct.afu_config_record*, %struct.afu_config_record** %13, align 8
  %36 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %38, -8
  %40 = call i64 %33(%struct.cxl_afu* %34, i32 %37, i32 %39, i64* %17)
  store i64 %40, i64* %18, align 8
  %41 = load i64, i64* %18, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  store i64 -1, i64* %17, align 8
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 7
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %16, align 8
  br label %48

48:                                               ; preds = %67, %44
  %49 = load i64, i64* %16, align 8
  %50 = icmp ult i64 %49, 8
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ult i64 %52, %53
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %57, label %74

57:                                               ; preds = %55
  %58 = load i64, i64* %17, align 8
  %59 = load i64, i64* %16, align 8
  %60 = mul i64 %59, 8
  %61 = lshr i64 %58, %60
  %62 = and i64 %61, 255
  %63 = trunc i64 %62 to i8
  %64 = load i8*, i8** %10, align 8
  %65 = load i64, i64* %15, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 %63, i8* %66, align 1
  br label %67

67:                                               ; preds = %57
  %68 = load i64, i64* %15, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %15, align 8
  %70 = load i64, i64* %16, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %16, align 8
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %48

74:                                               ; preds = %55
  br label %26

75:                                               ; preds = %26
  %76 = load i64, i64* %12, align 8
  ret i64 %76
}

declare dso_local %struct.afu_config_record* @to_cr(%struct.kobject*) #1

declare dso_local %struct.cxl_afu* @to_cxl_afu(i32) #1

declare dso_local i32 @kobj_to_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
