; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_open_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_open_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i64, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }

@.str = private unnamed_addr constant [41 x i8] c"Failed to reserve default rings at open\0A\00", align 1
@BNXT_FLAG_RFS = common dso_local global i32 0, align 4
@BNXT_FLAG_USING_MSIX = common dso_local global i32 0, align 4
@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"bnxt_alloc_mem err: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"bnxt_request_irq err: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"bnxt_init_nic err: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to update phy settings\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@BNXT_STATE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32, i32)* @__bnxt_open_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bnxt_open_nic(%struct.bnxt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %10 = call i32 @bnxt_preset_reg_win(%struct.bnxt* %9)
  %11 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = call i32 @netif_carrier_off(%struct.TYPE_7__* %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %19 = call i32 @bnxt_init_dflt_ring_mode(%struct.bnxt* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %24 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %23, i32 0, i32 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_err(%struct.TYPE_7__* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %197

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @bnxt_reserve_rings(%struct.bnxt* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %197

37:                                               ; preds = %29
  %38 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %39 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BNXT_FLAG_RFS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %37
  %45 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %46 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @BNXT_FLAG_USING_MSIX, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %55 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %54, i32 0, i32 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %53
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @BNXT_FLAG_RFS, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %63 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %51, %44, %37
  %67 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @bnxt_alloc_mem(%struct.bnxt* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %74 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %73, i32 0, i32 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_err(%struct.TYPE_7__* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %189

78:                                               ; preds = %66
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %83 = call i32 @bnxt_init_napi(%struct.bnxt* %82)
  %84 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %85 = call i32 @bnxt_request_irq(%struct.bnxt* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %90 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %89, i32 0, i32 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_err(%struct.TYPE_7__* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %186

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94, %78
  %96 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %97 = call i32 @bnxt_enable_napi(%struct.bnxt* %96)
  %98 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %99 = call i32 @bnxt_debug_dev_init(%struct.bnxt* %98)
  %100 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @bnxt_init_nic(%struct.bnxt* %100, i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %95
  %106 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %107 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %106, i32 0, i32 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_err(%struct.TYPE_7__* %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  br label %181

111:                                              ; preds = %95
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %147

114:                                              ; preds = %111
  %115 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %116 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %115, i32 0, i32 6
  %117 = call i32 @mutex_lock(i32* %116)
  %118 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %119 = call i32 @bnxt_update_phy_setting(%struct.bnxt* %118)
  store i32 %119, i32* %8, align 4
  %120 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %121 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %120, i32 0, i32 6
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %146

125:                                              ; preds = %114
  %126 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %127 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %126, i32 0, i32 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = call i32 @netdev_warn(%struct.TYPE_7__* %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %130 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %131 = call i64 @BNXT_SINGLE_PF(%struct.bnxt* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %125
  %134 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %135 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load i64, i64* @jiffies, align 8
  %138 = load i32, i32* @HZ, align 4
  %139 = mul nsw i32 5, %138
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %137, %140
  %142 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %143 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  store i64 %141, i64* %144, align 8
  br label %145

145:                                              ; preds = %133, %125
  br label %146

146:                                              ; preds = %145, %114
  br label %147

147:                                              ; preds = %146, %111
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %152 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %151, i32 0, i32 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = call i32 @udp_tunnel_get_rx_info(%struct.TYPE_7__* %153)
  br label %155

155:                                              ; preds = %150, %147
  %156 = load i32, i32* @BNXT_STATE_OPEN, align 4
  %157 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %158 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %157, i32 0, i32 3
  %159 = call i32 @set_bit(i32 %156, i32* %158)
  %160 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %161 = call i32 @bnxt_enable_int(%struct.bnxt* %160)
  %162 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %163 = call i32 @bnxt_tx_enable(%struct.bnxt* %162)
  %164 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %165 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %164, i32 0, i32 2
  %166 = load i64, i64* @jiffies, align 8
  %167 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %168 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %166, %169
  %171 = call i32 @mod_timer(i32* %165, i64 %170)
  %172 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %173 = call i32 @bnxt_get_port_module_status(%struct.bnxt* %172)
  %174 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %175 = call i64 @BNXT_PF(%struct.bnxt* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %155
  %178 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %179 = call i32 @bnxt_vf_reps_open(%struct.bnxt* %178)
  br label %180

180:                                              ; preds = %177, %155
  store i32 0, i32* %4, align 4
  br label %197

181:                                              ; preds = %105
  %182 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %183 = call i32 @bnxt_debug_dev_exit(%struct.bnxt* %182)
  %184 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %185 = call i32 @bnxt_disable_napi(%struct.bnxt* %184)
  br label %186

186:                                              ; preds = %181, %88
  %187 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %188 = call i32 @bnxt_del_napi(%struct.bnxt* %187)
  br label %189

189:                                              ; preds = %186, %72
  %190 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %191 = call i32 @bnxt_free_skbs(%struct.bnxt* %190)
  %192 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %193 = call i32 @bnxt_free_irq(%struct.bnxt* %192)
  %194 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %195 = call i32 @bnxt_free_mem(%struct.bnxt* %194, i32 1)
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %189, %180, %35, %22
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @bnxt_preset_reg_win(%struct.bnxt*) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_7__*) #1

declare dso_local i32 @bnxt_init_dflt_ring_mode(%struct.bnxt*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @bnxt_reserve_rings(%struct.bnxt*, i32) #1

declare dso_local i32 @bnxt_alloc_mem(%struct.bnxt*, i32) #1

declare dso_local i32 @bnxt_init_napi(%struct.bnxt*) #1

declare dso_local i32 @bnxt_request_irq(%struct.bnxt*) #1

declare dso_local i32 @bnxt_enable_napi(%struct.bnxt*) #1

declare dso_local i32 @bnxt_debug_dev_init(%struct.bnxt*) #1

declare dso_local i32 @bnxt_init_nic(%struct.bnxt*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bnxt_update_phy_setting(%struct.bnxt*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @BNXT_SINGLE_PF(%struct.bnxt*) #1

declare dso_local i32 @udp_tunnel_get_rx_info(%struct.TYPE_7__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnxt_enable_int(%struct.bnxt*) #1

declare dso_local i32 @bnxt_tx_enable(%struct.bnxt*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @bnxt_get_port_module_status(%struct.bnxt*) #1

declare dso_local i64 @BNXT_PF(%struct.bnxt*) #1

declare dso_local i32 @bnxt_vf_reps_open(%struct.bnxt*) #1

declare dso_local i32 @bnxt_debug_dev_exit(%struct.bnxt*) #1

declare dso_local i32 @bnxt_disable_napi(%struct.bnxt*) #1

declare dso_local i32 @bnxt_del_napi(%struct.bnxt*) #1

declare dso_local i32 @bnxt_free_skbs(%struct.bnxt*) #1

declare dso_local i32 @bnxt_free_irq(%struct.bnxt*) #1

declare dso_local i32 @bnxt_free_mem(%struct.bnxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
