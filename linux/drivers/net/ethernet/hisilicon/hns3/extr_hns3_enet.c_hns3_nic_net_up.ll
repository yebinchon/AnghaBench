; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_net_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_net_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hns3_nic_priv = type { i32, i32*, i32, %struct.hnae3_handle* }
%struct.hnae3_handle = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.hnae3_handle*)* }

@.str = private unnamed_addr constant [31 x i8] c"set rx cpu rmap fail, ret=%d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"init irq failed! ret=%d\0A\00", align 1
@HNS3_NIC_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hns3_nic_net_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_nic_net_up(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hns3_nic_priv*, align 8
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.hns3_nic_priv* %10, %struct.hns3_nic_priv** %4, align 8
  %11 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %12 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %11, i32 0, i32 3
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %12, align 8
  store %struct.hnae3_handle* %13, %struct.hnae3_handle** %5, align 8
  %14 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %15 = call i32 @hns3_nic_reset_all_ring(%struct.hnae3_handle* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %2, align 4
  br label %150

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @hns3_set_rx_cpu_rmap(%struct.net_device* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @netdev_warn(%struct.net_device* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %31 = call i32 @hns3_nic_init_irq(%struct.hns3_nic_priv* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @netdev_err(%struct.net_device* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %146

38:                                               ; preds = %29
  %39 = load i32, i32* @HNS3_NIC_STATE_DOWN, align 4
  %40 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %41 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %40, i32 0, i32 2
  %42 = call i32 @clear_bit(i32 %39, i32* %41)
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %57, %38
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %46 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %51 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @hns3_vector_enable(i32* %55)
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %43

60:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %78, %60
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %64 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %70 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @hns3_tqp_enable(i32 %76)
  br label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %61

81:                                               ; preds = %61
  %82 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %83 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %87, align 8
  %89 = icmp ne i32 (%struct.hnae3_handle*)* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %81
  %91 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %92 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %96, align 8
  %98 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %99 = call i32 %97(%struct.hnae3_handle* %98)
  br label %101

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100, %90
  %102 = phi i32 [ %99, %90 ], [ 0, %100 ]
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %107

106:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %150

107:                                              ; preds = %105
  %108 = load i32, i32* @HNS3_NIC_STATE_DOWN, align 4
  %109 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %110 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %109, i32 0, i32 2
  %111 = call i32 @set_bit(i32 %108, i32* %110)
  br label %112

112:                                              ; preds = %116, %107
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %7, align 4
  %115 = icmp ne i32 %113, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %118 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @hns3_tqp_disable(i32 %124)
  br label %112

126:                                              ; preds = %112
  %127 = load i32, i32* %6, align 4
  %128 = sub nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %140, %126
  %130 = load i32, i32* %7, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %134 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = call i32 @hns3_vector_disable(i32* %138)
  br label %140

140:                                              ; preds = %132
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %7, align 4
  br label %129

143:                                              ; preds = %129
  %144 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %145 = call i32 @hns3_nic_uninit_irq(%struct.hns3_nic_priv* %144)
  br label %146

146:                                              ; preds = %143, %34
  %147 = load %struct.net_device*, %struct.net_device** %3, align 8
  %148 = call i32 @hns3_free_rx_cpu_rmap(%struct.net_device* %147)
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %146, %106, %18
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hns3_nic_reset_all_ring(%struct.hnae3_handle*) #1

declare dso_local i32 @hns3_set_rx_cpu_rmap(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @hns3_nic_init_irq(%struct.hns3_nic_priv*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hns3_vector_enable(i32*) #1

declare dso_local i32 @hns3_tqp_enable(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hns3_tqp_disable(i32) #1

declare dso_local i32 @hns3_vector_disable(i32*) #1

declare dso_local i32 @hns3_nic_uninit_irq(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_free_rx_cpu_rmap(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
