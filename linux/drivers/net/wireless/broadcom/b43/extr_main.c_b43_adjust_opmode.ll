; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_adjust_opmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_adjust_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__*, %struct.b43_wl* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.b43_wl = type { i32 }

@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_AP = common dso_local global i32 0, align 4
@B43_MACCTL_KEEP_CTL = common dso_local global i32 0, align 4
@B43_MACCTL_KEEP_BADPLCP = common dso_local global i32 0, align 4
@B43_MACCTL_KEEP_BAD = common dso_local global i32 0, align 4
@B43_MACCTL_PROMISC = common dso_local global i32 0, align 4
@B43_MACCTL_BEACPROMISC = common dso_local global i32 0, align 4
@B43_MACCTL_INFRA = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@FIF_PLCPFAIL = common dso_local global i32 0, align 4
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@B43_MACCTL_DISCPMQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_adjust_opmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_adjust_opmode(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_wl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 1
  %8 = load %struct.b43_wl*, %struct.b43_wl** %7, align 8
  store %struct.b43_wl* %8, %struct.b43_wl** %3, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %11 = call i32 @b43_read32(%struct.b43_wldev* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @B43_MACCTL_AP, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @B43_MACCTL_KEEP_CTL, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @B43_MACCTL_KEEP_BADPLCP, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @B43_MACCTL_KEEP_BAD, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @B43_MACCTL_PROMISC, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @B43_MACCTL_BEACPROMISC, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @B43_MACCTL_INFRA, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %40 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %41 = call i64 @b43_is_mode(%struct.b43_wl* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %1
  %44 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %45 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %46 = call i64 @b43_is_mode(%struct.b43_wl* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43, %1
  %49 = load i32, i32* @B43_MACCTL_AP, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %63

52:                                               ; preds = %43
  %53 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %54 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %55 = call i64 @b43_is_mode(%struct.b43_wl* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* @B43_MACCTL_INFRA, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62, %48
  %64 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %65 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FIF_CONTROL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @B43_MACCTL_KEEP_CTL, align 4
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %63
  %75 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %76 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @FIF_FCSFAIL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* @B43_MACCTL_KEEP_BAD, align 4
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %74
  %86 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %87 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @FIF_PLCPFAIL, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @B43_MACCTL_KEEP_BADPLCP, align 4
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %85
  %97 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %98 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i32, i32* @B43_MACCTL_BEACPROMISC, align 4
  %105 = load i32, i32* %4, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %103, %96
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %109 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp sle i32 %112, 4
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* @B43_MACCTL_PROMISC, align 4
  %116 = load i32, i32* %4, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %114, %107
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %120 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @b43_write32(%struct.b43_wldev* %119, i32 %120, i32 %121)
  store i32 2, i32* %5, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @B43_MACCTL_INFRA, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %149

127:                                              ; preds = %118
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @B43_MACCTL_AP, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %149, label %132

132:                                              ; preds = %127
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %134 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 17158
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %141 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 3
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  store i32 100, i32* %5, align 4
  br label %148

147:                                              ; preds = %139, %132
  store i32 50, i32* %5, align 4
  br label %148

148:                                              ; preds = %147, %146
  br label %149

149:                                              ; preds = %148, %127, %118
  %150 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @b43_write16(%struct.b43_wldev* %150, i32 1554, i32 %151)
  %153 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %154 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %155 = load i32, i32* @B43_MACCTL_DISCPMQ, align 4
  %156 = call i32 @b43_maskset32(%struct.b43_wldev* %153, i32 %154, i32 -1, i32 %155)
  ret void
}

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i64 @b43_is_mode(%struct.b43_wl*, i32) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_maskset32(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
