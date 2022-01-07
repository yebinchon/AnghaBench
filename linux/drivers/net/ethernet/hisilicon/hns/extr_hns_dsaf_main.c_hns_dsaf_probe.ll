; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsaf_device = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"dsaf_probe dsaf_alloc_dev failed, ret = %#x!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hns_dsaf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_dsaf_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dsaf_device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.dsaf_device* @hns_dsaf_alloc_dev(i32* %7, i32 4)
  store %struct.dsaf_device* %8, %struct.dsaf_device** %4, align 8
  %9 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %10 = call i64 @IS_ERR(%struct.dsaf_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.dsaf_device* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %64

20:                                               ; preds = %1
  %21 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %22 = call i32 @hns_dsaf_get_cfg(%struct.dsaf_device* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %60

26:                                               ; preds = %20
  %27 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %28 = call i32 @hns_dsaf_init(%struct.dsaf_device* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %60

32:                                               ; preds = %26
  %33 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %34 = call i32 @hns_mac_init(%struct.dsaf_device* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %57

38:                                               ; preds = %32
  %39 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %40 = call i32 @hns_ppe_init(%struct.dsaf_device* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %54

44:                                               ; preds = %38
  %45 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %46 = call i32 @hns_dsaf_ae_init(%struct.dsaf_device* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %51

50:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %64

51:                                               ; preds = %49
  %52 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %53 = call i32 @hns_ppe_uninit(%struct.dsaf_device* %52)
  br label %54

54:                                               ; preds = %51, %43
  %55 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %56 = call i32 @hns_mac_uninit(%struct.dsaf_device* %55)
  br label %57

57:                                               ; preds = %54, %37
  %58 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %59 = call i32 @hns_dsaf_free(%struct.dsaf_device* %58)
  br label %60

60:                                               ; preds = %57, %31, %25
  %61 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %62 = call i32 @hns_dsaf_free_dev(%struct.dsaf_device* %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %50, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.dsaf_device* @hns_dsaf_alloc_dev(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dsaf_device*) #1

declare dso_local i32 @PTR_ERR(%struct.dsaf_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hns_dsaf_get_cfg(%struct.dsaf_device*) #1

declare dso_local i32 @hns_dsaf_init(%struct.dsaf_device*) #1

declare dso_local i32 @hns_mac_init(%struct.dsaf_device*) #1

declare dso_local i32 @hns_ppe_init(%struct.dsaf_device*) #1

declare dso_local i32 @hns_dsaf_ae_init(%struct.dsaf_device*) #1

declare dso_local i32 @hns_ppe_uninit(%struct.dsaf_device*) #1

declare dso_local i32 @hns_mac_uninit(%struct.dsaf_device*) #1

declare dso_local i32 @hns_dsaf_free(%struct.dsaf_device*) #1

declare dso_local i32 @hns_dsaf_free_dev(%struct.dsaf_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
