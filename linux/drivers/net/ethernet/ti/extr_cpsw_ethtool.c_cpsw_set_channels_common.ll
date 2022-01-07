; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_set_channels_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_set_channels_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i64, i64 }
%struct.cpsw_priv = type { i32, %struct.cpsw_common* }
%struct.cpsw_common = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"cannot set real number of tx queues\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot set real number of rx queues\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"cannot update channels number, closing device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpsw_set_channels_common(%struct.net_device* %0, %struct.ethtool_channels* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_channels*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpsw_priv*, align 8
  %9 = alloca %struct.cpsw_common*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.cpsw_priv* %15, %struct.cpsw_priv** %8, align 8
  %16 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %17 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %16, i32 0, i32 1
  %18 = load %struct.cpsw_common*, %struct.cpsw_common** %17, align 8
  store %struct.cpsw_common* %18, %struct.cpsw_common** %9, align 8
  %19 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %20 = load %struct.ethtool_channels*, %struct.ethtool_channels** %6, align 8
  %21 = call i32 @cpsw_check_ch_settings(%struct.cpsw_common* %19, %struct.ethtool_channels* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %4, align 4
  br label %146

26:                                               ; preds = %3
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @cpsw_suspend_data_pass(%struct.net_device* %27)
  %29 = load %struct.ethtool_channels*, %struct.ethtool_channels** %6, align 8
  %30 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %33 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %38 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %36, %26
  %42 = phi i1 [ false, %26 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %45 = load %struct.ethtool_channels*, %struct.ethtool_channels** %6, align 8
  %46 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @cpsw_update_channels_res(%struct.cpsw_priv* %44, i64 %47, i32 1, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %138

53:                                               ; preds = %41
  %54 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %55 = load %struct.ethtool_channels*, %struct.ethtool_channels** %6, align 8
  %56 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @cpsw_update_channels_res(%struct.cpsw_priv* %54, i64 %57, i32 0, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %138

63:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %114, %63
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %67 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %117

71:                                               ; preds = %64
  %72 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %73 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.net_device*, %struct.net_device** %78, align 8
  store %struct.net_device* %79, %struct.net_device** %10, align 8
  %80 = load %struct.net_device*, %struct.net_device** %10, align 8
  %81 = icmp ne %struct.net_device* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load %struct.net_device*, %struct.net_device** %10, align 8
  %84 = call i64 @netif_running(%struct.net_device* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82, %71
  br label %114

87:                                               ; preds = %82
  %88 = load %struct.net_device*, %struct.net_device** %10, align 8
  %89 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %90 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %88, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %97 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_err(i32 %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %138

100:                                              ; preds = %87
  %101 = load %struct.net_device*, %struct.net_device** %10, align 8
  %102 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %103 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %101, i64 %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %100
  %109 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %110 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @dev_err(i32 %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %138

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113, %86
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %64

117:                                              ; preds = %64
  %118 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %119 = call i32 @cpsw_split_res(%struct.cpsw_common* %118)
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %124 = call i32 @cpsw_destroy_xdp_rxqs(%struct.cpsw_common* %123)
  %125 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %126 = call i32 @cpsw_create_xdp_rxqs(%struct.cpsw_common* %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %138

130:                                              ; preds = %122
  br label %131

131:                                              ; preds = %130, %117
  %132 = load %struct.net_device*, %struct.net_device** %5, align 8
  %133 = call i32 @cpsw_resume_data_pass(%struct.net_device* %132)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %146

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %129, %108, %95, %62, %52
  %139 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %140 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @dev_err(i32 %141, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %143 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %144 = call i32 @cpsw_fail(%struct.cpsw_common* %143)
  %145 = load i32, i32* %13, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %138, %136, %24
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpsw_check_ch_settings(%struct.cpsw_common*, %struct.ethtool_channels*) #1

declare dso_local i32 @cpsw_suspend_data_pass(%struct.net_device*) #1

declare dso_local i32 @cpsw_update_channels_res(%struct.cpsw_priv*, i64, i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i64) #1

declare dso_local i32 @cpsw_split_res(%struct.cpsw_common*) #1

declare dso_local i32 @cpsw_destroy_xdp_rxqs(%struct.cpsw_common*) #1

declare dso_local i32 @cpsw_create_xdp_rxqs(%struct.cpsw_common*) #1

declare dso_local i32 @cpsw_resume_data_pass(%struct.net_device*) #1

declare dso_local i32 @cpsw_fail(%struct.cpsw_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
