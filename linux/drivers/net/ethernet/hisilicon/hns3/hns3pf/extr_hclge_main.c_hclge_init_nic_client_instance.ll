; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_init_nic_client_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_init_nic_client_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_ae_dev = type { %struct.TYPE_8__*, %struct.hclge_dev* }
%struct.TYPE_8__ = type { i32 }
%struct.hclge_dev = type { i32, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.hclge_vport = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.hnae3_client* }
%struct.hnae3_client = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*, i32)* }

@HCLGE_STATE_NIC_REGISTERED = common dso_local global i32 0, align 4
@HCLGE_STATE_RST_HANDLING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"fail(%d) to enable hw error interrupts\0A\00", align 1
@HCLGE_WAIT_RESET_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_ae_dev*, %struct.hclge_vport*)* @hclge_init_nic_client_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_init_nic_client_instance(%struct.hnae3_ae_dev* %0, %struct.hclge_vport* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_ae_dev*, align 8
  %5 = alloca %struct.hclge_vport*, align 8
  %6 = alloca %struct.hnae3_client*, align 8
  %7 = alloca %struct.hclge_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hnae3_ae_dev* %0, %struct.hnae3_ae_dev** %4, align 8
  store %struct.hclge_vport* %1, %struct.hclge_vport** %5, align 8
  %10 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %11 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.hnae3_client*, %struct.hnae3_client** %12, align 8
  store %struct.hnae3_client* %13, %struct.hnae3_client** %6, align 8
  %14 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %15 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %14, i32 0, i32 1
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %15, align 8
  store %struct.hclge_dev* %16, %struct.hclge_dev** %7, align 8
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %18 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.hnae3_client*, %struct.hnae3_client** %6, align 8
  %22 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %24, align 8
  %26 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %27 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %26, i32 0, i32 0
  %28 = call i32 %25(%struct.TYPE_11__* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %104

33:                                               ; preds = %2
  %34 = load i32, i32* @HCLGE_STATE_NIC_REGISTERED, align 4
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %36 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %35, i32 0, i32 0
  %37 = call i32 @set_bit(i32 %34, i32* %36)
  %38 = load i32, i32* @HCLGE_STATE_RST_HANDLING, align 4
  %39 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %40 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %39, i32 0, i32 0
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %46 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %44, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43, %33
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %80

53:                                               ; preds = %43
  %54 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %55 = call i32 @hclge_config_nic_hw_error(%struct.hclge_dev* %54, i32 1)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %60 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %80

65:                                               ; preds = %53
  %66 = load %struct.hnae3_client*, %struct.hnae3_client** %6, align 8
  %67 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %68 = call i32 @hnae3_set_client_init_flag(%struct.hnae3_client* %66, %struct.hnae3_ae_dev* %67, i32 1)
  %69 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %70 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = call i64 @netif_msg_drv(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %77 = call i32 @hclge_info_show(%struct.hclge_dev* %76)
  br label %78

78:                                               ; preds = %75, %65
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %104

80:                                               ; preds = %58, %50
  %81 = load i32, i32* @HCLGE_STATE_NIC_REGISTERED, align 4
  %82 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %83 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %82, i32 0, i32 0
  %84 = call i32 @clear_bit(i32 %81, i32* %83)
  br label %85

85:                                               ; preds = %91, %80
  %86 = load i32, i32* @HCLGE_STATE_RST_HANDLING, align 4
  %87 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %88 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %87, i32 0, i32 0
  %89 = call i64 @test_bit(i32 %86, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* @HCLGE_WAIT_RESET_DONE, align 4
  %93 = call i32 @msleep(i32 %92)
  br label %85

94:                                               ; preds = %85
  %95 = load %struct.hnae3_client*, %struct.hnae3_client** %6, align 8
  %96 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %98, align 8
  %100 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %101 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %100, i32 0, i32 0
  %102 = call i32 %99(%struct.TYPE_11__* %101, i32 0)
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %94, %78, %31
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hclge_config_nic_hw_error(%struct.hclge_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hnae3_set_client_init_flag(%struct.hnae3_client*, %struct.hnae3_ae_dev*, i32) #1

declare dso_local i64 @netif_msg_drv(i32*) #1

declare dso_local i32 @hclge_info_show(%struct.hclge_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
