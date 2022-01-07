; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_class_allocate_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_class_allocate_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_can_classdev = type { %struct.device*, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.device = type { i32 }

@MRAM_CFG_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"bosch,mram-cfg\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not get Message RAM configuration.\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to allocate CAN device\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to init netdev cdevate\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.m_can_classdev* @m_can_class_allocate_dev(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.m_can_classdev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  store %struct.m_can_classdev* null, %struct.m_can_classdev** %3, align 8
  %9 = load i32, i32* @MRAM_CFG_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = call i32 @dev_fwnode(%struct.device* %13)
  %15 = mul nuw i64 4, %10
  %16 = udiv i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i32 @fwnode_property_read_u32_array(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %12, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %54

24:                                               ; preds = %1
  %25 = getelementptr inbounds i32, i32* %12, i64 7
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.net_device* @alloc_candev(i32 16, i32 %27)
  store %struct.net_device* %28, %struct.net_device** %6, align 8
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = icmp ne %struct.net_device* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load %struct.device*, %struct.device** %2, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %54

34:                                               ; preds = %24
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %35)
  store %struct.m_can_classdev* %36, %struct.m_can_classdev** %3, align 8
  %37 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %38 = icmp ne %struct.m_can_classdev* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %2, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %54

42:                                               ; preds = %34
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %45 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %44, i32 0, i32 1
  store %struct.net_device* %43, %struct.net_device** %45, align 8
  %46 = load %struct.device*, %struct.device** %2, align 8
  %47 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %48 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %47, i32 0, i32 0
  store %struct.device* %46, %struct.device** %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = load %struct.device*, %struct.device** %2, align 8
  %51 = call i32 @SET_NETDEV_DEV(%struct.net_device* %49, %struct.device* %50)
  %52 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %53 = call i32 @m_can_of_parse_mram(%struct.m_can_classdev* %52, i32* %12)
  br label %54

54:                                               ; preds = %42, %39, %31, %21
  %55 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %56 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %56)
  ret %struct.m_can_classdev* %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fwnode_property_read_u32_array(i32, i8*, i32*, i32) #2

declare dso_local i32 @dev_fwnode(%struct.device*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #2

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #2

declare dso_local i32 @m_can_of_parse_mram(%struct.m_can_classdev*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
