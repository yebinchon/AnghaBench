; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { i32 }

@HCLGE_FLAG_DCB_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HCLGE_FLAG_MQPRIO_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32, i32*)* @hclge_setup_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_setup_tc(%struct.hnae3_handle* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hclge_vport*, align 8
  %9 = alloca %struct.hclge_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %12 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %11)
  store %struct.hclge_vport* %12, %struct.hclge_vport** %8, align 8
  %13 = load %struct.hclge_vport*, %struct.hclge_vport** %8, align 8
  %14 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %13, i32 0, i32 0
  %15 = load %struct.hclge_dev*, %struct.hclge_dev** %14, align 8
  store %struct.hclge_dev* %15, %struct.hclge_dev** %9, align 8
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %17 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HCLGE_FLAG_DCB_ENABLE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %89

25:                                               ; preds = %3
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @hclge_dcb_common_validate(%struct.hclge_dev* %26, i32 %27, i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %89

35:                                               ; preds = %25
  %36 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %37 = call i32 @hclge_notify_down_uinit(%struct.hclge_dev* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %89

42:                                               ; preds = %35
  %43 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @hclge_tm_schd_info_update(%struct.hclge_dev* %43, i32 %44)
  %46 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @hclge_tm_prio_tc_info_update(%struct.hclge_dev* %46, i32* %47)
  %49 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %50 = call i32 @hclge_tm_init_hw(%struct.hclge_dev* %49, i32 0)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %85

54:                                               ; preds = %42
  %55 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %56 = call i32 @hclge_client_setup_tc(%struct.hclge_dev* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %85

60:                                               ; preds = %54
  %61 = load i32, i32* @HCLGE_FLAG_DCB_ENABLE, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %64 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load i32, i32* @HCLGE_FLAG_MQPRIO_ENABLE, align 4
  %71 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %72 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %82

75:                                               ; preds = %60
  %76 = load i32, i32* @HCLGE_FLAG_MQPRIO_ENABLE, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %79 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %75, %69
  %83 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %84 = call i32 @hclge_notify_init_up(%struct.hclge_dev* %83)
  store i32 %84, i32* %4, align 4
  br label %89

85:                                               ; preds = %59, %53
  %86 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %87 = call i32 @hclge_notify_init_up(%struct.hclge_dev* %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %82, %40, %32, %22
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hclge_dcb_common_validate(%struct.hclge_dev*, i32, i32*) #1

declare dso_local i32 @hclge_notify_down_uinit(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_tm_schd_info_update(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_tm_prio_tc_info_update(%struct.hclge_dev*, i32*) #1

declare dso_local i32 @hclge_tm_init_hw(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_client_setup_tc(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_notify_init_up(%struct.hclge_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
