; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_info_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_info_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_5__, i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"VF info begin:\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Task queue pairs numbers: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Desc num per TX queue: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Desc num per RX queue: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Numbers of vports: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"HW tc map: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"PF media type of this VF: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"VF info end.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclgevf_dev*)* @hclgevf_info_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_info_show(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca %struct.hclgevf_dev*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %2, align 8
  %4 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %4, i32 0, i32 6
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %17 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %22 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %27 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %32 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %37 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
