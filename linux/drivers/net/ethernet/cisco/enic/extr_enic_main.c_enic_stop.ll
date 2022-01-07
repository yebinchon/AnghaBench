; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enic = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i32 }

@VNIC_DEV_INTR_MODE_MSIX = common dso_local global i64 0, align 8
@enic_free_wq_buf = common dso_local global i32 0, align 4
@enic_free_rq_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @enic_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_stop(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.enic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.enic* @netdev_priv(%struct.net_device* %7)
  store %struct.enic* %8, %struct.enic** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %30, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.enic*, %struct.enic** %4, align 8
  %12 = getelementptr inbounds %struct.enic, %struct.enic* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %9
  %16 = load %struct.enic*, %struct.enic** %4, align 8
  %17 = getelementptr inbounds %struct.enic, %struct.enic* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @vnic_intr_mask(i32* %21)
  %23 = load %struct.enic*, %struct.enic** %4, align 8
  %24 = getelementptr inbounds %struct.enic, %struct.enic* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @vnic_intr_masked(i32* %28)
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %9

33:                                               ; preds = %9
  %34 = load %struct.enic*, %struct.enic** %4, align 8
  %35 = call i32 @enic_synchronize_irqs(%struct.enic* %34)
  %36 = load %struct.enic*, %struct.enic** %4, align 8
  %37 = getelementptr inbounds %struct.enic, %struct.enic* %36, i32 0, i32 10
  %38 = call i32 @del_timer_sync(i32* %37)
  %39 = load %struct.enic*, %struct.enic** %4, align 8
  %40 = call i32 @enic_rfs_flw_tbl_free(%struct.enic* %39)
  %41 = load %struct.enic*, %struct.enic** %4, align 8
  %42 = call i32 @enic_dev_disable(%struct.enic* %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %57, %33
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.enic*, %struct.enic** %4, align 8
  %46 = getelementptr inbounds %struct.enic, %struct.enic* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load %struct.enic*, %struct.enic** %4, align 8
  %51 = getelementptr inbounds %struct.enic, %struct.enic* %50, i32 0, i32 8
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @napi_disable(i32* %55)
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %43

60:                                               ; preds = %43
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = call i32 @netif_carrier_off(%struct.net_device* %61)
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = call i32 @netif_tx_disable(%struct.net_device* %63)
  %65 = load %struct.enic*, %struct.enic** %4, align 8
  %66 = getelementptr inbounds %struct.enic, %struct.enic* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @vnic_dev_get_intr_mode(i32 %67)
  %69 = load i64, i64* @VNIC_DEV_INTR_MODE_MSIX, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %87, %71
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.enic*, %struct.enic** %4, align 8
  %75 = getelementptr inbounds %struct.enic, %struct.enic* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ult i32 %73, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load %struct.enic*, %struct.enic** %4, align 8
  %80 = getelementptr inbounds %struct.enic, %struct.enic* %79, i32 0, i32 8
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.enic*, %struct.enic** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i64 @enic_cq_wq(%struct.enic* %82, i32 %83)
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = call i32 @napi_disable(i32* %85)
  br label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %5, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %72

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90, %60
  %92 = load %struct.enic*, %struct.enic** %4, align 8
  %93 = call i32 @enic_is_dynamic(%struct.enic* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %91
  %96 = load %struct.enic*, %struct.enic** %4, align 8
  %97 = call i32 @enic_is_sriov_vf(%struct.enic* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load %struct.enic*, %struct.enic** %4, align 8
  %101 = call i32 @enic_dev_del_station_addr(%struct.enic* %100)
  br label %102

102:                                              ; preds = %99, %95, %91
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %122, %102
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.enic*, %struct.enic** %4, align 8
  %106 = getelementptr inbounds %struct.enic, %struct.enic* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ult i32 %104, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %103
  %110 = load %struct.enic*, %struct.enic** %4, align 8
  %111 = getelementptr inbounds %struct.enic, %struct.enic* %110, i32 0, i32 7
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = call i32 @vnic_wq_disable(i32* %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %229

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %5, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %103

125:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %145, %125
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.enic*, %struct.enic** %4, align 8
  %129 = getelementptr inbounds %struct.enic, %struct.enic* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ult i32 %127, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %126
  %133 = load %struct.enic*, %struct.enic** %4, align 8
  %134 = getelementptr inbounds %struct.enic, %struct.enic* %133, i32 0, i32 6
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = call i32 @vnic_rq_disable(i32* %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %132
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %2, align 4
  br label %229

144:                                              ; preds = %132
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %5, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %126

148:                                              ; preds = %126
  %149 = load %struct.enic*, %struct.enic** %4, align 8
  %150 = call i32 @enic_dev_notify_unset(%struct.enic* %149)
  %151 = load %struct.enic*, %struct.enic** %4, align 8
  %152 = call i32 @enic_unset_affinity_hint(%struct.enic* %151)
  %153 = load %struct.enic*, %struct.enic** %4, align 8
  %154 = call i32 @enic_free_intr(%struct.enic* %153)
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %170, %148
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.enic*, %struct.enic** %4, align 8
  %158 = getelementptr inbounds %struct.enic, %struct.enic* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp ult i32 %156, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %155
  %162 = load %struct.enic*, %struct.enic** %4, align 8
  %163 = getelementptr inbounds %struct.enic, %struct.enic* %162, i32 0, i32 7
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* @enic_free_wq_buf, align 4
  %169 = call i32 @vnic_wq_clean(i32* %167, i32 %168)
  br label %170

170:                                              ; preds = %161
  %171 = load i32, i32* %5, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %5, align 4
  br label %155

173:                                              ; preds = %155
  store i32 0, i32* %5, align 4
  br label %174

174:                                              ; preds = %189, %173
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.enic*, %struct.enic** %4, align 8
  %177 = getelementptr inbounds %struct.enic, %struct.enic* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ult i32 %175, %178
  br i1 %179, label %180, label %192

180:                                              ; preds = %174
  %181 = load %struct.enic*, %struct.enic** %4, align 8
  %182 = getelementptr inbounds %struct.enic, %struct.enic* %181, i32 0, i32 6
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* @enic_free_rq_buf, align 4
  %188 = call i32 @vnic_rq_clean(i32* %186, i32 %187)
  br label %189

189:                                              ; preds = %180
  %190 = load i32, i32* %5, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %5, align 4
  br label %174

192:                                              ; preds = %174
  store i32 0, i32* %5, align 4
  br label %193

193:                                              ; preds = %207, %192
  %194 = load i32, i32* %5, align 4
  %195 = load %struct.enic*, %struct.enic** %4, align 8
  %196 = getelementptr inbounds %struct.enic, %struct.enic* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = icmp ult i32 %194, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %193
  %200 = load %struct.enic*, %struct.enic** %4, align 8
  %201 = getelementptr inbounds %struct.enic, %struct.enic* %200, i32 0, i32 5
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %5, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = call i32 @vnic_cq_clean(i32* %205)
  br label %207

207:                                              ; preds = %199
  %208 = load i32, i32* %5, align 4
  %209 = add i32 %208, 1
  store i32 %209, i32* %5, align 4
  br label %193

210:                                              ; preds = %193
  store i32 0, i32* %5, align 4
  br label %211

211:                                              ; preds = %225, %210
  %212 = load i32, i32* %5, align 4
  %213 = load %struct.enic*, %struct.enic** %4, align 8
  %214 = getelementptr inbounds %struct.enic, %struct.enic* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp ult i32 %212, %215
  br i1 %216, label %217, label %228

217:                                              ; preds = %211
  %218 = load %struct.enic*, %struct.enic** %4, align 8
  %219 = getelementptr inbounds %struct.enic, %struct.enic* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %5, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = call i32 @vnic_intr_clean(i32* %223)
  br label %225

225:                                              ; preds = %217
  %226 = load i32, i32* %5, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %5, align 4
  br label %211

228:                                              ; preds = %211
  store i32 0, i32* %2, align 4
  br label %229

229:                                              ; preds = %228, %142, %119
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @vnic_intr_mask(i32*) #1

declare dso_local i32 @vnic_intr_masked(i32*) #1

declare dso_local i32 @enic_synchronize_irqs(%struct.enic*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @enic_rfs_flw_tbl_free(%struct.enic*) #1

declare dso_local i32 @enic_dev_disable(%struct.enic*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i64 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i64 @enic_cq_wq(%struct.enic*, i32) #1

declare dso_local i32 @enic_is_dynamic(%struct.enic*) #1

declare dso_local i32 @enic_is_sriov_vf(%struct.enic*) #1

declare dso_local i32 @enic_dev_del_station_addr(%struct.enic*) #1

declare dso_local i32 @vnic_wq_disable(i32*) #1

declare dso_local i32 @vnic_rq_disable(i32*) #1

declare dso_local i32 @enic_dev_notify_unset(%struct.enic*) #1

declare dso_local i32 @enic_unset_affinity_hint(%struct.enic*) #1

declare dso_local i32 @enic_free_intr(%struct.enic*) #1

declare dso_local i32 @vnic_wq_clean(i32*, i32) #1

declare dso_local i32 @vnic_rq_clean(i32*, i32) #1

declare dso_local i32 @vnic_cq_clean(i32*) #1

declare dso_local i32 @vnic_intr_clean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
