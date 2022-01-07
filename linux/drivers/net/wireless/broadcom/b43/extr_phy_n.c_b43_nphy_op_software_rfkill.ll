; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_op_software_rfkill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_op_software_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, i32 }
%struct.b43_phy = type { i32, i32, i32 }

@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"MAC not suspended\0A\00", align 1
@B43_NPHY_RFCTL_CMD = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_CMD_CHIP0PU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_nphy_op_software_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_op_software_rfkill(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  store %struct.b43_phy* %7, %struct.b43_phy** %5, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %10 = call i32 @b43_read32(%struct.b43_wldev* %8, i32 %9)
  %11 = load i32, i32* @B43_MACCTL_ENABLED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @b43err(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %86

22:                                               ; preds = %19
  %23 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %24 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 19
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %85

28:                                               ; preds = %22
  %29 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %30 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %31, 8
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %35 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  %36 = load i32, i32* @B43_NPHY_RFCTL_CMD_CHIP0PU, align 4
  %37 = xor i32 %36, -1
  %38 = call i32 @b43_phy_mask(%struct.b43_wldev* %34, i32 %35, i32 %37)
  br label %84

39:                                               ; preds = %28
  %40 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %41 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 7
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %83

45:                                               ; preds = %39
  %46 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %47 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 3
  br i1 %49, label %50, label %82

50:                                               ; preds = %45
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %52 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  %53 = load i32, i32* @B43_NPHY_RFCTL_CMD_CHIP0PU, align 4
  %54 = xor i32 %53, -1
  %55 = call i32 @b43_phy_mask(%struct.b43_wldev* %51, i32 %52, i32 %54)
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %57 = call i32 @b43_radio_mask(%struct.b43_wldev* %56, i32 9, i32 -3)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %59 = call i32 @b43_radio_write(%struct.b43_wldev* %58, i32 8269, i32 0)
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %61 = call i32 @b43_radio_write(%struct.b43_wldev* %60, i32 8275, i32 0)
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %63 = call i32 @b43_radio_write(%struct.b43_wldev* %62, i32 8280, i32 0)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %65 = call i32 @b43_radio_write(%struct.b43_wldev* %64, i32 8286, i32 0)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %67 = call i32 @b43_radio_mask(%struct.b43_wldev* %66, i32 8290, i32 -241)
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %69 = call i32 @b43_radio_write(%struct.b43_wldev* %68, i32 8292, i32 0)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %71 = call i32 @b43_radio_write(%struct.b43_wldev* %70, i32 12365, i32 0)
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %73 = call i32 @b43_radio_write(%struct.b43_wldev* %72, i32 12371, i32 0)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %75 = call i32 @b43_radio_write(%struct.b43_wldev* %74, i32 12376, i32 0)
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %77 = call i32 @b43_radio_write(%struct.b43_wldev* %76, i32 12382, i32 0)
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %79 = call i32 @b43_radio_mask(%struct.b43_wldev* %78, i32 12386, i32 -241)
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %81 = call i32 @b43_radio_write(%struct.b43_wldev* %80, i32 12388, i32 0)
  br label %82

82:                                               ; preds = %50, %45
  br label %83

83:                                               ; preds = %82, %44
  br label %84

84:                                               ; preds = %83, %33
  br label %85

85:                                               ; preds = %84, %27
  br label %140

86:                                               ; preds = %19
  %87 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %88 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %89, 19
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %139

92:                                               ; preds = %86
  %93 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %94 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp sge i32 %95, 7
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %99 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %105 = call i32 @b43_radio_2057_init(%struct.b43_wldev* %104)
  br label %106

106:                                              ; preds = %103, %97
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %109 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @b43_switch_channel(%struct.b43_wldev* %107, i32 %111)
  br label %138

113:                                              ; preds = %92
  %114 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %115 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp sge i32 %116, 3
  br i1 %117, label %118, label %134

118:                                              ; preds = %113
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %120 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %126 = call i32 @b43_radio_init2056(%struct.b43_wldev* %125)
  br label %127

127:                                              ; preds = %124, %118
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %130 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @b43_switch_channel(%struct.b43_wldev* %128, i32 %132)
  br label %137

134:                                              ; preds = %113
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %136 = call i32 @b43_radio_init2055(%struct.b43_wldev* %135)
  br label %137

137:                                              ; preds = %134, %127
  br label %138

138:                                              ; preds = %137, %106
  br label %139

139:                                              ; preds = %138, %91
  br label %140

140:                                              ; preds = %139, %85
  ret void
}

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_2057_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_switch_channel(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_init2056(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_init2055(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
