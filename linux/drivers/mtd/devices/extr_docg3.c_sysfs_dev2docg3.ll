; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_sysfs_dev2docg3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_sysfs_dev2docg3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.mtd_info = type { %struct.docg3* }

@DOC_MAX_NBFLOORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.docg3* (%struct.device*, %struct.device_attribute*)* @sysfs_dev2docg3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.docg3* @sysfs_dev2docg3(%struct.device* %0, %struct.device_attribute* %1) #0 {
  %3 = alloca %struct.docg3*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info**, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.mtd_info** @dev_get_drvdata(%struct.device* %8)
  store %struct.mtd_info** %9, %struct.mtd_info*** %7, align 8
  %10 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %11 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 48
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @DOC_MAX_NBFLOORS, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %2
  store %struct.docg3* null, %struct.docg3** %3, align 8
  br label %32

24:                                               ; preds = %19
  %25 = load %struct.mtd_info**, %struct.mtd_info*** %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %25, i64 %27
  %29 = load %struct.mtd_info*, %struct.mtd_info** %28, align 8
  %30 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %29, i32 0, i32 0
  %31 = load %struct.docg3*, %struct.docg3** %30, align 8
  store %struct.docg3* %31, %struct.docg3** %3, align 8
  br label %32

32:                                               ; preds = %24, %23
  %33 = load %struct.docg3*, %struct.docg3** %3, align 8
  ret %struct.docg3* %33
}

declare dso_local %struct.mtd_info** @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
