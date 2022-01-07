; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_lo.c_b43_gphy_dc_lt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_lo.c_b43_gphy_dc_lt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { %struct.b43_phy_g* }
%struct.b43_phy_g = type { %struct.b43_txpower_lo_control* }
%struct.b43_txpower_lo_control = type { i32, i32*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.b43_rfatt* }
%struct.b43_rfatt = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.b43_bbatt* }
%struct.b43_bbatt = type { i32 }
%struct.b43_lo_calib = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@B43_DC_LT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"LO: Could not calibrate DC table entry\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_gphy_dc_lt_init(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy*, align 8
  %6 = alloca %struct.b43_phy_g*, align 8
  %7 = alloca %struct.b43_txpower_lo_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.b43_rfatt*, align 8
  %12 = alloca %struct.b43_bbatt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.b43_lo_calib*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %19 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %18, i32 0, i32 1
  store %struct.b43_phy* %19, %struct.b43_phy** %5, align 8
  %20 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %21 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %20, i32 0, i32 0
  %22 = load %struct.b43_phy_g*, %struct.b43_phy_g** %21, align 8
  store %struct.b43_phy_g* %22, %struct.b43_phy_g** %6, align 8
  %23 = load %struct.b43_phy_g*, %struct.b43_phy_g** %6, align 8
  %24 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %23, i32 0, i32 0
  %25 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %24, align 8
  store %struct.b43_txpower_lo_control* %25, %struct.b43_txpower_lo_control** %7, align 8
  store i32 0, i32* %14, align 4
  %26 = load i32, i32* @B43_DC_LT_SIZE, align 4
  %27 = icmp ne i32 %26, 32
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUILD_BUG_ON(i32 %28)
  %30 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %7, align 8
  %31 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %7, align 8
  %35 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %33, %37
  %39 = icmp sgt i32 %38, 64
  %40 = zext i1 %39 to i32
  %41 = call i32 @B43_WARN_ON(i32 %40)
  %42 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %7, align 8
  %43 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %2
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %196

51:                                               ; preds = %47, %2
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %53 = call i32 @b43_mac_suspend(%struct.b43_wldev* %52)
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %166, %51
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @B43_DC_LT_SIZE, align 4
  %57 = mul nsw i32 %56, 2
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %169

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %8, align 4
  %65 = shl i32 1, %64
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  br label %166

69:                                               ; preds = %62, %59
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %7, align 8
  %72 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sdiv i32 %70, %74
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %7, align 8
  %78 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = srem i32 %76, %80
  store i32 %81, i32* %9, align 4
  %82 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %7, align 8
  %83 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load %struct.b43_bbatt*, %struct.b43_bbatt** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.b43_bbatt, %struct.b43_bbatt* %85, i64 %87
  store %struct.b43_bbatt* %88, %struct.b43_bbatt** %12, align 8
  %89 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %7, align 8
  %90 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load %struct.b43_rfatt*, %struct.b43_rfatt** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %92, i64 %94
  store %struct.b43_rfatt* %95, %struct.b43_rfatt** %11, align 8
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %97 = load %struct.b43_bbatt*, %struct.b43_bbatt** %12, align 8
  %98 = load %struct.b43_rfatt*, %struct.b43_rfatt** %11, align 8
  %99 = call %struct.b43_lo_calib* @b43_calibrate_lo_setting(%struct.b43_wldev* %96, %struct.b43_bbatt* %97, %struct.b43_rfatt* %98)
  store %struct.b43_lo_calib* %99, %struct.b43_lo_calib** %15, align 8
  %100 = load %struct.b43_lo_calib*, %struct.b43_lo_calib** %15, align 8
  %101 = icmp ne %struct.b43_lo_calib* %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %69
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %104 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @b43warn(i32 %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %166

107:                                              ; preds = %69
  %108 = load %struct.b43_lo_calib*, %struct.b43_lo_calib** %15, align 8
  %109 = getelementptr inbounds %struct.b43_lo_calib, %struct.b43_lo_calib* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %17, align 4
  %113 = load %struct.b43_lo_calib*, %struct.b43_lo_calib** %15, align 8
  %114 = getelementptr inbounds %struct.b43_lo_calib, %struct.b43_lo_calib* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = shl i32 %117, 4
  %119 = load i32, i32* %17, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %17, align 4
  %121 = load %struct.b43_lo_calib*, %struct.b43_lo_calib** %15, align 8
  %122 = call i32 @kfree(%struct.b43_lo_calib* %121)
  %123 = load i32, i32* %8, align 4
  %124 = sdiv i32 %123, 2
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %8, align 4
  %126 = srem i32 %125, 2
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %147

128:                                              ; preds = %107
  %129 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %7, align 8
  %130 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 255
  %137 = load i32, i32* %17, align 4
  %138 = and i32 %137, 255
  %139 = shl i32 %138, 8
  %140 = or i32 %136, %139
  %141 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %7, align 8
  %142 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %140, i32* %146, align 4
  br label %165

147:                                              ; preds = %107
  %148 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %7, align 8
  %149 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 65280
  %156 = load i32, i32* %17, align 4
  %157 = and i32 %156, 255
  %158 = or i32 %155, %157
  %159 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %7, align 8
  %160 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %158, i32* %164, align 4
  br label %165

165:                                              ; preds = %147, %128
  store i32 1, i32* %14, align 4
  br label %166

166:                                              ; preds = %165, %102, %68
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %54

169:                                              ; preds = %54
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %193

172:                                              ; preds = %169
  store i32 0, i32* %8, align 4
  br label %173

173:                                              ; preds = %189, %172
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* @B43_DC_LT_SIZE, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %192

177:                                              ; preds = %173
  %178 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 928, %179
  %181 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %7, align 8
  %182 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @b43_phy_write(%struct.b43_wldev* %178, i32 %180, i32 %187)
  br label %189

189:                                              ; preds = %177
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %8, align 4
  br label %173

192:                                              ; preds = %173
  br label %193

193:                                              ; preds = %192, %169
  %194 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %195 = call i32 @b43_mac_enable(%struct.b43_wldev* %194)
  br label %196

196:                                              ; preds = %193, %50
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_mac_suspend(%struct.b43_wldev*) #1

declare dso_local %struct.b43_lo_calib* @b43_calibrate_lo_setting(%struct.b43_wldev*, %struct.b43_bbatt*, %struct.b43_rfatt*) #1

declare dso_local i32 @b43warn(i32, i8*) #1

declare dso_local i32 @kfree(%struct.b43_lo_calib*) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_mac_enable(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
