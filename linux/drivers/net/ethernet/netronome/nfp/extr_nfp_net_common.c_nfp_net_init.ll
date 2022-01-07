; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i64, i32, %struct.TYPE_3__, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NFP_NET_DEFAULT_MTU = common dso_local global i64 0, align 8
@NFP_NET_CFG_CTRL_CMSG_DATA = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_RSS_ANY = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_RSS2 = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_RSS = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_L2BC = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_IRQMOD = common dso_local global i32 0, align 4
@NFP_QCP_QUEUE_ADDR_SZ = common dso_local global i64 0, align 8
@NFP_NET_CFG_CTRL = common dso_local global i32 0, align 4
@NFP_NET_CFG_TXRS_ENABLE = common dso_local global i32 0, align 4
@NFP_NET_CFG_RXRS_ENABLE = common dso_local global i32 0, align 4
@NFP_NET_CFG_UPDATE_RING = common dso_local global i32 0, align 4
@NFP_NET_CFG_UPDATE_GEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_net_init(%struct.nfp_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  %5 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %6 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %7 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  store i32 %5, i32* %8, align 4
  %9 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %10 = call i32 @nfp_net_read_caps(%struct.nfp_net* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %204

15:                                               ; preds = %1
  %16 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %17 = call i32 @nfp_net_is_data_vnic(%struct.nfp_net* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %21 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %20, i32 0, i32 5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %28 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %27, i32 0, i32 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %33 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @min(i64 %31, i64 %34)
  %36 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %37 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  br label %58

39:                                               ; preds = %19, %15
  %40 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %41 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NFP_NET_DEFAULT_MTU, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %47 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %50 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  br label %57

52:                                               ; preds = %39
  %53 = load i64, i64* @NFP_NET_DEFAULT_MTU, align 8
  %54 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %55 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  br label %57

57:                                               ; preds = %52, %45
  br label %58

58:                                               ; preds = %57, %26
  %59 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %60 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %59, i32 0, i32 2
  %61 = call i32 @nfp_net_calc_fl_bufsz(%struct.TYPE_3__* %60)
  %62 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %63 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 8
  %65 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %66 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %65, i32 0, i32 5
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = call i64 @nfp_app_ctrl_uses_data_vnics(%struct.TYPE_4__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %58
  %71 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %72 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @NFP_NET_CFG_CTRL_CMSG_DATA, align 4
  %75 = and i32 %73, %74
  %76 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %77 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %75
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %70, %58
  %82 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %83 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NFP_NET_CFG_CTRL_RSS_ANY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %81
  %89 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %90 = call i32 @nfp_net_rss_init(%struct.nfp_net* %89)
  %91 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %92 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @NFP_NET_CFG_CTRL_RSS2, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %100

98:                                               ; preds = %88
  %99 = load i32, i32* @NFP_NET_CFG_CTRL_RSS, align 4
  br label %100

100:                                              ; preds = %98, %97
  %101 = phi i32 [ %95, %97 ], [ %99, %98 ]
  %102 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %103 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %101
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %100, %81
  %108 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %109 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @NFP_NET_CFG_CTRL_L2BC, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load i32, i32* @NFP_NET_CFG_CTRL_L2BC, align 4
  %116 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %117 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %115
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %114, %107
  %122 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %123 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @NFP_NET_CFG_CTRL_IRQMOD, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %130 = call i32 @nfp_net_irqmod_init(%struct.nfp_net* %129)
  %131 = load i32, i32* @NFP_NET_CFG_CTRL_IRQMOD, align 4
  %132 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %133 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %131
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %128, %121
  %138 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %139 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @NFP_QCP_QUEUE_ADDR_SZ, align 8
  %142 = add nsw i64 %140, %141
  %143 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %144 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %143, i32 0, i32 4
  store i64 %142, i64* %144, align 8
  %145 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %146 = load i32, i32* @NFP_NET_CFG_CTRL, align 4
  %147 = call i32 @nn_writel(%struct.nfp_net* %145, i32 %146, i32 0)
  %148 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %149 = load i32, i32* @NFP_NET_CFG_TXRS_ENABLE, align 4
  %150 = call i32 @nn_writeq(%struct.nfp_net* %148, i32 %149, i32 0)
  %151 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %152 = load i32, i32* @NFP_NET_CFG_RXRS_ENABLE, align 4
  %153 = call i32 @nn_writeq(%struct.nfp_net* %151, i32 %152, i32 0)
  %154 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %155 = load i32, i32* @NFP_NET_CFG_UPDATE_RING, align 4
  %156 = load i32, i32* @NFP_NET_CFG_UPDATE_GEN, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @nfp_net_reconfig(%struct.nfp_net* %154, i32 %157)
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %137
  %162 = load i32, i32* %4, align 4
  store i32 %162, i32* %2, align 4
  br label %204

163:                                              ; preds = %137
  %164 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %165 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %185

169:                                              ; preds = %163
  %170 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %171 = call i32 @nfp_net_netdev_init(%struct.nfp_net* %170)
  %172 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %173 = call i32 @nfp_ccm_mbox_init(%struct.nfp_net* %172)
  store i32 %173, i32* %4, align 4
  %174 = load i32, i32* %4, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = load i32, i32* %4, align 4
  store i32 %177, i32* %2, align 4
  br label %204

178:                                              ; preds = %169
  %179 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %180 = call i32 @nfp_net_tls_init(%struct.nfp_net* %179)
  store i32 %180, i32* %4, align 4
  %181 = load i32, i32* %4, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %200

184:                                              ; preds = %178
  br label %185

185:                                              ; preds = %184, %163
  %186 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %187 = call i32 @nfp_net_vecs_init(%struct.nfp_net* %186)
  %188 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %189 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %185
  store i32 0, i32* %2, align 4
  br label %204

194:                                              ; preds = %185
  %195 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %196 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @register_netdev(i64 %198)
  store i32 %199, i32* %2, align 4
  br label %204

200:                                              ; preds = %183
  %201 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %202 = call i32 @nfp_ccm_mbox_clean(%struct.nfp_net* %201)
  %203 = load i32, i32* %4, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %200, %194, %193, %176, %161, %13
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @nfp_net_read_caps(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_is_data_vnic(%struct.nfp_net*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @nfp_net_calc_fl_bufsz(%struct.TYPE_3__*) #1

declare dso_local i64 @nfp_app_ctrl_uses_data_vnics(%struct.TYPE_4__*) #1

declare dso_local i32 @nfp_net_rss_init(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_irqmod_init(%struct.nfp_net*) #1

declare dso_local i32 @nn_writel(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @nn_writeq(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @nfp_net_reconfig(%struct.nfp_net*, i32) #1

declare dso_local i32 @nfp_net_netdev_init(%struct.nfp_net*) #1

declare dso_local i32 @nfp_ccm_mbox_init(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_tls_init(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_vecs_init(%struct.nfp_net*) #1

declare dso_local i32 @register_netdev(i64) #1

declare dso_local i32 @nfp_ccm_mbox_clean(%struct.nfp_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
