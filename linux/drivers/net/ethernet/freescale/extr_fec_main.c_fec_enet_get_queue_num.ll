; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_get_queue_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_get_queue_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"fsl,num-tx-queues\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"fsl,num-rx-queues\00", align 1
@FEC_ENET_MAX_TX_QS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Invalid num_tx(=%d), fall back to 1\0A\00", align 1
@FEC_ENET_MAX_RX_QS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Invalid num_rx(=%d), fall back to 1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i32*, i32*)* @fec_enet_get_queue_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_enet_get_queue_num(%struct.platform_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %7, align 8
  %12 = load i32*, i32** %6, align 8
  store i32 1, i32* %12, align 4
  %13 = load i32*, i32** %5, align 8
  store i32 1, i32* %13, align 4
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.device_node*, %struct.device_node** %7, align 8
  %18 = call i32 @of_device_is_available(%struct.device_node* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %3
  br label %59

21:                                               ; preds = %16
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @of_property_read_u32(%struct.device_node* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %23)
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @of_property_read_u32(%struct.device_node* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %36, label %31

31:                                               ; preds = %21
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FEC_ENET_MAX_TX_QS, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %31, %21
  %37 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_warn(%struct.TYPE_2__* %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %5, align 8
  store i32 1, i32* %42, align 4
  br label %59

43:                                               ; preds = %31
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @FEC_ENET_MAX_RX_QS, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %47, %43
  %53 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_warn(%struct.TYPE_2__* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %6, align 8
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %20, %36, %52, %47
  ret void
}

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_2__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
