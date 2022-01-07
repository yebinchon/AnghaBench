; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_phy_versioning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_phy_versioning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32, %struct.TYPE_4__*, %struct.b43legacy_phy }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.b43legacy_phy = type { i32, i32, i32, i32, i32, i32 }

@B43legacy_MMIO_PHY_VER = common dso_local global i32 0, align 4
@B43legacy_PHYVER_ANALOG = common dso_local global i32 0, align 4
@B43legacy_PHYVER_ANALOG_SHIFT = common dso_local global i32 0, align 4
@B43legacy_PHYVER_TYPE = common dso_local global i32 0, align 4
@B43legacy_PHYVER_TYPE_SHIFT = common dso_local global i32 0, align 4
@B43legacy_PHYVER_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"FOUND UNSUPPORTED PHY (Analog %u, Type %u, Revision %u)\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Found PHY: Analog %u, Type %u, Revision %u\0A\00", align 1
@B43legacy_MMIO_RADIO_CONTROL = common dso_local global i32 0, align 4
@B43legacy_RADIOCTL_ID = common dso_local global i32 0, align 4
@B43legacy_MMIO_RADIO_DATA_HIGH = common dso_local global i32 0, align 4
@B43legacy_MMIO_RADIO_DATA_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"FOUND UNSUPPORTED RADIO (Manuf 0x%X, Version 0x%X, Revision %u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Found Radio: Manuf 0x%X, Version 0x%X, Revision %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*)* @b43legacy_phy_versioning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_phy_versioning(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.b43legacy_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  %13 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %14 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %13, i32 0, i32 2
  store %struct.b43legacy_phy* %14, %struct.b43legacy_phy** %4, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %16 = load i32, i32* @B43legacy_MMIO_PHY_VER, align 4
  %17 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @B43legacy_PHYVER_ANALOG, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @B43legacy_PHYVER_ANALOG_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @B43legacy_PHYVER_TYPE, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @B43legacy_PHYVER_TYPE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @B43legacy_PHYVER_VERSION, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %51 [
    i32 129, label %32
    i32 128, label %46
  ]

32:                                               ; preds = %1
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 2
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 4
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 6
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 7
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  br label %45

45:                                               ; preds = %44, %41, %38, %35, %32
  br label %52

46:                                               ; preds = %1
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %47, 8
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* %12, align 4
  br label %50

50:                                               ; preds = %49, %46
  br label %52

51:                                               ; preds = %1
  store i32 1, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %50, %45
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %57 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @b43legacyerr(i32 %58, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %185

65:                                               ; preds = %52
  %66 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %67 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @b43legacydbg(i32 %68, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70, i32 %71)
  %73 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %74 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 17175
  br i1 %80, label %81, label %104

81:                                               ; preds = %65
  %82 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %83 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i32 839188863, i32* %5, align 4
  br label %103

91:                                               ; preds = %81
  %92 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %93 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i32 1107624319, i32* %5, align 4
  br label %102

101:                                              ; preds = %91
  store i32 1376059775, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %100
  br label %103

103:                                              ; preds = %102, %90
  br label %123

104:                                              ; preds = %65
  %105 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %106 = load i32, i32* @B43legacy_MMIO_RADIO_CONTROL, align 4
  %107 = load i32, i32* @B43legacy_RADIOCTL_ID, align 4
  %108 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %105, i32 %106, i32 %107)
  %109 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %110 = load i32, i32* @B43legacy_MMIO_RADIO_DATA_HIGH, align 4
  %111 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %109, i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = shl i32 %112, 16
  store i32 %113, i32* %5, align 4
  %114 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %115 = load i32, i32* @B43legacy_MMIO_RADIO_CONTROL, align 4
  %116 = load i32, i32* @B43legacy_RADIOCTL_ID, align 4
  %117 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %114, i32 %115, i32 %116)
  %118 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %119 = load i32, i32* @B43legacy_MMIO_RADIO_DATA_LOW, align 4
  %120 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %118, i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %104, %103
  %124 = load i32, i32* %5, align 4
  %125 = and i32 %124, 4095
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, 268431360
  %128 = ashr i32 %127, 12
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %5, align 4
  %130 = and i32 %129, -268435456
  %131 = lshr i32 %130, 28
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %7, align 4
  switch i32 %132, label %144 [
    i32 129, label %133
    i32 128, label %139
  ]

133:                                              ; preds = %123
  %134 = load i32, i32* %10, align 4
  %135 = and i32 %134, 65520
  %136 = icmp ne i32 %135, 8272
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 1, i32* %12, align 4
  br label %138

138:                                              ; preds = %137, %133
  br label %146

139:                                              ; preds = %123
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 8272
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 1, i32* %12, align 4
  br label %143

143:                                              ; preds = %142, %139
  br label %146

144:                                              ; preds = %123
  %145 = call i32 @B43legacy_BUG_ON(i32 1)
  br label %146

146:                                              ; preds = %144, %143, %138
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %151 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @b43legacyerr(i32 %152, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* @EOPNOTSUPP, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %185

159:                                              ; preds = %146
  %160 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %161 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @b43legacydbg(i32 %162, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %169 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %172 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %175 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %178 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %181 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %184 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 4
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %159, %149, %55
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacyerr(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @b43legacydbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @B43legacy_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
