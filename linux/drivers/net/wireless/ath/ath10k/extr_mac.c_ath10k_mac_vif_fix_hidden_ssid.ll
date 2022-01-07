; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_fix_hidden_ssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_fix_hidden_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32, i32, i32, %struct.ath10k*, i32, i32, i32 }
%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_chan_def = type { i32 }

@WMI_SERVICE_BEACON_OFFLOAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to bring down ap vdev %i: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to update beacon template: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to update presp template: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to restart ap vdev %i: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to bring up ap vdev %i: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*)* @ath10k_mac_vif_fix_hidden_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_vif_fix_hidden_ssid(%struct.ath10k_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_vif*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.cfg80211_chan_def, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %3, align 8
  %7 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %7, i32 0, i32 3
  %9 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  store %struct.ath10k* %9, %struct.ath10k** %4, align 8
  %10 = load i32, i32* @WMI_SERVICE_BEACON_OFFLOAD, align 4
  %11 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @test_bit(i32 %10, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %126

18:                                               ; preds = %1
  %19 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %20 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %126

30:                                               ; preds = %18
  %31 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %32 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %126

42:                                               ; preds = %30
  %43 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %44 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ath10k_mac_vif_chan(i32 %45, %struct.cfg80211_chan_def* %5)
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %126

52:                                               ; preds = %42
  %53 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %54 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %55 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ath10k_wmi_vdev_down(%struct.ath10k* %53, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %62 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %63 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %126

68:                                               ; preds = %52
  %69 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %70 = call i32 @ath10k_mac_setup_bcn_tmpl(%struct.ath10k_vif* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %126

78:                                               ; preds = %68
  %79 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %80 = call i32 @ath10k_mac_setup_prb_tmpl(%struct.ath10k_vif* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %126

88:                                               ; preds = %78
  %89 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %90 = call i32 @ath10k_vdev_restart(%struct.ath10k_vif* %89, %struct.cfg80211_chan_def* %5)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %95 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %96 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %126

101:                                              ; preds = %88
  %102 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %103 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %102, i32 0, i32 3
  %104 = load %struct.ath10k*, %struct.ath10k** %103, align 8
  %105 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %106 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %109 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %112 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ath10k_wmi_vdev_up(%struct.ath10k* %104, i32 %107, i32 %110, i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %101
  %118 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %119 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %120 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %118, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %121, i32 %122)
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %2, align 4
  br label %126

125:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %117, %93, %83, %73, %60, %49, %39, %27, %17
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath10k_mac_vif_chan(i32, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @ath10k_wmi_vdev_down(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @ath10k_mac_setup_bcn_tmpl(%struct.ath10k_vif*) #1

declare dso_local i32 @ath10k_mac_setup_prb_tmpl(%struct.ath10k_vif*) #1

declare dso_local i32 @ath10k_vdev_restart(%struct.ath10k_vif*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @ath10k_wmi_vdev_up(%struct.ath10k*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
