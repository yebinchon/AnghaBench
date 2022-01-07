; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i64, i32, i32, i64, i64 }
%struct.bnxt = type { i32, i64, i64, %struct.bnxt_link_info, %struct.ethtool_eee }
%struct.bnxt_link_info = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@BNXT_FLAG_EEE_CAP = common dso_local global i32 0, align 4
@BNXT_AUTONEG_SPEED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"EEE requires autoneg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Valid LPI timer range is %d and %d microsecs\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"EEE advertised %x must be a subset of autoneg advertised speeds %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @bnxt_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.ethtool_eee*, align 8
  %8 = alloca %struct.bnxt_link_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.bnxt* @netdev_priv(%struct.net_device* %11)
  store %struct.bnxt* %12, %struct.bnxt** %6, align 8
  %13 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 4
  store %struct.ethtool_eee* %14, %struct.ethtool_eee** %7, align 8
  %15 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 3
  store %struct.bnxt_link_info* %16, %struct.bnxt_link_info** %8, align 8
  %17 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %18 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @_bnxt_fw_to_ethtool_adv_spds(i32 %19, i32 0)
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %22 = call i32 @BNXT_SINGLE_PF(%struct.bnxt* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %166

27:                                               ; preds = %2
  %28 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %29 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BNXT_FLAG_EEE_CAP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %166

37:                                               ; preds = %27
  %38 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %152

43:                                               ; preds = %37
  %44 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %45 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %166

55:                                               ; preds = %43
  %56 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %105

60:                                               ; preds = %55
  %61 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %62 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %60
  %66 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %70 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %65
  %74 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %78 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %73, %65
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %84 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %87 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %82, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %85, i64 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %166

92:                                               ; preds = %73, %60
  %93 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %94 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load %struct.ethtool_eee*, %struct.ethtool_eee** %7, align 8
  %99 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %102 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %97, %92
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104, %55
  %106 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %107 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.ethtool_eee*, %struct.ethtool_eee** %7, align 8
  %113 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %111, %114
  %116 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %117 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  br label %136

118:                                              ; preds = %105
  %119 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %120 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = xor i32 %122, -1
  %124 = and i32 %121, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %118
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %129 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %127, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %166

135:                                              ; preds = %118
  br label %136

136:                                              ; preds = %135, %110
  %137 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %138 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ethtool_eee*, %struct.ethtool_eee** %7, align 8
  %141 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %143 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.ethtool_eee*, %struct.ethtool_eee** %7, align 8
  %146 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %145, i32 0, i32 4
  store i64 %144, i64* %146, align 8
  %147 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %148 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.ethtool_eee*, %struct.ethtool_eee** %7, align 8
  %151 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %136, %42
  %153 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %154 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.ethtool_eee*, %struct.ethtool_eee** %7, align 8
  %157 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %156, i32 0, i32 3
  store i64 %155, i64* %157, align 8
  %158 = load %struct.net_device*, %struct.net_device** %4, align 8
  %159 = call i64 @netif_running(%struct.net_device* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %152
  %162 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %163 = call i32 @bnxt_hwrm_set_link_setting(%struct.bnxt* %162, i32 0, i32 1)
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %161, %152
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %164, %126, %81, %50, %34, %24
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @_bnxt_fw_to_ethtool_adv_spds(i32, i32) #1

declare dso_local i32 @BNXT_SINGLE_PF(%struct.bnxt*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnxt_hwrm_set_link_setting(%struct.bnxt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
