; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_tunnel_offload_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_tunnel_offload_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.net_device = type { i32* }
%struct.nfp_flower_non_repr_priv = type { i32, i32* }
%struct.nfp_flower_repr_priv = type { i32, i32*, i64 }
%struct.nfp_repr = type { %struct.nfp_flower_repr_priv*, %struct.nfp_app* }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Failed to remove offload of replaced MAC addr on %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*, i32)* @nfp_tunnel_offload_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_tunnel_offload_mac(%struct.nfp_app* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_flower_non_repr_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfp_flower_repr_priv*, align 8
  %15 = alloca %struct.nfp_repr*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nfp_flower_non_repr_priv* null, %struct.nfp_flower_non_repr_priv** %8, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call i64 @nfp_netdev_is_nfp_repr(%struct.net_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call %struct.nfp_repr* @netdev_priv(%struct.net_device* %20)
  store %struct.nfp_repr* %21, %struct.nfp_repr** %15, align 8
  %22 = load %struct.nfp_repr*, %struct.nfp_repr** %15, align 8
  %23 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %22, i32 0, i32 1
  %24 = load %struct.nfp_app*, %struct.nfp_app** %23, align 8
  %25 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %26 = icmp ne %struct.nfp_app* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %188

28:                                               ; preds = %19
  %29 = load %struct.nfp_repr*, %struct.nfp_repr** %15, align 8
  %30 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %29, i32 0, i32 0
  %31 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %30, align 8
  store %struct.nfp_flower_repr_priv* %31, %struct.nfp_flower_repr_priv** %14, align 8
  %32 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %14, align 8
  %33 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %188

37:                                               ; preds = %28
  %38 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %14, align 8
  %39 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %38, i32 0, i32 0
  store i32* %39, i32** %10, align 8
  %40 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %14, align 8
  %41 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32* %43, i32** %11, align 8
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = call i32 @nfp_repr_get_port_id(%struct.net_device* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @nfp_tunnel_port_is_phy_repr(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %188

50:                                               ; preds = %37
  br label %73

51:                                               ; preds = %3
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = call i64 @nfp_fl_is_netdev_to_offload(%struct.net_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = call %struct.nfp_flower_non_repr_priv* @nfp_flower_non_repr_priv_get(%struct.nfp_app* %56, %struct.net_device* %57)
  store %struct.nfp_flower_non_repr_priv* %58, %struct.nfp_flower_non_repr_priv** %8, align 8
  %59 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %8, align 8
  %60 = icmp ne %struct.nfp_flower_non_repr_priv* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %188

64:                                               ; preds = %55
  %65 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %8, align 8
  %66 = getelementptr inbounds %struct.nfp_flower_non_repr_priv, %struct.nfp_flower_non_repr_priv* %65, i32 0, i32 0
  store i32* %66, i32** %10, align 8
  %67 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %8, align 8
  %68 = getelementptr inbounds %struct.nfp_flower_non_repr_priv, %struct.nfp_flower_non_repr_priv* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32* %70, i32** %11, align 8
  store i32 1, i32* %9, align 4
  br label %72

71:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %188

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %50
  %74 = load %struct.net_device*, %struct.net_device** %6, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @is_valid_ether_addr(i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  br label %180

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 128
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 130, i32* %7, align 4
  br label %90

90:                                               ; preds = %89, %85, %82
  %91 = load i32, i32* %7, align 4
  switch i32 %91, label %170 [
    i32 130, label %92
    i32 129, label %113
    i32 128, label %136
  ]

92:                                               ; preds = %90
  %93 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %94 = load %struct.net_device*, %struct.net_device** %6, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @nfp_tunnel_add_shared_mac(%struct.nfp_app* %93, %struct.net_device* %94, i32 %95, i32 0)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %180

100:                                              ; preds = %92
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %8, align 8
  %105 = call i32 @__nfp_flower_non_repr_priv_get(%struct.nfp_flower_non_repr_priv* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32*, i32** %10, align 8
  store i32 1, i32* %107, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = load %struct.net_device*, %struct.net_device** %6, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @ether_addr_copy(i32* %108, i32* %111)
  br label %173

113:                                              ; preds = %90
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  br label %173

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %8, align 8
  %123 = call i32 @__nfp_flower_non_repr_priv_put(%struct.nfp_flower_non_repr_priv* %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i32*, i32** %10, align 8
  store i32 0, i32* %125, align 4
  %126 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %127 = load %struct.net_device*, %struct.net_device** %6, align 8
  %128 = load %struct.net_device*, %struct.net_device** %6, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @nfp_tunnel_del_shared_mac(%struct.nfp_app* %126, %struct.net_device* %127, i32* %130, i32 0)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %180

135:                                              ; preds = %124
  br label %173

136:                                              ; preds = %90
  %137 = load %struct.net_device*, %struct.net_device** %6, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = call i32 @ether_addr_equal(i32* %139, i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %173

144:                                              ; preds = %136
  %145 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %146 = load %struct.net_device*, %struct.net_device** %6, align 8
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @nfp_tunnel_add_shared_mac(%struct.nfp_app* %145, %struct.net_device* %146, i32 %147, i32 1)
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %180

152:                                              ; preds = %144
  %153 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %154 = load %struct.net_device*, %struct.net_device** %6, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = call i32 @nfp_tunnel_del_shared_mac(%struct.nfp_app* %153, %struct.net_device* %154, i32* %155, i32 1)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %161 = load %struct.net_device*, %struct.net_device** %6, align 8
  %162 = call i32 @netdev_name(%struct.net_device* %161)
  %163 = call i32 @nfp_flower_cmsg_warn(%struct.nfp_app* %160, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %159, %152
  %165 = load i32*, i32** %11, align 8
  %166 = load %struct.net_device*, %struct.net_device** %6, align 8
  %167 = getelementptr inbounds %struct.net_device, %struct.net_device* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @ether_addr_copy(i32* %165, i32* %168)
  br label %173

170:                                              ; preds = %90
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %12, align 4
  br label %180

173:                                              ; preds = %164, %143, %135, %117, %106
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %8, align 8
  %178 = call i32 @__nfp_flower_non_repr_priv_put(%struct.nfp_flower_non_repr_priv* %177)
  br label %179

179:                                              ; preds = %176, %173
  store i32 0, i32* %4, align 4
  br label %188

180:                                              ; preds = %170, %151, %134, %99, %79
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %8, align 8
  %185 = call i32 @__nfp_flower_non_repr_priv_put(%struct.nfp_flower_non_repr_priv* %184)
  br label %186

186:                                              ; preds = %183, %180
  %187 = load i32, i32* %12, align 4
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %186, %179, %71, %61, %49, %36, %27
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i64 @nfp_netdev_is_nfp_repr(%struct.net_device*) #1

declare dso_local %struct.nfp_repr* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nfp_repr_get_port_id(%struct.net_device*) #1

declare dso_local i32 @nfp_tunnel_port_is_phy_repr(i32) #1

declare dso_local i64 @nfp_fl_is_netdev_to_offload(%struct.net_device*) #1

declare dso_local %struct.nfp_flower_non_repr_priv* @nfp_flower_non_repr_priv_get(%struct.nfp_app*, %struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @nfp_tunnel_add_shared_mac(%struct.nfp_app*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @__nfp_flower_non_repr_priv_get(%struct.nfp_flower_non_repr_priv*) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @__nfp_flower_non_repr_priv_put(%struct.nfp_flower_non_repr_priv*) #1

declare dso_local i32 @nfp_tunnel_del_shared_mac(%struct.nfp_app*, %struct.net_device*, i32*, i32) #1

declare dso_local i32 @ether_addr_equal(i32*, i32*) #1

declare dso_local i32 @nfp_flower_cmsg_warn(%struct.nfp_app*, i8*, i32) #1

declare dso_local i32 @netdev_name(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
