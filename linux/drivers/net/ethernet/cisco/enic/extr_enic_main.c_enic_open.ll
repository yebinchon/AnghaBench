; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enic = type { i32, i32, i32, i32*, i32*, i32*, i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"Unable to request irq.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to alloc notify buffer, aborting.\0A\00", align 1
@enic_rq_alloc_buf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to alloc receive buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VNIC_DEV_INTR_MODE_MSIX = common dso_local global i64 0, align 8
@enic_free_rq_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @enic_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.enic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.enic* @netdev_priv(%struct.net_device* %8)
  store %struct.enic* %9, %struct.enic** %4, align 8
  %10 = load %struct.enic*, %struct.enic** %4, align 8
  %11 = call i32 @enic_request_intr(%struct.enic* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @netdev_err(%struct.net_device* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %212

18:                                               ; preds = %1
  %19 = load %struct.enic*, %struct.enic** %4, align 8
  %20 = call i32 @enic_init_affinity_hint(%struct.enic* %19)
  %21 = load %struct.enic*, %struct.enic** %4, align 8
  %22 = call i32 @enic_set_affinity_hint(%struct.enic* %21)
  %23 = load %struct.enic*, %struct.enic** %4, align 8
  %24 = call i32 @enic_dev_notify_set(%struct.enic* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @netdev_err(%struct.net_device* %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %206

30:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %67, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.enic*, %struct.enic** %4, align 8
  %34 = getelementptr inbounds %struct.enic, %struct.enic* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %31
  %38 = load %struct.enic*, %struct.enic** %4, align 8
  %39 = getelementptr inbounds %struct.enic, %struct.enic* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @vnic_rq_enable(i32* %43)
  %45 = load %struct.enic*, %struct.enic** %4, align 8
  %46 = getelementptr inbounds %struct.enic, %struct.enic* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* @enic_rq_alloc_buf, align 4
  %52 = call i32 @vnic_rq_fill(i32* %50, i32 %51)
  %53 = load %struct.enic*, %struct.enic** %4, align 8
  %54 = getelementptr inbounds %struct.enic, %struct.enic* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i64 @vnic_rq_desc_used(i32* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %37
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = call i32 @netdev_err(%struct.net_device* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %173

66:                                               ; preds = %37
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %31

70:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %85, %70
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.enic*, %struct.enic** %4, align 8
  %74 = getelementptr inbounds %struct.enic, %struct.enic* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ult i32 %72, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load %struct.enic*, %struct.enic** %4, align 8
  %79 = getelementptr inbounds %struct.enic, %struct.enic* %78, i32 0, i32 7
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @vnic_wq_enable(i32* %83)
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %71

88:                                               ; preds = %71
  %89 = load %struct.enic*, %struct.enic** %4, align 8
  %90 = call i32 @enic_is_dynamic(%struct.enic* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %88
  %93 = load %struct.enic*, %struct.enic** %4, align 8
  %94 = call i32 @enic_is_sriov_vf(%struct.enic* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load %struct.enic*, %struct.enic** %4, align 8
  %98 = call i32 @enic_dev_add_station_addr(%struct.enic* %97)
  br label %99

99:                                               ; preds = %96, %92, %88
  %100 = load %struct.net_device*, %struct.net_device** %3, align 8
  %101 = call i32 @enic_set_rx_mode(%struct.net_device* %100)
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %102)
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %118, %99
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.enic*, %struct.enic** %4, align 8
  %107 = getelementptr inbounds %struct.enic, %struct.enic* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ult i32 %105, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load %struct.enic*, %struct.enic** %4, align 8
  %112 = getelementptr inbounds %struct.enic, %struct.enic* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = call i32 @napi_enable(i32* %116)
  br label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %5, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %104

121:                                              ; preds = %104
  %122 = load %struct.enic*, %struct.enic** %4, align 8
  %123 = getelementptr inbounds %struct.enic, %struct.enic* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @vnic_dev_get_intr_mode(i32 %124)
  %126 = load i64, i64* @VNIC_DEV_INTR_MODE_MSIX, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %148

128:                                              ; preds = %121
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %144, %128
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.enic*, %struct.enic** %4, align 8
  %132 = getelementptr inbounds %struct.enic, %struct.enic* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ult i32 %130, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %129
  %136 = load %struct.enic*, %struct.enic** %4, align 8
  %137 = getelementptr inbounds %struct.enic, %struct.enic* %136, i32 0, i32 5
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.enic*, %struct.enic** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call i64 @enic_cq_wq(%struct.enic* %139, i32 %140)
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = call i32 @napi_enable(i32* %142)
  br label %144

144:                                              ; preds = %135
  %145 = load i32, i32* %5, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %129

147:                                              ; preds = %129
  br label %148

148:                                              ; preds = %147, %121
  %149 = load %struct.enic*, %struct.enic** %4, align 8
  %150 = call i32 @enic_dev_enable(%struct.enic* %149)
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %165, %148
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.enic*, %struct.enic** %4, align 8
  %154 = getelementptr inbounds %struct.enic, %struct.enic* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp ult i32 %152, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %151
  %158 = load %struct.enic*, %struct.enic** %4, align 8
  %159 = getelementptr inbounds %struct.enic, %struct.enic* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = call i32 @vnic_intr_unmask(i32* %163)
  br label %165

165:                                              ; preds = %157
  %166 = load i32, i32* %5, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %151

168:                                              ; preds = %151
  %169 = load %struct.enic*, %struct.enic** %4, align 8
  %170 = call i32 @enic_notify_timer_start(%struct.enic* %169)
  %171 = load %struct.enic*, %struct.enic** %4, align 8
  %172 = call i32 @enic_rfs_timer_start(%struct.enic* %171)
  store i32 0, i32* %2, align 4
  br label %212

173:                                              ; preds = %61
  store i32 0, i32* %5, align 4
  br label %174

174:                                              ; preds = %200, %173
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.enic*, %struct.enic** %4, align 8
  %177 = getelementptr inbounds %struct.enic, %struct.enic* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ult i32 %175, %178
  br i1 %179, label %180, label %203

180:                                              ; preds = %174
  %181 = load %struct.enic*, %struct.enic** %4, align 8
  %182 = getelementptr inbounds %struct.enic, %struct.enic* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = call i32 @vnic_rq_disable(i32* %186)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %7, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %199, label %190

190:                                              ; preds = %180
  %191 = load %struct.enic*, %struct.enic** %4, align 8
  %192 = getelementptr inbounds %struct.enic, %struct.enic* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* @enic_free_rq_buf, align 4
  %198 = call i32 @vnic_rq_clean(i32* %196, i32 %197)
  br label %199

199:                                              ; preds = %190, %180
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %5, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %5, align 4
  br label %174

203:                                              ; preds = %174
  %204 = load %struct.enic*, %struct.enic** %4, align 8
  %205 = call i32 @enic_dev_notify_unset(%struct.enic* %204)
  br label %206

206:                                              ; preds = %203, %27
  %207 = load %struct.enic*, %struct.enic** %4, align 8
  %208 = call i32 @enic_unset_affinity_hint(%struct.enic* %207)
  %209 = load %struct.enic*, %struct.enic** %4, align 8
  %210 = call i32 @enic_free_intr(%struct.enic* %209)
  %211 = load i32, i32* %6, align 4
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %206, %168, %14
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enic_request_intr(%struct.enic*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @enic_init_affinity_hint(%struct.enic*) #1

declare dso_local i32 @enic_set_affinity_hint(%struct.enic*) #1

declare dso_local i32 @enic_dev_notify_set(%struct.enic*) #1

declare dso_local i32 @vnic_rq_enable(i32*) #1

declare dso_local i32 @vnic_rq_fill(i32*, i32) #1

declare dso_local i64 @vnic_rq_desc_used(i32*) #1

declare dso_local i32 @vnic_wq_enable(i32*) #1

declare dso_local i32 @enic_is_dynamic(%struct.enic*) #1

declare dso_local i32 @enic_is_sriov_vf(%struct.enic*) #1

declare dso_local i32 @enic_dev_add_station_addr(%struct.enic*) #1

declare dso_local i32 @enic_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i64 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i64 @enic_cq_wq(%struct.enic*, i32) #1

declare dso_local i32 @enic_dev_enable(%struct.enic*) #1

declare dso_local i32 @vnic_intr_unmask(i32*) #1

declare dso_local i32 @enic_notify_timer_start(%struct.enic*) #1

declare dso_local i32 @enic_rfs_timer_start(%struct.enic*) #1

declare dso_local i32 @vnic_rq_disable(i32*) #1

declare dso_local i32 @vnic_rq_clean(i32*, i32) #1

declare dso_local i32 @enic_dev_notify_unset(%struct.enic*) #1

declare dso_local i32 @enic_unset_affinity_hint(%struct.enic*) #1

declare dso_local i32 @enic_free_intr(%struct.enic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
