; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_setup_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_setup_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.dpaa2_eth_priv = type { i32, %struct.dpaa2_eth_channel**, i32 }
%struct.dpaa2_eth_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.bpf_prog*)* @setup_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_xdp(%struct.net_device* %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.dpaa2_eth_priv*, align 8
  %7 = alloca %struct.dpaa2_eth_channel*, align 8
  %8 = alloca %struct.bpf_prog*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.dpaa2_eth_priv* %14, %struct.dpaa2_eth_priv** %6, align 8
  %15 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %16 = icmp ne %struct.bpf_prog* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @xdp_mtu_valid(%struct.dpaa2_eth_priv* %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %162

27:                                               ; preds = %17, %2
  %28 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %29 = icmp ne %struct.bpf_prog* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %32 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %33 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.bpf_prog* @bpf_prog_add(%struct.bpf_prog* %31, i32 %34)
  store %struct.bpf_prog* %35, %struct.bpf_prog** %5, align 8
  %36 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %37 = call i64 @IS_ERR(%struct.bpf_prog* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %41 = call i32 @PTR_ERR(%struct.bpf_prog* %40)
  store i32 %41, i32* %3, align 4
  br label %162

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %27
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i32 @netif_running(%struct.net_device* %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %47 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %54 = icmp ne %struct.bpf_prog* %53, null
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = icmp ne i32 %52, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %43
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = call i32 @dpaa2_eth_stop(%struct.net_device* %63)
  br label %65

65:                                               ; preds = %62, %43
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %65
  %69 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %74 = icmp ne %struct.bpf_prog* %73, null
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @set_rx_mfl(%struct.dpaa2_eth_priv* %69, i32 %72, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %145

82:                                               ; preds = %68
  %83 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %84 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %85 = icmp ne %struct.bpf_prog* %84, null
  %86 = xor i1 %85, true
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @update_rx_buffer_headroom(%struct.dpaa2_eth_priv* %83, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %145

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %65
  %95 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %96 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %95, i32 0, i32 2
  %97 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %98 = call %struct.bpf_prog* @xchg(i32* %96, %struct.bpf_prog* %97)
  store %struct.bpf_prog* %98, %struct.bpf_prog** %8, align 8
  %99 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %100 = icmp ne %struct.bpf_prog* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %103 = call i32 @bpf_prog_put(%struct.bpf_prog* %102)
  br label %104

104:                                              ; preds = %101, %94
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %130, %104
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %108 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %105
  %112 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %113 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %112, i32 0, i32 1
  %114 = load %struct.dpaa2_eth_channel**, %struct.dpaa2_eth_channel*** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %114, i64 %116
  %118 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %117, align 8
  store %struct.dpaa2_eth_channel* %118, %struct.dpaa2_eth_channel** %7, align 8
  %119 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %7, align 8
  %120 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %123 = call %struct.bpf_prog* @xchg(i32* %121, %struct.bpf_prog* %122)
  store %struct.bpf_prog* %123, %struct.bpf_prog** %8, align 8
  %124 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %125 = icmp ne %struct.bpf_prog* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %111
  %127 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %128 = call i32 @bpf_prog_put(%struct.bpf_prog* %127)
  br label %129

129:                                              ; preds = %126, %111
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %105

133:                                              ; preds = %105
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load %struct.net_device*, %struct.net_device** %4, align 8
  %138 = call i32 @dpaa2_eth_open(%struct.net_device* %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %3, align 4
  br label %162

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143, %133
  store i32 0, i32* %3, align 4
  br label %162

145:                                              ; preds = %92, %81
  %146 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %147 = icmp ne %struct.bpf_prog* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %150 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %151 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @bpf_prog_sub(%struct.bpf_prog* %149, i32 %152)
  br label %154

154:                                              ; preds = %148, %145
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load %struct.net_device*, %struct.net_device** %4, align 8
  %159 = call i32 @dpaa2_eth_open(%struct.net_device* %158)
  br label %160

160:                                              ; preds = %157, %154
  %161 = load i32, i32* %12, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %144, %141, %39, %24
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xdp_mtu_valid(%struct.dpaa2_eth_priv*, i32) #1

declare dso_local %struct.bpf_prog* @bpf_prog_add(%struct.bpf_prog*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @dpaa2_eth_stop(%struct.net_device*) #1

declare dso_local i32 @set_rx_mfl(%struct.dpaa2_eth_priv*, i32, i32) #1

declare dso_local i32 @update_rx_buffer_headroom(%struct.dpaa2_eth_priv*, i32) #1

declare dso_local %struct.bpf_prog* @xchg(i32*, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @dpaa2_eth_open(%struct.net_device*) #1

declare dso_local i32 @bpf_prog_sub(%struct.bpf_prog*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
