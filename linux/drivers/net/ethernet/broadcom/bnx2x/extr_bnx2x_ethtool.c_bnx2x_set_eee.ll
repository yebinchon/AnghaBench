; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i32, i64, i64, i32 }
%struct.bnx2x = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@eee_status = common dso_local global i32* null, align 8
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"BC Version does not support EEE\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SHMEM_EEE_SUPPORTED_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Board does not support EEE!\0A\00", align 1
@SHMEM_EEE_ADV_STATUS_SHIFT = common dso_local global i32 0, align 4
@SHMEM_EEE_ADV_STATUS_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Direct manipulation of EEE advertisement is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EEE_MODE_TIMER_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Maximal Tx Lpi timer supported is %x(u)\0A\00", align 1
@EEE_MODE_NVRAM_AGGRESSIVE_TIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Minimal Tx Lpi timer supported is %d(u)\0A\00", align 1
@EEE_MODE_ADV_LPI = common dso_local global i32 0, align 4
@EEE_MODE_ENABLE_LPI = common dso_local global i32 0, align 4
@EEE_MODE_OVERRIDE_NVRAM = common dso_local global i32 0, align 4
@EEE_MODE_OUTPUT_TIME = common dso_local global i32 0, align 4
@STATS_EVENT_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @bnx2x_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %9)
  store %struct.bnx2x* %10, %struct.bnx2x** %6, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %12 = call i64 @IS_MF(%struct.bnx2x* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %162

15:                                               ; preds = %2
  %16 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %17 = load i32*, i32** @eee_status, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %19 = call i64 @BP_PORT(%struct.bnx2x* %18)
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SHMEM2_HAS(%struct.bnx2x* %16, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %26 = call i32 (i32, i8*, ...) @DP(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %162

29:                                               ; preds = %15
  %30 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SHMEM_EEE_SUPPORTED_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %40 = call i32 (i32, i8*, ...) @DP(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %162

43:                                               ; preds = %29
  %44 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SHMEM_EEE_ADV_STATUS_SHIFT, align 4
  %48 = call i32 @bnx2x_adv_to_eee(i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @SHMEM_EEE_ADV_STATUS_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %43
  %55 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %56 = call i32 (i32, i8*, ...) @DP(i32 %55, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %162

59:                                               ; preds = %43
  %60 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @EEE_MODE_TIMER_MASK, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %67 = load i32, i32* @EEE_MODE_TIMER_MASK, align 4
  %68 = call i32 (i32, i8*, ...) @DP(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %162

71:                                               ; preds = %59
  %72 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @EEE_MODE_NVRAM_AGGRESSIVE_TIME, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %84 = load i32, i32* @EEE_MODE_NVRAM_AGGRESSIVE_TIME, align 4
  %85 = call i32 (i32, i8*, ...) @DP(i32 %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %162

88:                                               ; preds = %76, %71
  %89 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load i32, i32* @EEE_MODE_ADV_LPI, align 4
  %95 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %96 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %94
  store i32 %99, i32* %97, align 4
  br label %108

100:                                              ; preds = %88
  %101 = load i32, i32* @EEE_MODE_ADV_LPI, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %104 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %102
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %100, %93
  %109 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %110 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load i32, i32* @EEE_MODE_ENABLE_LPI, align 4
  %115 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %116 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %114
  store i32 %119, i32* %117, align 4
  br label %128

120:                                              ; preds = %108
  %121 = load i32, i32* @EEE_MODE_ENABLE_LPI, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %124 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %122
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %120, %113
  %129 = load i32, i32* @EEE_MODE_TIMER_MASK, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %132 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, %130
  store i32 %135, i32* %133, align 4
  %136 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %137 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @EEE_MODE_TIMER_MASK, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* @EEE_MODE_OVERRIDE_NVRAM, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @EEE_MODE_OUTPUT_TIME, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %146 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %144
  store i32 %149, i32* %147, align 4
  %150 = load %struct.net_device*, %struct.net_device** %4, align 8
  %151 = call i64 @netif_running(%struct.net_device* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %128
  %154 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %155 = load i32, i32* @STATS_EVENT_STOP, align 4
  %156 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %154, i32 %155)
  %157 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %158 = call i32 @bnx2x_force_link_reset(%struct.bnx2x* %157)
  %159 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %160 = call i32 @bnx2x_link_set(%struct.bnx2x* %159)
  br label %161

161:                                              ; preds = %153, %128
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %161, %82, %65, %54, %38, %24, %14
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM2_HAS(%struct.bnx2x*, i32) #1

declare dso_local i64 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_adv_to_eee(i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnx2x_stats_handle(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_force_link_reset(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_link_set(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
