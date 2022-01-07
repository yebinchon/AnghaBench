; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_run_samples.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_run_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32, i32 }

@B43_NPHY_REV7_RF_CTL_OVER3 = common dso_local global i32 0, align 4
@B43_NPHY_REV7_RF_CTL_OVER4 = common dso_local global i32 0, align 4
@B43_NPHY_SAMP_DEPCNT = common dso_local global i32 0, align 4
@B43_NPHY_SAMP_LOOPCNT = common dso_local global i32 0, align 4
@B43_NPHY_SAMP_WAITCNT = common dso_local global i32 0, align 4
@B43_NPHY_RFSEQMODE = common dso_local global i32 0, align 4
@B43_NPHY_RFSEQMODE_CAOVER = common dso_local global i32 0, align 4
@B43_NPHY_IQLOCAL_CMDGCTL = common dso_local global i32 0, align 4
@B43_NPHY_SAMP_CMD = common dso_local global i32 0, align 4
@B43_NPHY_RFSEQST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"run samples timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32, i32, i32, i32)* @b43_nphy_run_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_run_samples(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.b43_wldev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.b43_phy*, align 8
  %16 = alloca %struct.b43_phy_n*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %24 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %23, i32 0, i32 1
  store %struct.b43_phy* %24, %struct.b43_phy** %15, align 8
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %26 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %26, i32 0, i32 1
  %28 = load %struct.b43_phy_n*, %struct.b43_phy_n** %27, align 8
  store %struct.b43_phy_n* %28, %struct.b43_phy_n** %16, align 8
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %30 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %29, i32 1)
  %31 = load %struct.b43_phy*, %struct.b43_phy** %15, align 8
  %32 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %33, 7
  br i1 %34, label %35, label %69

35:                                               ; preds = %7
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %37 = load i32, i32* @B43_NPHY_REV7_RF_CTL_OVER3, align 4
  %38 = call i32 @b43_phy_read(%struct.b43_wldev* %36, i32 %37)
  %39 = and i32 %38, 128
  store i32 %39, i32* %20, align 4
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %41 = load i32, i32* @B43_NPHY_REV7_RF_CTL_OVER4, align 4
  %42 = call i32 @b43_phy_read(%struct.b43_wldev* %40, i32 %41)
  %43 = and i32 %42, 128
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %20, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %21, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %35
  br label %68

50:                                               ; preds = %46
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %52 = call i32 @b43_nphy_read_lpf_ctl(%struct.b43_wldev* %51, i32 0)
  store i32 %52, i32* %22, align 4
  %53 = load %struct.b43_phy*, %struct.b43_phy** %15, align 8
  %54 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %55, 19
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %59 = load i32, i32* %22, align 4
  %60 = call i32 @b43_nphy_rf_ctl_override_rev19(%struct.b43_wldev* %58, i32 128, i32 %59, i32 0, i32 0, i32 1)
  br label %65

61:                                               ; preds = %50
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %63 = load i32, i32* %22, align 4
  %64 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %62, i32 128, i32 %63, i32 0, i32 0, i32 1)
  br label %65

65:                                               ; preds = %61, %57
  %66 = load %struct.b43_phy_n*, %struct.b43_phy_n** %16, align 8
  %67 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %49
  br label %69

69:                                               ; preds = %68, %7
  %70 = load %struct.b43_phy_n*, %struct.b43_phy_n** %16, align 8
  %71 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, -2147483648
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %77 = call i32 @B43_NTAB16(i32 15, i32 87)
  %78 = call i32 @b43_ntab_read(%struct.b43_wldev* %76, i32 %77)
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %19, align 4
  %80 = and i32 %79, 65535
  %81 = or i32 %80, -2147483648
  %82 = load %struct.b43_phy_n*, %struct.b43_phy_n** %16, align 8
  %83 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %75, %69
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %89 = call i32 @b43_is_40mhz(%struct.b43_wldev* %88)
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 25700, i32 18247
  store i32 %93, i32* %19, align 4
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %95 = call i32 @B43_NTAB16(i32 15, i32 87)
  %96 = load i32, i32* %19, align 4
  %97 = call i32 @b43_ntab_write(%struct.b43_wldev* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %87, %84
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %100 = load i32, i32* @B43_NPHY_SAMP_DEPCNT, align 4
  %101 = load i32, i32* %9, align 4
  %102 = sub nsw i32 %101, 1
  %103 = call i32 @b43_phy_write(%struct.b43_wldev* %99, i32 %100, i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 65535
  br i1 %105, label %106, label %112

106:                                              ; preds = %98
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %108 = load i32, i32* @B43_NPHY_SAMP_LOOPCNT, align 4
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %109, 1
  %111 = call i32 @b43_phy_write(%struct.b43_wldev* %107, i32 %108, i32 %110)
  br label %117

112:                                              ; preds = %98
  %113 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %114 = load i32, i32* @B43_NPHY_SAMP_LOOPCNT, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @b43_phy_write(%struct.b43_wldev* %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %112, %106
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %119 = load i32, i32* @B43_NPHY_SAMP_WAITCNT, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @b43_phy_write(%struct.b43_wldev* %118, i32 %119, i32 %120)
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %123 = load i32, i32* @B43_NPHY_RFSEQMODE, align 4
  %124 = call i32 @b43_phy_read(%struct.b43_wldev* %122, i32 %123)
  store i32 %124, i32* %18, align 4
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %126 = load i32, i32* @B43_NPHY_RFSEQMODE, align 4
  %127 = load i32, i32* @B43_NPHY_RFSEQMODE_CAOVER, align 4
  %128 = call i32 @b43_phy_set(%struct.b43_wldev* %125, i32 %126, i32 %127)
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %117
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %133 = load i32, i32* @B43_NPHY_IQLOCAL_CMDGCTL, align 4
  %134 = call i32 @b43_phy_mask(%struct.b43_wldev* %132, i32 %133, i32 32767)
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %136 = load i32, i32* @B43_NPHY_IQLOCAL_CMDGCTL, align 4
  %137 = call i32 @b43_phy_set(%struct.b43_wldev* %135, i32 %136, i32 32768)
  br label %147

138:                                              ; preds = %117
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 5, i32 1
  store i32 %142, i32* %19, align 4
  %143 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %144 = load i32, i32* @B43_NPHY_SAMP_CMD, align 4
  %145 = load i32, i32* %19, align 4
  %146 = call i32 @b43_phy_write(%struct.b43_wldev* %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %138, %131
  store i32 0, i32* %17, align 4
  br label %148

148:                                              ; preds = %160, %147
  %149 = load i32, i32* %17, align 4
  %150 = icmp slt i32 %149, 100
  br i1 %150, label %151, label %163

151:                                              ; preds = %148
  %152 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %153 = load i32, i32* @B43_NPHY_RFSEQST, align 4
  %154 = call i32 @b43_phy_read(%struct.b43_wldev* %152, i32 %153)
  %155 = and i32 %154, 1
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %151
  store i32 0, i32* %17, align 4
  br label %163

158:                                              ; preds = %151
  %159 = call i32 @udelay(i32 10)
  br label %160

160:                                              ; preds = %158
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %17, align 4
  br label %148

163:                                              ; preds = %157, %148
  %164 = load i32, i32* %17, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %168 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @b43err(i32 %169, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %171

171:                                              ; preds = %166, %163
  %172 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %173 = load i32, i32* @B43_NPHY_RFSEQMODE, align 4
  %174 = load i32, i32* %18, align 4
  %175 = call i32 @b43_phy_write(%struct.b43_wldev* %172, i32 %173, i32 %174)
  %176 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %177 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %176, i32 0)
  ret void
}

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_read_lpf_ctl(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_rf_ctl_override_rev19(%struct.b43_wldev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @b43_ntab_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

declare dso_local i32 @b43_is_40mhz(%struct.b43_wldev*) #1

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
