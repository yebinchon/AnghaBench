; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32, i64, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.macsec_dev = type { %struct.net_device* }

@DEFAULT_ICV_LEN = common dso_local global i64 0, align 8
@IFLA_LINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IFF_MACSEC = common dso_local global i32 0, align 4
@IFLA_MACSEC_ICV_LEN = common dso_local global i64 0, align 8
@macsec_handle_frame = common dso_local global i32* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@IFLA_MACSEC_SCI = common dso_local global i64 0, align 8
@IFLA_MACSEC_PORT = common dso_local global i64 0, align 8
@MACSEC_PORT_ES = common dso_local global i32 0, align 4
@macsec_generation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @macsec_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.macsec_dev*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = call %struct.macsec_dev* @macsec_priv(%struct.net_device* %18)
  store %struct.macsec_dev* %19, %struct.macsec_dev** %12, align 8
  %20 = load i64, i64* @DEFAULT_ICV_LEN, align 8
  store i64 %20, i64* %16, align 8
  %21 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %22 = load i64, i64* @IFLA_LINK, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %196

29:                                               ; preds = %5
  %30 = load %struct.net*, %struct.net** %7, align 8
  %31 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %32 = load i64, i64* @IFLA_LINK, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i32 @nla_get_u32(%struct.nlattr* %34)
  %36 = call %struct.net_device* @__dev_get_by_index(%struct.net* %30, i32 %35)
  store %struct.net_device* %36, %struct.net_device** %13, align 8
  %37 = load %struct.net_device*, %struct.net_device** %13, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %196

42:                                               ; preds = %29
  %43 = load i32, i32* @IFF_MACSEC, align 4
  %44 = load %struct.net_device*, %struct.net_device** %8, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.net_device*, %struct.net_device** %13, align 8
  %49 = load %struct.macsec_dev*, %struct.macsec_dev** %12, align 8
  %50 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %49, i32 0, i32 0
  store %struct.net_device* %48, %struct.net_device** %50, align 8
  %51 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %52 = icmp ne %struct.nlattr** %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %42
  %54 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %55 = load i64, i64* @IFLA_MACSEC_ICV_LEN, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = icmp ne %struct.nlattr* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %61 = load i64, i64* @IFLA_MACSEC_ICV_LEN, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i64 @nla_get_u8(%struct.nlattr* %63)
  store i64 %64, i64* %16, align 8
  br label %65

65:                                               ; preds = %59, %53, %42
  %66 = load %struct.net_device*, %struct.net_device** %13, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %16, align 8
  %70 = sub nsw i64 %68, %69
  %71 = call i64 @macsec_extra_len(i32 1)
  %72 = sub nsw i64 %70, %71
  %73 = load %struct.net_device*, %struct.net_device** %8, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.net_device*, %struct.net_device** %13, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32* @rtnl_dereference(i32 %77)
  store i32* %78, i32** %17, align 8
  %79 = load i32*, i32** %17, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %65
  %82 = load i32*, i32** %17, align 8
  %83 = load i32*, i32** @macsec_handle_frame, align 8
  %84 = icmp ne i32* %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @EBUSY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %196

88:                                               ; preds = %81, %65
  %89 = load %struct.net_device*, %struct.net_device** %8, align 8
  %90 = call i32 @register_netdevice(%struct.net_device* %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %6, align 4
  br label %196

95:                                               ; preds = %88
  %96 = load %struct.net_device*, %struct.net_device** %13, align 8
  %97 = load %struct.net_device*, %struct.net_device** %8, align 8
  %98 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %99 = call i32 @netdev_upper_dev_link(%struct.net_device* %96, %struct.net_device* %97, %struct.netlink_ext_ack* %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %192

103:                                              ; preds = %95
  %104 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %105 = icmp ne %struct.nlattr** %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %108 = load i64, i64* @IFLA_MACSEC_SCI, align 8
  %109 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %107, i64 %108
  %110 = load %struct.nlattr*, %struct.nlattr** %109, align 8
  %111 = icmp ne %struct.nlattr* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %114 = load i64, i64* @IFLA_MACSEC_SCI, align 8
  %115 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %113, i64 %114
  %116 = load %struct.nlattr*, %struct.nlattr** %115, align 8
  %117 = call i32 @nla_get_sci(%struct.nlattr* %116)
  store i32 %117, i32* %15, align 4
  br label %140

118:                                              ; preds = %106, %103
  %119 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %120 = icmp ne %struct.nlattr** %119, null
  br i1 %120, label %121, label %135

121:                                              ; preds = %118
  %122 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %123 = load i64, i64* @IFLA_MACSEC_PORT, align 8
  %124 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %122, i64 %123
  %125 = load %struct.nlattr*, %struct.nlattr** %124, align 8
  %126 = icmp ne %struct.nlattr* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = load %struct.net_device*, %struct.net_device** %8, align 8
  %129 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %130 = load i64, i64* @IFLA_MACSEC_PORT, align 8
  %131 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %129, i64 %130
  %132 = load %struct.nlattr*, %struct.nlattr** %131, align 8
  %133 = call i32 @nla_get_be16(%struct.nlattr* %132)
  %134 = call i32 @dev_to_sci(%struct.net_device* %128, i32 %133)
  store i32 %134, i32* %15, align 4
  br label %139

135:                                              ; preds = %121, %118
  %136 = load %struct.net_device*, %struct.net_device** %8, align 8
  %137 = load i32, i32* @MACSEC_PORT_ES, align 4
  %138 = call i32 @dev_to_sci(%struct.net_device* %136, i32 %137)
  store i32 %138, i32* %15, align 4
  br label %139

139:                                              ; preds = %135, %127
  br label %140

140:                                              ; preds = %139, %112
  %141 = load i32*, i32** %17, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load %struct.net_device*, %struct.net_device** %13, align 8
  %145 = load i32, i32* %15, align 4
  %146 = call i64 @sci_exists(%struct.net_device* %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* @EBUSY, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %14, align 4
  br label %188

151:                                              ; preds = %143, %140
  %152 = load %struct.net_device*, %struct.net_device** %8, align 8
  %153 = load i32, i32* %15, align 4
  %154 = load i64, i64* %16, align 8
  %155 = call i32 @macsec_add_dev(%struct.net_device* %152, i32 %153, i64 %154)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %188

159:                                              ; preds = %151
  %160 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %161 = icmp ne %struct.nlattr** %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load %struct.net_device*, %struct.net_device** %8, align 8
  %164 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %165 = call i32 @macsec_changelink_common(%struct.net_device* %163, %struct.nlattr** %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %185

169:                                              ; preds = %162
  br label %170

170:                                              ; preds = %169, %159
  %171 = load %struct.net_device*, %struct.net_device** %13, align 8
  %172 = load %struct.net_device*, %struct.net_device** %8, align 8
  %173 = call i32 @register_macsec_dev(%struct.net_device* %171, %struct.net_device* %172)
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %14, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  br label %185

177:                                              ; preds = %170
  %178 = load %struct.net_device*, %struct.net_device** %13, align 8
  %179 = load %struct.net_device*, %struct.net_device** %8, align 8
  %180 = call i32 @netif_stacked_transfer_operstate(%struct.net_device* %178, %struct.net_device* %179)
  %181 = load %struct.net_device*, %struct.net_device** %8, align 8
  %182 = call i32 @linkwatch_fire_event(%struct.net_device* %181)
  %183 = load i32, i32* @macsec_generation, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* @macsec_generation, align 4
  store i32 0, i32* %6, align 4
  br label %196

185:                                              ; preds = %176, %168
  %186 = load %struct.macsec_dev*, %struct.macsec_dev** %12, align 8
  %187 = call i32 @macsec_del_dev(%struct.macsec_dev* %186)
  br label %188

188:                                              ; preds = %185, %158, %148
  %189 = load %struct.net_device*, %struct.net_device** %13, align 8
  %190 = load %struct.net_device*, %struct.net_device** %8, align 8
  %191 = call i32 @netdev_upper_dev_unlink(%struct.net_device* %189, %struct.net_device* %190)
  br label %192

192:                                              ; preds = %188, %102
  %193 = load %struct.net_device*, %struct.net_device** %8, align 8
  %194 = call i32 @unregister_netdevice(%struct.net_device* %193)
  %195 = load i32, i32* %14, align 4
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %192, %177, %93, %85, %39, %26
  %197 = load i32, i32* %6, align 4
  ret i32 %197
}

declare dso_local %struct.macsec_dev* @macsec_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i64 @macsec_extra_len(i32) #1

declare dso_local i32* @rtnl_dereference(i32) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @netdev_upper_dev_link(%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_sci(%struct.nlattr*) #1

declare dso_local i32 @dev_to_sci(%struct.net_device*, i32) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i64 @sci_exists(%struct.net_device*, i32) #1

declare dso_local i32 @macsec_add_dev(%struct.net_device*, i32, i64) #1

declare dso_local i32 @macsec_changelink_common(%struct.net_device*, %struct.nlattr**) #1

declare dso_local i32 @register_macsec_dev(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @netif_stacked_transfer_operstate(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @linkwatch_fire_event(%struct.net_device*) #1

declare dso_local i32 @macsec_del_dev(%struct.macsec_dev*) #1

declare dso_local i32 @netdev_upper_dev_unlink(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
