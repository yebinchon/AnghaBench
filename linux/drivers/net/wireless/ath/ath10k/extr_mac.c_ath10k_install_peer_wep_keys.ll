; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_install_peer_wep_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_install_peer_wep_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32, i32, %struct.ath10k*, %struct.TYPE_4__*, i32** }
%struct.ath10k = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ath10k_peer = type { i32** }

@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@WMI_KEY_PAIRWISE = common dso_local global i32 0, align 4
@WMI_KEY_TX_USAGE = common dso_local global i32 0, align 4
@SET_KEY = common dso_local global i32 0, align 4
@WMI_KEY_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to re-set def wpa key idxon vdev %i: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*, i32*)* @ath10k_install_peer_wep_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_install_peer_wep_keys(%struct.ath10k_vif* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k_vif*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ath10k_peer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %12 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %11, i32 0, i32 2
  %13 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  store %struct.ath10k* %13, %struct.ath10k** %6, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 2
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %18 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 128
  br i1 %22, label %23, label %38

23:                                               ; preds = %2
  %24 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %25 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 129
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %32 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %37 = icmp ne i32 %35, %36
  br label %38

38:                                               ; preds = %30, %23, %2
  %39 = phi i1 [ false, %23 ], [ false, %2 ], [ %37, %30 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %223

46:                                               ; preds = %38
  %47 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %48 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %47, i32 0, i32 1
  %49 = call i32 @spin_lock_bh(i32* %48)
  %50 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %51 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %52 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = call %struct.ath10k_peer* @ath10k_peer_find(%struct.ath10k* %50, i32 %53, i32* %54)
  store %struct.ath10k_peer* %55, %struct.ath10k_peer** %7, align 8
  %56 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %57 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load %struct.ath10k_peer*, %struct.ath10k_peer** %7, align 8
  %60 = icmp ne %struct.ath10k_peer* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %46
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %223

64:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %176, %64
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %68 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %67, i32 0, i32 4
  %69 = load i32**, i32*** %68, align 8
  %70 = call i32 @ARRAY_SIZE(i32** %69)
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %179

72:                                               ; preds = %65
  %73 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %74 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %73, i32 0, i32 4
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %176

82:                                               ; preds = %72
  %83 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %84 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %152 [
    i32 128, label %88
    i32 129, label %117
  ]

88:                                               ; preds = %82
  %89 = load i32, i32* @WMI_KEY_PAIRWISE, align 4
  store i32 %89, i32* %10, align 4
  %90 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %91 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @WMI_KEY_TX_USAGE, align 4
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %95, %88
  %100 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %101 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %102 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %101, i32 0, i32 4
  %103 = load i32**, i32*** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @SET_KEY, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @ath10k_install_key(%struct.ath10k_vif* %100, i32* %107, i32 %108, i32* %109, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %99
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %223

116:                                              ; preds = %99
  br label %156

117:                                              ; preds = %82
  %118 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %119 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %120 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %119, i32 0, i32 4
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @SET_KEY, align 4
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* @WMI_KEY_PAIRWISE, align 4
  %129 = call i32 @ath10k_install_key(%struct.ath10k_vif* %118, i32* %125, i32 %126, i32* %127, i32 %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %117
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %3, align 4
  br label %223

134:                                              ; preds = %117
  %135 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %136 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %137 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %136, i32 0, i32 4
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* @SET_KEY, align 4
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* @WMI_KEY_GROUP, align 4
  %146 = call i32 @ath10k_install_key(%struct.ath10k_vif* %135, i32* %142, i32 %143, i32* %144, i32 %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %134
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %3, align 4
  br label %223

151:                                              ; preds = %134
  br label %156

152:                                              ; preds = %82
  %153 = call i64 @WARN_ON(i32 1)
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %223

156:                                              ; preds = %151, %116
  %157 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %158 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %157, i32 0, i32 1
  %159 = call i32 @spin_lock_bh(i32* %158)
  %160 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %161 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %160, i32 0, i32 4
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.ath10k_peer*, %struct.ath10k_peer** %7, align 8
  %168 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %167, i32 0, i32 0
  %169 = load i32**, i32*** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  store i32* %166, i32** %172, align 8
  %173 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %174 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %173, i32 0, i32 1
  %175 = call i32 @spin_unlock_bh(i32* %174)
  br label %176

176:                                              ; preds = %156, %81
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %65

179:                                              ; preds = %65
  %180 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %181 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %180, i32 0, i32 3
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 129
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  store i32 0, i32* %3, align 4
  br label %223

187:                                              ; preds = %179
  %188 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %189 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  store i32 0, i32* %3, align 4
  br label %223

193:                                              ; preds = %187
  %194 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %195 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %194, i32 0, i32 2
  %196 = load %struct.ath10k*, %struct.ath10k** %195, align 8
  %197 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %198 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %201 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %200, i32 0, i32 2
  %202 = load %struct.ath10k*, %struct.ath10k** %201, align 8
  %203 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %209 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %196, i32 %199, i32 %207, i32 %210)
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %193
  %215 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %216 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %217 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @ath10k_warn(%struct.ath10k* %215, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %218, i32 %219)
  %221 = load i32, i32* %8, align 4
  store i32 %221, i32* %3, align 4
  br label %223

222:                                              ; preds = %193
  store i32 0, i32* %3, align 4
  br label %223

223:                                              ; preds = %222, %214, %192, %186, %152, %149, %132, %114, %61, %43
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ath10k_peer* @ath10k_peer_find(%struct.ath10k*, i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @ath10k_install_key(%struct.ath10k_vif*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ath10k_wmi_vdev_set_param(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
