; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_show_port_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_show_port_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.platform_device = type { i32 }
%struct.niu_parent = type { i64, i32 }

@PORT_PHY_UNKNOWN = common dso_local global i64 0, align 8
@PORT_PHY_INVALID = common dso_local global i64 0, align 8
@PORT_TYPE_10G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"10G\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"1G\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_port_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_port_phy(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.niu_parent*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.platform_device* @to_platform_device(%struct.device* %15)
  store %struct.platform_device* %16, %struct.platform_device** %8, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.niu_parent* @dev_get_platdata(i32* %18)
  store %struct.niu_parent* %19, %struct.niu_parent** %9, align 8
  %20 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %21 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %11, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @PORT_PHY_UNKNOWN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @PORT_PHY_INVALID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %3
  store i32 0, i32* %4, align 4
  br label %74

32:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %59, %32
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %36 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %33
  %40 = load i64, i64* %10, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @phy_decode(i64 %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @PORT_TYPE_10G, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %48

47:                                               ; preds = %39
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* %53, i8* %54)
  %56 = load i8*, i8** %7, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %7, align 8
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %33

62:                                               ; preds = %33
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i8*, i8** %7, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %7, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %62, %31
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.niu_parent* @dev_get_platdata(i32*) #1

declare dso_local i32 @phy_decode(i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
