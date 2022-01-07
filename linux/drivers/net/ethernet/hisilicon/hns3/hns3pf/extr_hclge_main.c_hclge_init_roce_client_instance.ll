; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_init_roce_client_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_init_roce_client_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_ae_dev = type { %struct.TYPE_7__*, %struct.hclge_dev* }
%struct.TYPE_7__ = type { i32 }
%struct.hclge_dev = type { %struct.hnae3_client*, i32, %struct.TYPE_6__, i32 }
%struct.hnae3_client = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*, i32)* }
%struct.TYPE_9__ = type { %struct.hnae3_client* }
%struct.TYPE_6__ = type { i32 }
%struct.hclge_vport = type { %struct.TYPE_9__ }

@HCLGE_STATE_ROCE_REGISTERED = common dso_local global i32 0, align 4
@HCLGE_STATE_RST_HANDLING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"fail(%d) to enable roce ras interrupts\0A\00", align 1
@HCLGE_WAIT_RESET_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_ae_dev*, %struct.hclge_vport*)* @hclge_init_roce_client_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_init_roce_client_instance(%struct.hnae3_ae_dev* %0, %struct.hclge_vport* %1) #0 {
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
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.hnae3_client*, %struct.hnae3_client** %12, align 8
  store %struct.hnae3_client* %13, %struct.hnae3_client** %6, align 8
  %14 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %15 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %14, i32 0, i32 1
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %15, align 8
  store %struct.hclge_dev* %16, %struct.hclge_dev** %7, align 8
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %18 = call i32 @hnae3_dev_roce_supported(%struct.hclge_dev* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 0
  %23 = load %struct.hnae3_client*, %struct.hnae3_client** %22, align 8
  %24 = icmp ne %struct.hnae3_client* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %20, %2
  store i32 0, i32* %3, align 4
  br label %120

31:                                               ; preds = %25
  %32 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %33 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %32, i32 0, i32 0
  %34 = load %struct.hnae3_client*, %struct.hnae3_client** %33, align 8
  store %struct.hnae3_client* %34, %struct.hnae3_client** %6, align 8
  %35 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %36 = call i32 @hclge_init_roce_base_info(%struct.hclge_vport* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %120

41:                                               ; preds = %31
  %42 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %43 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.hnae3_client*, %struct.hnae3_client** %6, align 8
  %47 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %49, align 8
  %51 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %52 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %51, i32 0, i32 0
  %53 = call i32 %50(%struct.TYPE_9__* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %120

58:                                               ; preds = %41
  %59 = load i32, i32* @HCLGE_STATE_ROCE_REGISTERED, align 4
  %60 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %61 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %60, i32 0, i32 1
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  %63 = load i32, i32* @HCLGE_STATE_RST_HANDLING, align 4
  %64 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %65 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %64, i32 0, i32 1
  %66 = call i64 @test_bit(i32 %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %71 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %69, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %68, %58
  %76 = load i32, i32* @EBUSY, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %94

78:                                               ; preds = %68
  %79 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %80 = call i32 @hclge_config_rocee_ras_interrupt(%struct.hclge_dev* %79, i32 1)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %85 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %94

90:                                               ; preds = %78
  %91 = load %struct.hnae3_client*, %struct.hnae3_client** %6, align 8
  %92 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %93 = call i32 @hnae3_set_client_init_flag(%struct.hnae3_client* %91, %struct.hnae3_ae_dev* %92, i32 1)
  store i32 0, i32* %3, align 4
  br label %120

94:                                               ; preds = %83, %75
  %95 = load i32, i32* @HCLGE_STATE_ROCE_REGISTERED, align 4
  %96 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %97 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %96, i32 0, i32 1
  %98 = call i32 @clear_bit(i32 %95, i32* %97)
  br label %99

99:                                               ; preds = %105, %94
  %100 = load i32, i32* @HCLGE_STATE_RST_HANDLING, align 4
  %101 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %102 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %101, i32 0, i32 1
  %103 = call i64 @test_bit(i32 %100, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* @HCLGE_WAIT_RESET_DONE, align 4
  %107 = call i32 @msleep(i32 %106)
  br label %99

108:                                              ; preds = %99
  %109 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %110 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %109, i32 0, i32 0
  %111 = load %struct.hnae3_client*, %struct.hnae3_client** %110, align 8
  %112 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %114, align 8
  %116 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %117 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %116, i32 0, i32 0
  %118 = call i32 %115(%struct.TYPE_9__* %117, i32 0)
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %108, %90, %56, %39, %30
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @hnae3_dev_roce_supported(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_init_roce_base_info(%struct.hclge_vport*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hclge_config_rocee_ras_interrupt(%struct.hclge_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hnae3_set_client_init_flag(%struct.hnae3_client*, %struct.hnae3_ae_dev*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
