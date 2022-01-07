; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_wireless_core_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_wireless_core_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__, %struct.b43legacy_wl* }
%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.ssb_bus* }
%struct.TYPE_5__ = type { i32 }
%struct.ssb_bus = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.b43legacy_wl = type { %struct.b43legacy_wldev* }

@SSB_BUSTYPE_PCI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Bus powerup failed\0A\00", align 1
@SSB_TMSHIGH = common dso_local global i32 0, align 4
@B43legacy_TMSHIGH_GPHY = common dso_local global i32 0, align 4
@B43legacy_TMSLOW_GMODE = common dso_local global i32 0, align 4
@b43legacy_chip_reset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*)* @b43legacy_wireless_core_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_wireless_core_attach(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.b43legacy_wl*, align 8
  %5 = alloca %struct.ssb_bus*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %13 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %12, i32 0, i32 3
  %14 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %13, align 8
  store %struct.b43legacy_wl* %14, %struct.b43legacy_wl** %4, align 8
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %16 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.ssb_bus*, %struct.ssb_bus** %18, align 8
  store %struct.ssb_bus* %19, %struct.ssb_bus** %5, align 8
  %20 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %21 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SSB_BUSTYPE_PCI, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %27 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %26, i32 0, i32 1
  %28 = load %struct.pci_dev*, %struct.pci_dev** %27, align 8
  br label %30

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi %struct.pci_dev* [ %28, %25 ], [ null, %29 ]
  store %struct.pci_dev* %31, %struct.pci_dev** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %32 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %33 = call i32 @ssb_bus_powerup(%struct.ssb_bus* %32, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %4, align 8
  %38 = call i32 @b43legacyerr(%struct.b43legacy_wl* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %198

39:                                               ; preds = %30
  %40 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %41 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %45, 5
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %49 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i32, i32* @SSB_TMSHIGH, align 4
  %52 = call i32 @ssb_read32(%struct.TYPE_7__* %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @B43legacy_TMSHIGH_GPHY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %47
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %47
  br label %75

64:                                               ; preds = %39
  %65 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %66 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 1, i32* %9, align 4
  br label %74

73:                                               ; preds = %64
  store i32 1, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %72
  br label %75

75:                                               ; preds = %74, %63
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i1 [ true, %75 ], [ %80, %78 ]
  %83 = zext i1 %82 to i32
  %84 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %85 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %88 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %91 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %81
  %96 = load i32, i32* @B43legacy_TMSLOW_GMODE, align 4
  br label %98

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i32 [ %96, %95 ], [ 0, %97 ]
  store i32 %99, i32* %10, align 4
  %100 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @b43legacy_wireless_core_reset(%struct.b43legacy_wldev* %100, i32 %101)
  %103 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %104 = call i32 @b43legacy_phy_versioning(%struct.b43legacy_wldev* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %200

108:                                              ; preds = %98
  %109 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %110 = icmp ne %struct.pci_dev* %109, null
  br i1 %110, label %111, label %126

111:                                              ; preds = %108
  %112 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 17170
  br i1 %115, label %116, label %136

116:                                              ; preds = %111
  %117 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 17177
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %123 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 17188
  br i1 %125, label %126, label %136

126:                                              ; preds = %121, %108
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %127 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %128 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  switch i32 %130, label %133 [
    i32 129, label %131
    i32 128, label %132
  ]

131:                                              ; preds = %126
  store i32 1, i32* %8, align 4
  br label %135

132:                                              ; preds = %126
  store i32 1, i32* %9, align 4
  br label %135

133:                                              ; preds = %126
  %134 = call i32 @B43legacy_BUG_ON(i32 1)
  br label %135

135:                                              ; preds = %133, %132, %131
  br label %136

136:                                              ; preds = %135, %121, %116, %111
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br label %142

142:                                              ; preds = %139, %136
  %143 = phi i1 [ true, %136 ], [ %141, %139 ]
  %144 = zext i1 %143 to i32
  %145 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %146 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 4
  %148 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %149 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %142
  %154 = load i32, i32* @B43legacy_TMSLOW_GMODE, align 4
  br label %156

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155, %153
  %157 = phi i32 [ %154, %153 ], [ 0, %155 ]
  store i32 %157, i32* %10, align 4
  %158 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @b43legacy_wireless_core_reset(%struct.b43legacy_wldev* %158, i32 %159)
  %161 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %162 = call i32 @b43legacy_validate_chipaccess(%struct.b43legacy_wldev* %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  br label %200

166:                                              ; preds = %156
  %167 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @b43legacy_setup_modes(%struct.b43legacy_wldev* %167, i32 %168, i32 %169)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %200

174:                                              ; preds = %166
  %175 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %4, align 8
  %176 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %175, i32 0, i32 0
  %177 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %176, align 8
  %178 = icmp ne %struct.b43legacy_wldev* %177, null
  br i1 %178, label %183, label %179

179:                                              ; preds = %174
  %180 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %181 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %4, align 8
  %182 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %181, i32 0, i32 0
  store %struct.b43legacy_wldev* %180, %struct.b43legacy_wldev** %182, align 8
  br label %183

183:                                              ; preds = %179, %174
  %184 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %185 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %184, i32 0, i32 1
  %186 = load i32, i32* @b43legacy_chip_reset, align 4
  %187 = call i32 @INIT_WORK(i32* %185, i32 %186)
  %188 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %189 = call i32 @b43legacy_radio_turn_off(%struct.b43legacy_wldev* %188, i32 1)
  %190 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %191 = call i32 @b43legacy_switch_analog(%struct.b43legacy_wldev* %190, i32 0)
  %192 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %193 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %192, i32 0, i32 0
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %193, align 8
  %195 = call i32 @ssb_device_disable(%struct.TYPE_7__* %194, i32 0)
  %196 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %197 = call i32 @ssb_bus_may_powerdown(%struct.ssb_bus* %196)
  br label %198

198:                                              ; preds = %183, %36
  %199 = load i32, i32* %7, align 4
  store i32 %199, i32* %2, align 4
  br label %204

200:                                              ; preds = %173, %165, %107
  %201 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %202 = call i32 @ssb_bus_may_powerdown(%struct.ssb_bus* %201)
  %203 = load i32, i32* %7, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %200, %198
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @ssb_bus_powerup(%struct.ssb_bus*, i32) #1

declare dso_local i32 @b43legacyerr(%struct.b43legacy_wl*, i8*) #1

declare dso_local i32 @ssb_read32(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @b43legacy_wireless_core_reset(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_phy_versioning(%struct.b43legacy_wldev*) #1

declare dso_local i32 @B43legacy_BUG_ON(i32) #1

declare dso_local i32 @b43legacy_validate_chipaccess(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_setup_modes(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @b43legacy_radio_turn_off(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_switch_analog(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @ssb_device_disable(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ssb_bus_may_powerdown(%struct.ssb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
