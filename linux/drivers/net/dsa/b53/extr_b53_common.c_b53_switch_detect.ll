; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_switch_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_switch_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32, i32 }

@B53_MGMT_PAGE = common dso_local global i32 0, align 4
@B53_DEVICE_ID = common dso_local global i32 0, align 4
@B53_VLAN_PAGE = common dso_local global i32 0, align 4
@B53_VLAN_TABLE_ACCESS_25 = common dso_local global i32 0, align 4
@BCM5325_DEVICE_ID = common dso_local global i64 0, align 8
@BCM5365_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"unsupported switch detected (BCM53%02x/BCM%x)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@B53_STAT_PAGE = common dso_local global i32 0, align 4
@B53_REV_ID_25 = common dso_local global i32 0, align 4
@B53_REV_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b53_switch_detect(%struct.b53_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b53_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %3, align 8
  %8 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %9 = load i32, i32* @B53_MGMT_PAGE, align 4
  %10 = load i32, i32* @B53_DEVICE_ID, align 4
  %11 = call i32 @b53_read8(%struct.b53_device* %8, i32 %9, i32 %10, i32* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %86

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %43 [
    i32 0, label %18
    i32 131, label %39
    i32 130, label %39
    i32 129, label %39
    i32 128, label %39
  ]

18:                                               ; preds = %16
  %19 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %20 = load i32, i32* @B53_VLAN_PAGE, align 4
  %21 = load i32, i32* @B53_VLAN_TABLE_ACCESS_25, align 4
  %22 = call i32 @b53_write16(%struct.b53_device* %19, i32 %20, i32 %21, i32 15)
  %23 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %24 = load i32, i32* @B53_VLAN_PAGE, align 4
  %25 = load i32, i32* @B53_VLAN_TABLE_ACCESS_25, align 4
  %26 = call i32 @b53_read16(%struct.b53_device* %23, i32 %24, i32 %25, i32* %5)
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 15
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load i64, i64* @BCM5325_DEVICE_ID, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %33 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %38

34:                                               ; preds = %18
  %35 = load i32, i32* @BCM5365_DEVICE_ID, align 4
  %36 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %37 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %29
  br label %65

39:                                               ; preds = %16, %16, %16, %16
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %42 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %65

43:                                               ; preds = %16
  %44 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %45 = load i32, i32* @B53_MGMT_PAGE, align 4
  %46 = load i32, i32* @B53_DEVICE_ID, align 4
  %47 = call i32 @b53_read32(%struct.b53_device* %44, i32 %45, i32 %46, i32* %4)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %86

52:                                               ; preds = %43
  %53 = load i32, i32* %4, align 4
  switch i32 %53, label %58 [
    i32 134, label %54
    i32 133, label %54
    i32 132, label %54
    i32 139, label %54
    i32 138, label %54
    i32 137, label %54
    i32 136, label %54
    i32 135, label %54
  ]

54:                                               ; preds = %52, %52, %52, %52, %52, %52, %52, %52
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %57 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %64

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %86

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %39, %38
  %66 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %67 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @BCM5325_DEVICE_ID, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %74 = load i32, i32* @B53_STAT_PAGE, align 4
  %75 = load i32, i32* @B53_REV_ID_25, align 4
  %76 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %77 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %76, i32 0, i32 1
  %78 = call i32 @b53_read8(%struct.b53_device* %73, i32 %74, i32 %75, i32* %77)
  store i32 %78, i32* %2, align 4
  br label %86

79:                                               ; preds = %65
  %80 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %81 = load i32, i32* @B53_MGMT_PAGE, align 4
  %82 = load i32, i32* @B53_REV_ID, align 4
  %83 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %84 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %83, i32 0, i32 1
  %85 = call i32 @b53_read8(%struct.b53_device* %80, i32 %81, i32 %82, i32* %84)
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %79, %72, %58, %50, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @b53_read8(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @b53_write16(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @b53_read16(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @b53_read32(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
