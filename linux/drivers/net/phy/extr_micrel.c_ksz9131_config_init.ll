; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_ksz9131_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_ksz9131_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { %struct.device*, %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"rxc-skew-psec\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"txc-skew-psec\00", align 1
@__const.ksz9131_config_init.clk_skews = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [15 x i8] c"rxd0-skew-psec\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"rxd1-skew-psec\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"rxd2-skew-psec\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"rxd3-skew-psec\00", align 1
@__const.ksz9131_config_init.rx_data_skews = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str.6 = private unnamed_addr constant [15 x i8] c"txd0-skew-psec\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"txd1-skew-psec\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"txd2-skew-psec\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"txd3-skew-psec\00", align 1
@__const.ksz9131_config_init.tx_data_skews = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [15 x i8] c"txen-skew-psec\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"rxdv-skew-psec\00", align 1
@__const.ksz9131_config_init.control_skews = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0)], align 16
@MII_KSZ9031RN_CLK_PAD_SKEW = common dso_local global i32 0, align 4
@MII_KSZ9031RN_CONTROL_PAD_SKEW = common dso_local global i32 0, align 4
@MII_KSZ9031RN_RX_DATA_PAD_SKEW = common dso_local global i32 0, align 4
@MII_KSZ9031RN_TX_DATA_PAD_SKEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @ksz9131_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9131_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca [4 x i8*], align 16
  %8 = alloca [4 x i8*], align 16
  %9 = alloca [2 x i8*], align 16
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 1
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([2 x i8*]* @__const.ksz9131_config_init.clk_skews to i8*), i64 16, i1 false)
  %19 = bitcast [4 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([4 x i8*]* @__const.ksz9131_config_init.rx_data_skews to i8*), i64 32, i1 false)
  %20 = bitcast [4 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([4 x i8*]* @__const.ksz9131_config_init.tx_data_skews to i8*), i64 32, i1 false)
  %21 = bitcast [2 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([2 x i8*]* @__const.ksz9131_config_init.control_skews to i8*), i64 16, i1 false)
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.device* %24, %struct.device** %10, align 8
  br label %25

25:                                               ; preds = %38, %1
  %26 = load %struct.device*, %struct.device** %10, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 1
  %28 = load %struct.device_node*, %struct.device_node** %27, align 8
  store %struct.device_node* %28, %struct.device_node** %5, align 8
  %29 = load %struct.device*, %struct.device** %10, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load %struct.device*, %struct.device** %30, align 8
  store %struct.device* %31, %struct.device** %10, align 8
  br label %32

32:                                               ; preds = %25
  %33 = load %struct.device_node*, %struct.device_node** %5, align 8
  %34 = icmp ne %struct.device_node* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load %struct.device*, %struct.device** %10, align 8
  %37 = icmp ne %struct.device* %36, null
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i1 [ false, %32 ], [ %37, %35 ]
  br i1 %39, label %25, label %40

40:                                               ; preds = %38
  %41 = load %struct.device_node*, %struct.device_node** %5, align 8
  %42 = icmp ne %struct.device_node* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %85

44:                                               ; preds = %40
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = load i32, i32* @MII_KSZ9031RN_CLK_PAD_SKEW, align 4
  %48 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %49 = call i32 @ksz9131_of_load_skew_values(%struct.phy_device* %45, %struct.device_node* %46, i32 %47, i32 5, i8** %48, i32 2)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %2, align 4
  br label %85

54:                                               ; preds = %44
  %55 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %56 = load %struct.device_node*, %struct.device_node** %5, align 8
  %57 = load i32, i32* @MII_KSZ9031RN_CONTROL_PAD_SKEW, align 4
  %58 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %59 = call i32 @ksz9131_of_load_skew_values(%struct.phy_device* %55, %struct.device_node* %56, i32 %57, i32 4, i8** %58, i32 2)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %2, align 4
  br label %85

64:                                               ; preds = %54
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = load %struct.device_node*, %struct.device_node** %5, align 8
  %67 = load i32, i32* @MII_KSZ9031RN_RX_DATA_PAD_SKEW, align 4
  %68 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 0
  %69 = call i32 @ksz9131_of_load_skew_values(%struct.phy_device* %65, %struct.device_node* %66, i32 %67, i32 4, i8** %68, i32 4)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %2, align 4
  br label %85

74:                                               ; preds = %64
  %75 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %76 = load %struct.device_node*, %struct.device_node** %5, align 8
  %77 = load i32, i32* @MII_KSZ9031RN_TX_DATA_PAD_SKEW, align 4
  %78 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  %79 = call i32 @ksz9131_of_load_skew_values(%struct.phy_device* %75, %struct.device_node* %76, i32 %77, i32 4, i8** %78, i32 4)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %2, align 4
  br label %85

84:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %82, %72, %62, %52, %43
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ksz9131_of_load_skew_values(%struct.phy_device*, %struct.device_node*, i32, i32, i8**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
