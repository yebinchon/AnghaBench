; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_main.c_orinoco_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_main.c_orinoco_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { i32, i32, i32*, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, %struct.hermes, %struct.device* }
%struct.hermes = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hermes*)* }
%struct.device = type { i32 }
%struct.wiphy = type { i32, i32, i32 }

@IEEE80211_MAX_FRAME_LEN = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to initialize firmware (err = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Incompatible firmware, aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Ad-hoc demo mode supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"IEEE standard IBSS ad-hoc mode supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"WEP supported, %s-bit key\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"104\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"40\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"WPA-PSK supported\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"Failed to setup MIC crypto algorithm. Disabling WPA support\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Failed to allocate NIC buffer!\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@ORINOCO_ALG_NONE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"Ready\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orinoco_init(%struct.orinoco_private* %0) #0 {
  %2 = alloca %struct.orinoco_private*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.hermes*, align 8
  %6 = alloca i32, align 4
  store %struct.orinoco_private* %0, %struct.orinoco_private** %2, align 8
  %7 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %8 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %7, i32 0, i32 20
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %11 = call %struct.wiphy* @priv_to_wiphy(%struct.orinoco_private* %10)
  store %struct.wiphy* %11, %struct.wiphy** %4, align 8
  %12 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %13 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %12, i32 0, i32 19
  store %struct.hermes* %13, %struct.hermes** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load i64, i64* @IEEE80211_MAX_FRAME_LEN, align 8
  %15 = load i64, i64* @ETH_HLEN, align 8
  %16 = add nsw i64 %14, %15
  %17 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %18 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %17, i32 0, i32 18
  store i64 %16, i64* %18, align 8
  %19 = load %struct.hermes*, %struct.hermes** %5, align 8
  %20 = getelementptr inbounds %struct.hermes, %struct.hermes* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.hermes*)*, i32 (%struct.hermes*)** %22, align 8
  %24 = load %struct.hermes*, %struct.hermes** %5, align 8
  %25 = call i32 %23(%struct.hermes* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %193

32:                                               ; preds = %1
  %33 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %34 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %35 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %38 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %37, i32 0, i32 1
  %39 = call i32 @determine_fw_capabilities(%struct.orinoco_private* %33, i32 %36, i32 4, i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %193

45:                                               ; preds = %32
  %46 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %47 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %46, i32 0, i32 17
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %45
  %51 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %52 = call i32 @orinoco_download(%struct.orinoco_private* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %57 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %56, i32 0, i32 17
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %60 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %61 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %64 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %63, i32 0, i32 1
  %65 = call i32 @determine_fw_capabilities(%struct.orinoco_private* %59, i32 %62, i32 4, i32* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load %struct.device*, %struct.device** %3, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %193

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %45
  %73 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %74 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %73, i32 0, i32 12
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.device*, %struct.device** %3, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %72
  %81 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %82 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %81, i32 0, i32 11
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.device*, %struct.device** %3, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %86, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %90 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %89, i32 0, i32 16
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load %struct.device*, %struct.device** %3, align 8
  %95 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %96 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %95, i32 0, i32 15
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %101 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %93, %88
  %103 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %104 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %103, i32 0, i32 14
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load %struct.device*, %struct.device** %3, align 8
  %109 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %110 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %111 = call i64 @orinoco_mic_init(%struct.orinoco_private* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.device*, %struct.device** %3, align 8
  %115 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %114, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0))
  %116 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %117 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %116, i32 0, i32 14
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %113, %107
  br label %119

119:                                              ; preds = %118, %102
  %120 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %121 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %122 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @orinoco_hw_read_card_settings(%struct.orinoco_private* %120, i32 %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %193

128:                                              ; preds = %119
  %129 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %130 = call i32 @orinoco_hw_allocate_fid(%struct.orinoco_private* %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.device*, %struct.device** %3, align 8
  %135 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %134, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %193

136:                                              ; preds = %128
  %137 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %138 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %139 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %138, i32 0, i32 13
  store i32 %137, i32* %139, align 8
  %140 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %141 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %140, i32 0, i32 12
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %146 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %145, i32 0, i32 11
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  %149 = xor i1 %148, true
  br label %150

150:                                              ; preds = %144, %136
  %151 = phi i1 [ false, %136 ], [ %149, %144 ]
  %152 = zext i1 %151 to i32
  %153 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %154 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %156 = call i32 @set_port_type(%struct.orinoco_private* %155)
  %157 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %158 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %157, i32 0, i32 10
  store i64 0, i64* %158, align 8
  %159 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %160 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %159, i32 0, i32 9
  store i64 0, i64* %160, align 8
  %161 = load i32, i32* @ORINOCO_ALG_NONE, align 4
  %162 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %163 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %162, i32 0, i32 8
  store i32 %161, i32* %163, align 8
  %164 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %165 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %164, i32 0, i32 7
  store i64 0, i64* %165, align 8
  %166 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %167 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %166, i32 0, i32 6
  store i64 0, i64* %167, align 8
  %168 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %169 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %168, i32 0, i32 5
  store i64 0, i64* %169, align 8
  %170 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %171 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %170, i32 0, i32 4
  store i64 0, i64* %171, align 8
  %172 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %173 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %172, i32 0, i32 3
  store i64 0, i64* %173, align 8
  %174 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %175 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %174, i32 0, i32 2
  store i32* null, i32** %175, align 8
  %176 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %177 = call i64 @orinoco_wiphy_register(%struct.wiphy* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %150
  %180 = load i32, i32* @ENODEV, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %6, align 4
  br label %193

182:                                              ; preds = %150
  %183 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %184 = call i32 @orinoco_lock_irq(%struct.orinoco_private* %183)
  %185 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %186 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %186, align 4
  %189 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %190 = call i32 @orinoco_unlock_irq(%struct.orinoco_private* %189)
  %191 = load %struct.device*, %struct.device** %3, align 8
  %192 = call i32 @dev_dbg(%struct.device* %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %193

193:                                              ; preds = %182, %179, %133, %127, %68, %42, %28
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local %struct.wiphy* @priv_to_wiphy(%struct.orinoco_private*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @determine_fw_capabilities(%struct.orinoco_private*, i32, i32, i32*) #1

declare dso_local i32 @orinoco_download(%struct.orinoco_private*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i64 @orinoco_mic_init(%struct.orinoco_private*) #1

declare dso_local i32 @orinoco_hw_read_card_settings(%struct.orinoco_private*, i32) #1

declare dso_local i32 @orinoco_hw_allocate_fid(%struct.orinoco_private*) #1

declare dso_local i32 @set_port_type(%struct.orinoco_private*) #1

declare dso_local i64 @orinoco_wiphy_register(%struct.wiphy*) #1

declare dso_local i32 @orinoco_lock_irq(%struct.orinoco_private*) #1

declare dso_local i32 @orinoco_unlock_irq(%struct.orinoco_private*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
