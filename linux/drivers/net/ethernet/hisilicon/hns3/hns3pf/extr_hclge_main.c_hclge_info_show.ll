; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_info_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_info_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"PF info begin:\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Task queue pairs numbers: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Desc num per TX queue: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Desc num per RX queue: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Numbers of vports: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Numbers of vmdp vports: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Numbers of VF for this PF: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"HW tc map: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Total buffer size for TX/RX: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"TX buffer size for each TC: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"DV buffer size for each TC: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"This is %s PF\0A\00", align 1
@HCLGE_FLAG_MAIN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"not main\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"DCB %s\0A\00", align 1
@HCLGE_FLAG_DCB_ENABLE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"MQPRIO %s\0A\00", align 1
@HCLGE_FLAG_MQPRIO_ENABLE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [14 x i8] c"PF info end.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_info_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_info_show(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %4 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %4, i32 0, i32 11
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %17 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %32 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %37 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %38)
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %42 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %43)
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %47 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %48)
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %52 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %53)
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %57 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %58)
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %62 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @HCLGE_FLAG_MAIN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)
  %69 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %68)
  %70 = load %struct.device*, %struct.device** %3, align 8
  %71 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %72 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @HCLGE_FLAG_DCB_ENABLE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0)
  %79 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %78)
  %80 = load %struct.device*, %struct.device** %3, align 8
  %81 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %82 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @HCLGE_FLAG_MQPRIO_ENABLE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0)
  %89 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* %88)
  %90 = load %struct.device*, %struct.device** %3, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
