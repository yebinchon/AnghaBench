; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_add_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_add_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.key_params = type { i32, i32, i32, i32, i32 }
%struct.lbs_private = type { i32*, i32*, %struct.net_device* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"add_key: cipher 0x%x, mac_addr %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"add_key: key index %d, key len %d\0A\00", align 1
@LBS_DEB_CFG80211 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"KEY\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"add_key: seq len %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"SEQ\00", align 1
@KEY_INFO_WPA_ENABLED = common dso_local global i32 0, align 4
@KEY_INFO_WPA_UNICAST = common dso_local global i32 0, align 4
@KEY_INFO_WPA_MCAST = common dso_local global i32 0, align 4
@KEY_TYPE_ID_TKIP = common dso_local global i32 0, align 4
@KEY_TYPE_ID_AES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"unhandled cipher 0x%x\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i64, i32, i64*, %struct.key_params*)* @lbs_cfg_add_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_cfg_add_key(%struct.wiphy* %0, %struct.net_device* %1, i64 %2, i32 %3, i64* %4, %struct.key_params* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.key_params*, align 8
  %14 = alloca %struct.lbs_private*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store %struct.key_params* %5, %struct.key_params** %13, align 8
  %18 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %19 = call %struct.lbs_private* @wiphy_priv(%struct.wiphy* %18)
  store %struct.lbs_private* %19, %struct.lbs_private** %14, align 8
  store i32 0, i32* %17, align 4
  %20 = load %struct.net_device*, %struct.net_device** %9, align 8
  %21 = load %struct.lbs_private*, %struct.lbs_private** %14, align 8
  %22 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %21, i32 0, i32 2
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  %24 = icmp eq %struct.net_device* %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %167

28:                                               ; preds = %6
  %29 = load %struct.key_params*, %struct.key_params** %13, align 8
  %30 = getelementptr inbounds %struct.key_params, %struct.key_params* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64*, i64** %12, align 8
  %33 = call i32 (i8*, i32, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %31, i64* %32)
  %34 = load i64, i64* %10, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.key_params*, %struct.key_params** %13, align 8
  %37 = getelementptr inbounds %struct.key_params, %struct.key_params* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.key_params*, %struct.key_params** %13, align 8
  %41 = getelementptr inbounds %struct.key_params, %struct.key_params* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %28
  %45 = load i32, i32* @LBS_DEB_CFG80211, align 4
  %46 = load %struct.key_params*, %struct.key_params** %13, align 8
  %47 = getelementptr inbounds %struct.key_params, %struct.key_params* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.key_params*, %struct.key_params** %13, align 8
  %50 = getelementptr inbounds %struct.key_params, %struct.key_params* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @lbs_deb_hex(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %44, %28
  %54 = load %struct.key_params*, %struct.key_params** %13, align 8
  %55 = getelementptr inbounds %struct.key_params, %struct.key_params* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, i32, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load %struct.key_params*, %struct.key_params** %13, align 8
  %59 = getelementptr inbounds %struct.key_params, %struct.key_params* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = load i32, i32* @LBS_DEB_CFG80211, align 4
  %64 = load %struct.key_params*, %struct.key_params** %13, align 8
  %65 = getelementptr inbounds %struct.key_params, %struct.key_params* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.key_params*, %struct.key_params** %13, align 8
  %68 = getelementptr inbounds %struct.key_params, %struct.key_params* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @lbs_deb_hex(i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %62, %53
  %72 = load %struct.key_params*, %struct.key_params** %13, align 8
  %73 = getelementptr inbounds %struct.key_params, %struct.key_params* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %157 [
    i32 128, label %75
    i32 129, label %75
    i32 130, label %126
    i32 131, label %126
  ]

75:                                               ; preds = %71, %71
  %76 = load %struct.lbs_private*, %struct.lbs_private** %14, align 8
  %77 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.key_params*, %struct.key_params** %13, align 8
  %83 = getelementptr inbounds %struct.key_params, %struct.key_params* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %81, %84
  br i1 %85, label %101, label %86

86:                                               ; preds = %75
  %87 = load %struct.lbs_private*, %struct.lbs_private** %14, align 8
  %88 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.key_params*, %struct.key_params** %13, align 8
  %94 = getelementptr inbounds %struct.key_params, %struct.key_params* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.key_params*, %struct.key_params** %13, align 8
  %97 = getelementptr inbounds %struct.key_params, %struct.key_params* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memcmp(i32 %92, i32 %95, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %86, %75
  %102 = load %struct.key_params*, %struct.key_params** %13, align 8
  %103 = getelementptr inbounds %struct.key_params, %struct.key_params* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.lbs_private*, %struct.lbs_private** %14, align 8
  %106 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 %104, i32* %109, align 4
  %110 = load %struct.lbs_private*, %struct.lbs_private** %14, align 8
  %111 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.key_params*, %struct.key_params** %13, align 8
  %117 = getelementptr inbounds %struct.key_params, %struct.key_params* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.key_params*, %struct.key_params** %13, align 8
  %120 = getelementptr inbounds %struct.key_params, %struct.key_params* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @memcpy(i32 %115, i32 %118, i32 %121)
  %123 = load %struct.lbs_private*, %struct.lbs_private** %14, align 8
  %124 = call i32 @lbs_set_wep_keys(%struct.lbs_private* %123)
  br label %125

125:                                              ; preds = %101, %86
  br label %165

126:                                              ; preds = %71, %71
  %127 = load i32, i32* @KEY_INFO_WPA_ENABLED, align 4
  %128 = load i64, i64* %10, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @KEY_INFO_WPA_UNICAST, align 4
  br label %134

132:                                              ; preds = %126
  %133 = load i32, i32* @KEY_INFO_WPA_MCAST, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  %136 = or i32 %127, %135
  store i32 %136, i32* %15, align 4
  %137 = load %struct.key_params*, %struct.key_params** %13, align 8
  %138 = getelementptr inbounds %struct.key_params, %struct.key_params* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 130
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i32, i32* @KEY_TYPE_ID_TKIP, align 4
  br label %145

143:                                              ; preds = %134
  %144 = load i32, i32* @KEY_TYPE_ID_AES, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  store i32 %146, i32* %16, align 4
  %147 = load %struct.lbs_private*, %struct.lbs_private** %14, align 8
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load %struct.key_params*, %struct.key_params** %13, align 8
  %151 = getelementptr inbounds %struct.key_params, %struct.key_params* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.key_params*, %struct.key_params** %13, align 8
  %154 = getelementptr inbounds %struct.key_params, %struct.key_params* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @lbs_set_key_material(%struct.lbs_private* %147, i32 %148, i32 %149, i32 %152, i32 %155)
  br label %165

157:                                              ; preds = %71
  %158 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %159 = load %struct.key_params*, %struct.key_params** %13, align 8
  %160 = getelementptr inbounds %struct.key_params, %struct.key_params* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @wiphy_err(%struct.wiphy* %158, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* @ENOTSUPP, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %17, align 4
  br label %165

165:                                              ; preds = %157, %145, %125
  %166 = load i32, i32* %17, align 4
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %165, %25
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local %struct.lbs_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @lbs_deb_assoc(i8*, i32, ...) #1

declare dso_local i32 @lbs_deb_hex(i32, i8*, i32, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @lbs_set_wep_keys(%struct.lbs_private*) #1

declare dso_local i32 @lbs_set_key_material(%struct.lbs_private*, i32, i32, i32, i32) #1

declare dso_local i32 @wiphy_err(%struct.wiphy*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
