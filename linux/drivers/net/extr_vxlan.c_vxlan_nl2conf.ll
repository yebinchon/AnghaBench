; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_nl2conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_nl2conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.vxlan_config = type { i64, i32, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_11__, %struct.TYPE_16__ }
%struct.TYPE_11__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.netlink_ext_ack = type { i32 }
%struct.vxlan_dev = type { i32 }
%struct.ifla_vxlan_port_range = type { i32, i32 }

@IFLA_VXLAN_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Cannot change VNI\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IFLA_VXLAN_GROUP = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"New group address family does not match old group\00", align 1
@IFLA_VXLAN_GROUP6 = common dso_local global i64 0, align 8
@CONFIG_IPV6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"IPv6 support not enabled in the kernel\00", align 1
@EPFNOSUPPORT = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@IFLA_VXLAN_LOCAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"New local address family does not match old\00", align 1
@IFLA_VXLAN_LOCAL6 = common dso_local global i64 0, align 8
@IFLA_VXLAN_LINK = common dso_local global i64 0, align 8
@IFLA_VXLAN_TOS = common dso_local global i64 0, align 8
@IFLA_VXLAN_TTL = common dso_local global i64 0, align 8
@IFLA_VXLAN_TTL_INHERIT = common dso_local global i64 0, align 8
@VXLAN_F_TTL_INHERIT = common dso_local global i32 0, align 4
@IFLA_VXLAN_LABEL = common dso_local global i64 0, align 8
@IPV6_FLOWLABEL_MASK = common dso_local global i32 0, align 4
@IFLA_VXLAN_LEARNING = common dso_local global i64 0, align 8
@VXLAN_F_LEARN = common dso_local global i32 0, align 4
@IFLA_VXLAN_AGEING = common dso_local global i64 0, align 8
@IFLA_VXLAN_PROXY = common dso_local global i64 0, align 8
@VXLAN_F_PROXY = common dso_local global i32 0, align 4
@IFLA_VXLAN_RSC = common dso_local global i64 0, align 8
@VXLAN_F_RSC = common dso_local global i32 0, align 4
@IFLA_VXLAN_L2MISS = common dso_local global i64 0, align 8
@VXLAN_F_L2MISS = common dso_local global i32 0, align 4
@IFLA_VXLAN_L3MISS = common dso_local global i64 0, align 8
@VXLAN_F_L3MISS = common dso_local global i32 0, align 4
@IFLA_VXLAN_LIMIT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"Cannot change limit\00", align 1
@IFLA_VXLAN_COLLECT_METADATA = common dso_local global i64 0, align 8
@VXLAN_F_COLLECT_METADATA = common dso_local global i32 0, align 4
@IFLA_VXLAN_PORT_RANGE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Cannot change port range\00", align 1
@IFLA_VXLAN_PORT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"Cannot change port\00", align 1
@IFLA_VXLAN_UDP_CSUM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"Cannot change UDP_CSUM flag\00", align 1
@VXLAN_F_UDP_ZERO_CSUM_TX = common dso_local global i32 0, align 4
@IFLA_VXLAN_UDP_ZERO_CSUM6_TX = common dso_local global i64 0, align 8
@VXLAN_F_UDP_ZERO_CSUM6_TX = common dso_local global i32 0, align 4
@IFLA_VXLAN_UDP_ZERO_CSUM6_RX = common dso_local global i64 0, align 8
@VXLAN_F_UDP_ZERO_CSUM6_RX = common dso_local global i32 0, align 4
@IFLA_VXLAN_REMCSUM_TX = common dso_local global i64 0, align 8
@VXLAN_F_REMCSUM_TX = common dso_local global i32 0, align 4
@IFLA_VXLAN_REMCSUM_RX = common dso_local global i64 0, align 8
@VXLAN_F_REMCSUM_RX = common dso_local global i32 0, align 4
@IFLA_VXLAN_GBP = common dso_local global i64 0, align 8
@VXLAN_F_GBP = common dso_local global i32 0, align 4
@IFLA_VXLAN_GPE = common dso_local global i64 0, align 8
@VXLAN_F_GPE = common dso_local global i32 0, align 4
@IFLA_VXLAN_REMCSUM_NOPARTIAL = common dso_local global i64 0, align 8
@VXLAN_F_REMCSUM_NOPARTIAL = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"Cannot change mtu\00", align 1
@IFLA_VXLAN_DF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr**, %struct.net_device*, %struct.vxlan_config*, i32, %struct.netlink_ext_ack*)* @vxlan_nl2conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_nl2conf(%struct.nlattr** %0, %struct.nlattr** %1, %struct.net_device* %2, %struct.vxlan_config* %3, i32 %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.vxlan_config*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.vxlan_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.ifla_vxlan_port_range*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %8, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %9, align 8
  store %struct.net_device* %2, %struct.net_device** %10, align 8
  store %struct.vxlan_config* %3, %struct.vxlan_config** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %18 = load %struct.net_device*, %struct.net_device** %10, align 8
  %19 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %18)
  store %struct.vxlan_dev* %19, %struct.vxlan_dev** %14, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %21 = call i32 @memset(%struct.vxlan_config* %20, i32 0, i32 144)
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %6
  %25 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %26 = load %struct.vxlan_dev*, %struct.vxlan_dev** %14, align 8
  %27 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %26, i32 0, i32 0
  %28 = call i32 @memcpy(%struct.vxlan_config* %25, i32* %27, i32 144)
  br label %29

29:                                               ; preds = %24, %6
  %30 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %31 = load i64, i64* @IFLA_VXLAN_ID, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %35, label %68

35:                                               ; preds = %29
  %36 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %37 = load i64, i64* @IFLA_VXLAN_ID, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = call i8* @nla_get_u32(%struct.nlattr* %39)
  %41 = call i64 @cpu_to_be32(i8* %40)
  store i64 %41, i64* %16, align 8
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %35
  %45 = load i64, i64* %16, align 8
  %46 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %47 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %52 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %53 = load i64, i64* @IFLA_VXLAN_ID, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %52, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %51, %struct.nlattr* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @EOPNOTSUPP, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %772

59:                                               ; preds = %44, %35
  %60 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %61 = load i64, i64* @IFLA_VXLAN_ID, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i8* @nla_get_u32(%struct.nlattr* %63)
  %65 = call i64 @cpu_to_be32(i8* %64)
  %66 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %67 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %59, %29
  %69 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %70 = load i64, i64* @IFLA_VXLAN_GROUP, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %69, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = icmp ne %struct.nlattr* %72, null
  br i1 %73, label %74, label %110

74:                                               ; preds = %68
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %79 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %78, i32 0, i32 14
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AF_INET, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %87 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %88 = load i64, i64* @IFLA_VXLAN_GROUP, align 8
  %89 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %87, i64 %88
  %90 = load %struct.nlattr*, %struct.nlattr** %89, align 8
  %91 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %86, %struct.nlattr* %90, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @EOPNOTSUPP, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %7, align 4
  br label %772

94:                                               ; preds = %77, %74
  %95 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %96 = load i64, i64* @IFLA_VXLAN_GROUP, align 8
  %97 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %95, i64 %96
  %98 = load %struct.nlattr*, %struct.nlattr** %97, align 8
  %99 = call i8* @nla_get_in_addr(%struct.nlattr* %98)
  %100 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %101 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %100, i32 0, i32 14
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i8* %99, i8** %104, align 8
  %105 = load i64, i64* @AF_INET, align 8
  %106 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %107 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %106, i32 0, i32 14
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  store i64 %105, i64* %109, align 8
  br label %165

110:                                              ; preds = %68
  %111 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %112 = load i64, i64* @IFLA_VXLAN_GROUP6, align 8
  %113 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %111, i64 %112
  %114 = load %struct.nlattr*, %struct.nlattr** %113, align 8
  %115 = icmp ne %struct.nlattr* %114, null
  br i1 %115, label %116, label %164

116:                                              ; preds = %110
  %117 = load i32, i32* @CONFIG_IPV6, align 4
  %118 = call i32 @IS_ENABLED(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %116
  %121 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %122 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %123 = load i64, i64* @IFLA_VXLAN_GROUP6, align 8
  %124 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %122, i64 %123
  %125 = load %struct.nlattr*, %struct.nlattr** %124, align 8
  %126 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %121, %struct.nlattr* %125, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %127 = load i32, i32* @EPFNOSUPPORT, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %7, align 4
  br label %772

129:                                              ; preds = %116
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %129
  %133 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %134 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %133, i32 0, i32 14
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @AF_INET6, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %132
  %141 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %142 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %143 = load i64, i64* @IFLA_VXLAN_GROUP6, align 8
  %144 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %142, i64 %143
  %145 = load %struct.nlattr*, %struct.nlattr** %144, align 8
  %146 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %141, %struct.nlattr* %145, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %147 = load i32, i32* @EOPNOTSUPP, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %7, align 4
  br label %772

149:                                              ; preds = %132, %129
  %150 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %151 = load i64, i64* @IFLA_VXLAN_GROUP6, align 8
  %152 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %150, i64 %151
  %153 = load %struct.nlattr*, %struct.nlattr** %152, align 8
  %154 = call i8* @nla_get_in6_addr(%struct.nlattr* %153)
  %155 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %156 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %155, i32 0, i32 14
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  store i8* %154, i8** %158, align 8
  %159 = load i64, i64* @AF_INET6, align 8
  %160 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %161 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %160, i32 0, i32 14
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  store i64 %159, i64* %163, align 8
  br label %164

164:                                              ; preds = %149, %110
  br label %165

165:                                              ; preds = %164, %94
  %166 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %167 = load i64, i64* @IFLA_VXLAN_LOCAL, align 8
  %168 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %166, i64 %167
  %169 = load %struct.nlattr*, %struct.nlattr** %168, align 8
  %170 = icmp ne %struct.nlattr* %169, null
  br i1 %170, label %171, label %207

171:                                              ; preds = %165
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %171
  %175 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %176 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %175, i32 0, i32 13
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @AF_INET, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %174
  %183 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %184 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %185 = load i64, i64* @IFLA_VXLAN_LOCAL, align 8
  %186 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %184, i64 %185
  %187 = load %struct.nlattr*, %struct.nlattr** %186, align 8
  %188 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %183, %struct.nlattr* %187, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %189 = load i32, i32* @EOPNOTSUPP, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %7, align 4
  br label %772

191:                                              ; preds = %174, %171
  %192 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %193 = load i64, i64* @IFLA_VXLAN_LOCAL, align 8
  %194 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %192, i64 %193
  %195 = load %struct.nlattr*, %struct.nlattr** %194, align 8
  %196 = call i8* @nla_get_in_addr(%struct.nlattr* %195)
  %197 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %198 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %197, i32 0, i32 13
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  store i8* %196, i8** %201, align 8
  %202 = load i64, i64* @AF_INET, align 8
  %203 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %204 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %203, i32 0, i32 13
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  store i64 %202, i64* %206, align 8
  br label %262

207:                                              ; preds = %165
  %208 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %209 = load i64, i64* @IFLA_VXLAN_LOCAL6, align 8
  %210 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %208, i64 %209
  %211 = load %struct.nlattr*, %struct.nlattr** %210, align 8
  %212 = icmp ne %struct.nlattr* %211, null
  br i1 %212, label %213, label %261

213:                                              ; preds = %207
  %214 = load i32, i32* @CONFIG_IPV6, align 4
  %215 = call i32 @IS_ENABLED(i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %226, label %217

217:                                              ; preds = %213
  %218 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %219 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %220 = load i64, i64* @IFLA_VXLAN_LOCAL6, align 8
  %221 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %219, i64 %220
  %222 = load %struct.nlattr*, %struct.nlattr** %221, align 8
  %223 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %218, %struct.nlattr* %222, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %224 = load i32, i32* @EPFNOSUPPORT, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %7, align 4
  br label %772

226:                                              ; preds = %213
  %227 = load i32, i32* %12, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %246

229:                                              ; preds = %226
  %230 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %231 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %230, i32 0, i32 13
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @AF_INET6, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %246

237:                                              ; preds = %229
  %238 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %239 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %240 = load i64, i64* @IFLA_VXLAN_LOCAL6, align 8
  %241 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %239, i64 %240
  %242 = load %struct.nlattr*, %struct.nlattr** %241, align 8
  %243 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %238, %struct.nlattr* %242, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %244 = load i32, i32* @EOPNOTSUPP, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %7, align 4
  br label %772

246:                                              ; preds = %229, %226
  %247 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %248 = load i64, i64* @IFLA_VXLAN_LOCAL6, align 8
  %249 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %247, i64 %248
  %250 = load %struct.nlattr*, %struct.nlattr** %249, align 8
  %251 = call i8* @nla_get_in6_addr(%struct.nlattr* %250)
  %252 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %253 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %252, i32 0, i32 13
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 0
  store i8* %251, i8** %255, align 8
  %256 = load i64, i64* @AF_INET6, align 8
  %257 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %258 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %257, i32 0, i32 13
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 0
  store i64 %256, i64* %260, align 8
  br label %261

261:                                              ; preds = %246, %207
  br label %262

262:                                              ; preds = %261, %191
  %263 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %264 = load i64, i64* @IFLA_VXLAN_LINK, align 8
  %265 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %263, i64 %264
  %266 = load %struct.nlattr*, %struct.nlattr** %265, align 8
  %267 = icmp ne %struct.nlattr* %266, null
  br i1 %267, label %268, label %276

268:                                              ; preds = %262
  %269 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %270 = load i64, i64* @IFLA_VXLAN_LINK, align 8
  %271 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %269, i64 %270
  %272 = load %struct.nlattr*, %struct.nlattr** %271, align 8
  %273 = call i8* @nla_get_u32(%struct.nlattr* %272)
  %274 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %275 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %274, i32 0, i32 12
  store i8* %273, i8** %275, align 8
  br label %276

276:                                              ; preds = %268, %262
  %277 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %278 = load i64, i64* @IFLA_VXLAN_TOS, align 8
  %279 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %277, i64 %278
  %280 = load %struct.nlattr*, %struct.nlattr** %279, align 8
  %281 = icmp ne %struct.nlattr* %280, null
  br i1 %281, label %282, label %290

282:                                              ; preds = %276
  %283 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %284 = load i64, i64* @IFLA_VXLAN_TOS, align 8
  %285 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %283, i64 %284
  %286 = load %struct.nlattr*, %struct.nlattr** %285, align 8
  %287 = call i8* @nla_get_u8(%struct.nlattr* %286)
  %288 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %289 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %288, i32 0, i32 11
  store i8* %287, i8** %289, align 8
  br label %290

290:                                              ; preds = %282, %276
  %291 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %292 = load i64, i64* @IFLA_VXLAN_TTL, align 8
  %293 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %291, i64 %292
  %294 = load %struct.nlattr*, %struct.nlattr** %293, align 8
  %295 = icmp ne %struct.nlattr* %294, null
  br i1 %295, label %296, label %304

296:                                              ; preds = %290
  %297 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %298 = load i64, i64* @IFLA_VXLAN_TTL, align 8
  %299 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %297, i64 %298
  %300 = load %struct.nlattr*, %struct.nlattr** %299, align 8
  %301 = call i8* @nla_get_u8(%struct.nlattr* %300)
  %302 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %303 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %302, i32 0, i32 10
  store i8* %301, i8** %303, align 8
  br label %304

304:                                              ; preds = %296, %290
  %305 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %306 = load i64, i64* @IFLA_VXLAN_TTL_INHERIT, align 8
  %307 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %305, i64 %306
  %308 = load %struct.nlattr*, %struct.nlattr** %307, align 8
  %309 = icmp ne %struct.nlattr* %308, null
  br i1 %309, label %310, label %323

310:                                              ; preds = %304
  %311 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %312 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %313 = load i64, i64* @IFLA_VXLAN_TTL_INHERIT, align 8
  %314 = load i32, i32* @VXLAN_F_TTL_INHERIT, align 4
  %315 = load i32, i32* %12, align 4
  %316 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %317 = call i32 @vxlan_nl2flag(%struct.vxlan_config* %311, %struct.nlattr** %312, i64 %313, i32 %314, i32 %315, i32 0, %struct.netlink_ext_ack* %316)
  store i32 %317, i32* %15, align 4
  %318 = load i32, i32* %15, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %310
  %321 = load i32, i32* %15, align 4
  store i32 %321, i32* %7, align 4
  br label %772

322:                                              ; preds = %310
  br label %323

323:                                              ; preds = %322, %304
  %324 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %325 = load i64, i64* @IFLA_VXLAN_LABEL, align 8
  %326 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %324, i64 %325
  %327 = load %struct.nlattr*, %struct.nlattr** %326, align 8
  %328 = icmp ne %struct.nlattr* %327, null
  br i1 %328, label %329, label %339

329:                                              ; preds = %323
  %330 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %331 = load i64, i64* @IFLA_VXLAN_LABEL, align 8
  %332 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %330, i64 %331
  %333 = load %struct.nlattr*, %struct.nlattr** %332, align 8
  %334 = call i32 @nla_get_be32(%struct.nlattr* %333)
  %335 = load i32, i32* @IPV6_FLOWLABEL_MASK, align 4
  %336 = and i32 %334, %335
  %337 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %338 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %337, i32 0, i32 1
  store i32 %336, i32* %338, align 8
  br label %339

339:                                              ; preds = %329, %323
  %340 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %341 = load i64, i64* @IFLA_VXLAN_LEARNING, align 8
  %342 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %340, i64 %341
  %343 = load %struct.nlattr*, %struct.nlattr** %342, align 8
  %344 = icmp ne %struct.nlattr* %343, null
  br i1 %344, label %345, label %358

345:                                              ; preds = %339
  %346 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %347 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %348 = load i64, i64* @IFLA_VXLAN_LEARNING, align 8
  %349 = load i32, i32* @VXLAN_F_LEARN, align 4
  %350 = load i32, i32* %12, align 4
  %351 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %352 = call i32 @vxlan_nl2flag(%struct.vxlan_config* %346, %struct.nlattr** %347, i64 %348, i32 %349, i32 %350, i32 1, %struct.netlink_ext_ack* %351)
  store i32 %352, i32* %15, align 4
  %353 = load i32, i32* %15, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %345
  %356 = load i32, i32* %15, align 4
  store i32 %356, i32* %7, align 4
  br label %772

357:                                              ; preds = %345
  br label %368

358:                                              ; preds = %339
  %359 = load i32, i32* %12, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %367, label %361

361:                                              ; preds = %358
  %362 = load i32, i32* @VXLAN_F_LEARN, align 4
  %363 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %364 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %363, i32 0, i32 4
  %365 = load i32, i32* %364, align 8
  %366 = or i32 %365, %362
  store i32 %366, i32* %364, align 8
  br label %367

367:                                              ; preds = %361, %358
  br label %368

368:                                              ; preds = %367, %357
  %369 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %370 = load i64, i64* @IFLA_VXLAN_AGEING, align 8
  %371 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %369, i64 %370
  %372 = load %struct.nlattr*, %struct.nlattr** %371, align 8
  %373 = icmp ne %struct.nlattr* %372, null
  br i1 %373, label %374, label %382

374:                                              ; preds = %368
  %375 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %376 = load i64, i64* @IFLA_VXLAN_AGEING, align 8
  %377 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %375, i64 %376
  %378 = load %struct.nlattr*, %struct.nlattr** %377, align 8
  %379 = call i8* @nla_get_u32(%struct.nlattr* %378)
  %380 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %381 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %380, i32 0, i32 9
  store i8* %379, i8** %381, align 8
  br label %382

382:                                              ; preds = %374, %368
  %383 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %384 = load i64, i64* @IFLA_VXLAN_PROXY, align 8
  %385 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %383, i64 %384
  %386 = load %struct.nlattr*, %struct.nlattr** %385, align 8
  %387 = icmp ne %struct.nlattr* %386, null
  br i1 %387, label %388, label %401

388:                                              ; preds = %382
  %389 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %390 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %391 = load i64, i64* @IFLA_VXLAN_PROXY, align 8
  %392 = load i32, i32* @VXLAN_F_PROXY, align 4
  %393 = load i32, i32* %12, align 4
  %394 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %395 = call i32 @vxlan_nl2flag(%struct.vxlan_config* %389, %struct.nlattr** %390, i64 %391, i32 %392, i32 %393, i32 0, %struct.netlink_ext_ack* %394)
  store i32 %395, i32* %15, align 4
  %396 = load i32, i32* %15, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %388
  %399 = load i32, i32* %15, align 4
  store i32 %399, i32* %7, align 4
  br label %772

400:                                              ; preds = %388
  br label %401

401:                                              ; preds = %400, %382
  %402 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %403 = load i64, i64* @IFLA_VXLAN_RSC, align 8
  %404 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %402, i64 %403
  %405 = load %struct.nlattr*, %struct.nlattr** %404, align 8
  %406 = icmp ne %struct.nlattr* %405, null
  br i1 %406, label %407, label %420

407:                                              ; preds = %401
  %408 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %409 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %410 = load i64, i64* @IFLA_VXLAN_RSC, align 8
  %411 = load i32, i32* @VXLAN_F_RSC, align 4
  %412 = load i32, i32* %12, align 4
  %413 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %414 = call i32 @vxlan_nl2flag(%struct.vxlan_config* %408, %struct.nlattr** %409, i64 %410, i32 %411, i32 %412, i32 0, %struct.netlink_ext_ack* %413)
  store i32 %414, i32* %15, align 4
  %415 = load i32, i32* %15, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %419

417:                                              ; preds = %407
  %418 = load i32, i32* %15, align 4
  store i32 %418, i32* %7, align 4
  br label %772

419:                                              ; preds = %407
  br label %420

420:                                              ; preds = %419, %401
  %421 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %422 = load i64, i64* @IFLA_VXLAN_L2MISS, align 8
  %423 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %421, i64 %422
  %424 = load %struct.nlattr*, %struct.nlattr** %423, align 8
  %425 = icmp ne %struct.nlattr* %424, null
  br i1 %425, label %426, label %439

426:                                              ; preds = %420
  %427 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %428 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %429 = load i64, i64* @IFLA_VXLAN_L2MISS, align 8
  %430 = load i32, i32* @VXLAN_F_L2MISS, align 4
  %431 = load i32, i32* %12, align 4
  %432 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %433 = call i32 @vxlan_nl2flag(%struct.vxlan_config* %427, %struct.nlattr** %428, i64 %429, i32 %430, i32 %431, i32 0, %struct.netlink_ext_ack* %432)
  store i32 %433, i32* %15, align 4
  %434 = load i32, i32* %15, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %426
  %437 = load i32, i32* %15, align 4
  store i32 %437, i32* %7, align 4
  br label %772

438:                                              ; preds = %426
  br label %439

439:                                              ; preds = %438, %420
  %440 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %441 = load i64, i64* @IFLA_VXLAN_L3MISS, align 8
  %442 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %440, i64 %441
  %443 = load %struct.nlattr*, %struct.nlattr** %442, align 8
  %444 = icmp ne %struct.nlattr* %443, null
  br i1 %444, label %445, label %458

445:                                              ; preds = %439
  %446 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %447 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %448 = load i64, i64* @IFLA_VXLAN_L3MISS, align 8
  %449 = load i32, i32* @VXLAN_F_L3MISS, align 4
  %450 = load i32, i32* %12, align 4
  %451 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %452 = call i32 @vxlan_nl2flag(%struct.vxlan_config* %446, %struct.nlattr** %447, i64 %448, i32 %449, i32 %450, i32 0, %struct.netlink_ext_ack* %451)
  store i32 %452, i32* %15, align 4
  %453 = load i32, i32* %15, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %457

455:                                              ; preds = %445
  %456 = load i32, i32* %15, align 4
  store i32 %456, i32* %7, align 4
  br label %772

457:                                              ; preds = %445
  br label %458

458:                                              ; preds = %457, %439
  %459 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %460 = load i64, i64* @IFLA_VXLAN_LIMIT, align 8
  %461 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %459, i64 %460
  %462 = load %struct.nlattr*, %struct.nlattr** %461, align 8
  %463 = icmp ne %struct.nlattr* %462, null
  br i1 %463, label %464, label %484

464:                                              ; preds = %458
  %465 = load i32, i32* %12, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %476

467:                                              ; preds = %464
  %468 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %469 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %470 = load i64, i64* @IFLA_VXLAN_LIMIT, align 8
  %471 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %469, i64 %470
  %472 = load %struct.nlattr*, %struct.nlattr** %471, align 8
  %473 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %468, %struct.nlattr* %472, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %474 = load i32, i32* @EOPNOTSUPP, align 4
  %475 = sub nsw i32 0, %474
  store i32 %475, i32* %7, align 4
  br label %772

476:                                              ; preds = %464
  %477 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %478 = load i64, i64* @IFLA_VXLAN_LIMIT, align 8
  %479 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %477, i64 %478
  %480 = load %struct.nlattr*, %struct.nlattr** %479, align 8
  %481 = call i8* @nla_get_u32(%struct.nlattr* %480)
  %482 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %483 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %482, i32 0, i32 8
  store i8* %481, i8** %483, align 8
  br label %484

484:                                              ; preds = %476, %458
  %485 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %486 = load i64, i64* @IFLA_VXLAN_COLLECT_METADATA, align 8
  %487 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %485, i64 %486
  %488 = load %struct.nlattr*, %struct.nlattr** %487, align 8
  %489 = icmp ne %struct.nlattr* %488, null
  br i1 %489, label %490, label %503

490:                                              ; preds = %484
  %491 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %492 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %493 = load i64, i64* @IFLA_VXLAN_COLLECT_METADATA, align 8
  %494 = load i32, i32* @VXLAN_F_COLLECT_METADATA, align 4
  %495 = load i32, i32* %12, align 4
  %496 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %497 = call i32 @vxlan_nl2flag(%struct.vxlan_config* %491, %struct.nlattr** %492, i64 %493, i32 %494, i32 %495, i32 0, %struct.netlink_ext_ack* %496)
  store i32 %497, i32* %15, align 4
  %498 = load i32, i32* %15, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %502

500:                                              ; preds = %490
  %501 = load i32, i32* %15, align 4
  store i32 %501, i32* %7, align 4
  br label %772

502:                                              ; preds = %490
  br label %503

503:                                              ; preds = %502, %484
  %504 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %505 = load i64, i64* @IFLA_VXLAN_PORT_RANGE, align 8
  %506 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %504, i64 %505
  %507 = load %struct.nlattr*, %struct.nlattr** %506, align 8
  %508 = icmp ne %struct.nlattr* %507, null
  br i1 %508, label %509, label %540

509:                                              ; preds = %503
  %510 = load i32, i32* %12, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %530, label %512

512:                                              ; preds = %509
  %513 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %514 = load i64, i64* @IFLA_VXLAN_PORT_RANGE, align 8
  %515 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %513, i64 %514
  %516 = load %struct.nlattr*, %struct.nlattr** %515, align 8
  %517 = call %struct.ifla_vxlan_port_range* @nla_data(%struct.nlattr* %516)
  store %struct.ifla_vxlan_port_range* %517, %struct.ifla_vxlan_port_range** %17, align 8
  %518 = load %struct.ifla_vxlan_port_range*, %struct.ifla_vxlan_port_range** %17, align 8
  %519 = getelementptr inbounds %struct.ifla_vxlan_port_range, %struct.ifla_vxlan_port_range* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = call i8* @ntohs(i32 %520)
  %522 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %523 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %522, i32 0, i32 7
  store i8* %521, i8** %523, align 8
  %524 = load %struct.ifla_vxlan_port_range*, %struct.ifla_vxlan_port_range** %17, align 8
  %525 = getelementptr inbounds %struct.ifla_vxlan_port_range, %struct.ifla_vxlan_port_range* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 4
  %527 = call i8* @ntohs(i32 %526)
  %528 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %529 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %528, i32 0, i32 6
  store i8* %527, i8** %529, align 8
  br label %539

530:                                              ; preds = %509
  %531 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %532 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %533 = load i64, i64* @IFLA_VXLAN_PORT_RANGE, align 8
  %534 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %532, i64 %533
  %535 = load %struct.nlattr*, %struct.nlattr** %534, align 8
  %536 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %531, %struct.nlattr* %535, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %537 = load i32, i32* @EOPNOTSUPP, align 4
  %538 = sub nsw i32 0, %537
  store i32 %538, i32* %7, align 4
  br label %772

539:                                              ; preds = %512
  br label %540

540:                                              ; preds = %539, %503
  %541 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %542 = load i64, i64* @IFLA_VXLAN_PORT, align 8
  %543 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %541, i64 %542
  %544 = load %struct.nlattr*, %struct.nlattr** %543, align 8
  %545 = icmp ne %struct.nlattr* %544, null
  br i1 %545, label %546, label %566

546:                                              ; preds = %540
  %547 = load i32, i32* %12, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %558

549:                                              ; preds = %546
  %550 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %551 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %552 = load i64, i64* @IFLA_VXLAN_PORT, align 8
  %553 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %551, i64 %552
  %554 = load %struct.nlattr*, %struct.nlattr** %553, align 8
  %555 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %550, %struct.nlattr* %554, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %556 = load i32, i32* @EOPNOTSUPP, align 4
  %557 = sub nsw i32 0, %556
  store i32 %557, i32* %7, align 4
  br label %772

558:                                              ; preds = %546
  %559 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %560 = load i64, i64* @IFLA_VXLAN_PORT, align 8
  %561 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %559, i64 %560
  %562 = load %struct.nlattr*, %struct.nlattr** %561, align 8
  %563 = call i32 @nla_get_be16(%struct.nlattr* %562)
  %564 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %565 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %564, i32 0, i32 5
  store i32 %563, i32* %565, align 4
  br label %566

566:                                              ; preds = %558, %540
  %567 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %568 = load i64, i64* @IFLA_VXLAN_UDP_CSUM, align 8
  %569 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %567, i64 %568
  %570 = load %struct.nlattr*, %struct.nlattr** %569, align 8
  %571 = icmp ne %struct.nlattr* %570, null
  br i1 %571, label %572, label %598

572:                                              ; preds = %566
  %573 = load i32, i32* %12, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %584

575:                                              ; preds = %572
  %576 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %577 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %578 = load i64, i64* @IFLA_VXLAN_UDP_CSUM, align 8
  %579 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %577, i64 %578
  %580 = load %struct.nlattr*, %struct.nlattr** %579, align 8
  %581 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %576, %struct.nlattr* %580, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %582 = load i32, i32* @EOPNOTSUPP, align 4
  %583 = sub nsw i32 0, %582
  store i32 %583, i32* %7, align 4
  br label %772

584:                                              ; preds = %572
  %585 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %586 = load i64, i64* @IFLA_VXLAN_UDP_CSUM, align 8
  %587 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %585, i64 %586
  %588 = load %struct.nlattr*, %struct.nlattr** %587, align 8
  %589 = call i8* @nla_get_u8(%struct.nlattr* %588)
  %590 = icmp ne i8* %589, null
  br i1 %590, label %597, label %591

591:                                              ; preds = %584
  %592 = load i32, i32* @VXLAN_F_UDP_ZERO_CSUM_TX, align 4
  %593 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %594 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %593, i32 0, i32 4
  %595 = load i32, i32* %594, align 8
  %596 = or i32 %595, %592
  store i32 %596, i32* %594, align 8
  br label %597

597:                                              ; preds = %591, %584
  br label %598

598:                                              ; preds = %597, %566
  %599 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %600 = load i64, i64* @IFLA_VXLAN_UDP_ZERO_CSUM6_TX, align 8
  %601 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %599, i64 %600
  %602 = load %struct.nlattr*, %struct.nlattr** %601, align 8
  %603 = icmp ne %struct.nlattr* %602, null
  br i1 %603, label %604, label %617

604:                                              ; preds = %598
  %605 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %606 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %607 = load i64, i64* @IFLA_VXLAN_UDP_ZERO_CSUM6_TX, align 8
  %608 = load i32, i32* @VXLAN_F_UDP_ZERO_CSUM6_TX, align 4
  %609 = load i32, i32* %12, align 4
  %610 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %611 = call i32 @vxlan_nl2flag(%struct.vxlan_config* %605, %struct.nlattr** %606, i64 %607, i32 %608, i32 %609, i32 0, %struct.netlink_ext_ack* %610)
  store i32 %611, i32* %15, align 4
  %612 = load i32, i32* %15, align 4
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %616

614:                                              ; preds = %604
  %615 = load i32, i32* %15, align 4
  store i32 %615, i32* %7, align 4
  br label %772

616:                                              ; preds = %604
  br label %617

617:                                              ; preds = %616, %598
  %618 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %619 = load i64, i64* @IFLA_VXLAN_UDP_ZERO_CSUM6_RX, align 8
  %620 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %618, i64 %619
  %621 = load %struct.nlattr*, %struct.nlattr** %620, align 8
  %622 = icmp ne %struct.nlattr* %621, null
  br i1 %622, label %623, label %636

623:                                              ; preds = %617
  %624 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %625 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %626 = load i64, i64* @IFLA_VXLAN_UDP_ZERO_CSUM6_RX, align 8
  %627 = load i32, i32* @VXLAN_F_UDP_ZERO_CSUM6_RX, align 4
  %628 = load i32, i32* %12, align 4
  %629 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %630 = call i32 @vxlan_nl2flag(%struct.vxlan_config* %624, %struct.nlattr** %625, i64 %626, i32 %627, i32 %628, i32 0, %struct.netlink_ext_ack* %629)
  store i32 %630, i32* %15, align 4
  %631 = load i32, i32* %15, align 4
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %635

633:                                              ; preds = %623
  %634 = load i32, i32* %15, align 4
  store i32 %634, i32* %7, align 4
  br label %772

635:                                              ; preds = %623
  br label %636

636:                                              ; preds = %635, %617
  %637 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %638 = load i64, i64* @IFLA_VXLAN_REMCSUM_TX, align 8
  %639 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %637, i64 %638
  %640 = load %struct.nlattr*, %struct.nlattr** %639, align 8
  %641 = icmp ne %struct.nlattr* %640, null
  br i1 %641, label %642, label %655

642:                                              ; preds = %636
  %643 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %644 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %645 = load i64, i64* @IFLA_VXLAN_REMCSUM_TX, align 8
  %646 = load i32, i32* @VXLAN_F_REMCSUM_TX, align 4
  %647 = load i32, i32* %12, align 4
  %648 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %649 = call i32 @vxlan_nl2flag(%struct.vxlan_config* %643, %struct.nlattr** %644, i64 %645, i32 %646, i32 %647, i32 0, %struct.netlink_ext_ack* %648)
  store i32 %649, i32* %15, align 4
  %650 = load i32, i32* %15, align 4
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %652, label %654

652:                                              ; preds = %642
  %653 = load i32, i32* %15, align 4
  store i32 %653, i32* %7, align 4
  br label %772

654:                                              ; preds = %642
  br label %655

655:                                              ; preds = %654, %636
  %656 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %657 = load i64, i64* @IFLA_VXLAN_REMCSUM_RX, align 8
  %658 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %656, i64 %657
  %659 = load %struct.nlattr*, %struct.nlattr** %658, align 8
  %660 = icmp ne %struct.nlattr* %659, null
  br i1 %660, label %661, label %674

661:                                              ; preds = %655
  %662 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %663 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %664 = load i64, i64* @IFLA_VXLAN_REMCSUM_RX, align 8
  %665 = load i32, i32* @VXLAN_F_REMCSUM_RX, align 4
  %666 = load i32, i32* %12, align 4
  %667 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %668 = call i32 @vxlan_nl2flag(%struct.vxlan_config* %662, %struct.nlattr** %663, i64 %664, i32 %665, i32 %666, i32 0, %struct.netlink_ext_ack* %667)
  store i32 %668, i32* %15, align 4
  %669 = load i32, i32* %15, align 4
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %671, label %673

671:                                              ; preds = %661
  %672 = load i32, i32* %15, align 4
  store i32 %672, i32* %7, align 4
  br label %772

673:                                              ; preds = %661
  br label %674

674:                                              ; preds = %673, %655
  %675 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %676 = load i64, i64* @IFLA_VXLAN_GBP, align 8
  %677 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %675, i64 %676
  %678 = load %struct.nlattr*, %struct.nlattr** %677, align 8
  %679 = icmp ne %struct.nlattr* %678, null
  br i1 %679, label %680, label %693

680:                                              ; preds = %674
  %681 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %682 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %683 = load i64, i64* @IFLA_VXLAN_GBP, align 8
  %684 = load i32, i32* @VXLAN_F_GBP, align 4
  %685 = load i32, i32* %12, align 4
  %686 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %687 = call i32 @vxlan_nl2flag(%struct.vxlan_config* %681, %struct.nlattr** %682, i64 %683, i32 %684, i32 %685, i32 0, %struct.netlink_ext_ack* %686)
  store i32 %687, i32* %15, align 4
  %688 = load i32, i32* %15, align 4
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %692

690:                                              ; preds = %680
  %691 = load i32, i32* %15, align 4
  store i32 %691, i32* %7, align 4
  br label %772

692:                                              ; preds = %680
  br label %693

693:                                              ; preds = %692, %674
  %694 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %695 = load i64, i64* @IFLA_VXLAN_GPE, align 8
  %696 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %694, i64 %695
  %697 = load %struct.nlattr*, %struct.nlattr** %696, align 8
  %698 = icmp ne %struct.nlattr* %697, null
  br i1 %698, label %699, label %712

699:                                              ; preds = %693
  %700 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %701 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %702 = load i64, i64* @IFLA_VXLAN_GPE, align 8
  %703 = load i32, i32* @VXLAN_F_GPE, align 4
  %704 = load i32, i32* %12, align 4
  %705 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %706 = call i32 @vxlan_nl2flag(%struct.vxlan_config* %700, %struct.nlattr** %701, i64 %702, i32 %703, i32 %704, i32 0, %struct.netlink_ext_ack* %705)
  store i32 %706, i32* %15, align 4
  %707 = load i32, i32* %15, align 4
  %708 = icmp ne i32 %707, 0
  br i1 %708, label %709, label %711

709:                                              ; preds = %699
  %710 = load i32, i32* %15, align 4
  store i32 %710, i32* %7, align 4
  br label %772

711:                                              ; preds = %699
  br label %712

712:                                              ; preds = %711, %693
  %713 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %714 = load i64, i64* @IFLA_VXLAN_REMCSUM_NOPARTIAL, align 8
  %715 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %713, i64 %714
  %716 = load %struct.nlattr*, %struct.nlattr** %715, align 8
  %717 = icmp ne %struct.nlattr* %716, null
  br i1 %717, label %718, label %731

718:                                              ; preds = %712
  %719 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %720 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %721 = load i64, i64* @IFLA_VXLAN_REMCSUM_NOPARTIAL, align 8
  %722 = load i32, i32* @VXLAN_F_REMCSUM_NOPARTIAL, align 4
  %723 = load i32, i32* %12, align 4
  %724 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %725 = call i32 @vxlan_nl2flag(%struct.vxlan_config* %719, %struct.nlattr** %720, i64 %721, i32 %722, i32 %723, i32 0, %struct.netlink_ext_ack* %724)
  store i32 %725, i32* %15, align 4
  %726 = load i32, i32* %15, align 4
  %727 = icmp ne i32 %726, 0
  br i1 %727, label %728, label %730

728:                                              ; preds = %718
  %729 = load i32, i32* %15, align 4
  store i32 %729, i32* %7, align 4
  br label %772

730:                                              ; preds = %718
  br label %731

731:                                              ; preds = %730, %712
  %732 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %733 = load i64, i64* @IFLA_MTU, align 8
  %734 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %732, i64 %733
  %735 = load %struct.nlattr*, %struct.nlattr** %734, align 8
  %736 = icmp ne %struct.nlattr* %735, null
  br i1 %736, label %737, label %757

737:                                              ; preds = %731
  %738 = load i32, i32* %12, align 4
  %739 = icmp ne i32 %738, 0
  br i1 %739, label %740, label %749

740:                                              ; preds = %737
  %741 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %742 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %743 = load i64, i64* @IFLA_MTU, align 8
  %744 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %742, i64 %743
  %745 = load %struct.nlattr*, %struct.nlattr** %744, align 8
  %746 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %741, %struct.nlattr* %745, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %747 = load i32, i32* @EOPNOTSUPP, align 4
  %748 = sub nsw i32 0, %747
  store i32 %748, i32* %7, align 4
  br label %772

749:                                              ; preds = %737
  %750 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %751 = load i64, i64* @IFLA_MTU, align 8
  %752 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %750, i64 %751
  %753 = load %struct.nlattr*, %struct.nlattr** %752, align 8
  %754 = call i8* @nla_get_u32(%struct.nlattr* %753)
  %755 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %756 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %755, i32 0, i32 3
  store i8* %754, i8** %756, align 8
  br label %757

757:                                              ; preds = %749, %731
  %758 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %759 = load i64, i64* @IFLA_VXLAN_DF, align 8
  %760 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %758, i64 %759
  %761 = load %struct.nlattr*, %struct.nlattr** %760, align 8
  %762 = icmp ne %struct.nlattr* %761, null
  br i1 %762, label %763, label %771

763:                                              ; preds = %757
  %764 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %765 = load i64, i64* @IFLA_VXLAN_DF, align 8
  %766 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %764, i64 %765
  %767 = load %struct.nlattr*, %struct.nlattr** %766, align 8
  %768 = call i8* @nla_get_u8(%struct.nlattr* %767)
  %769 = load %struct.vxlan_config*, %struct.vxlan_config** %11, align 8
  %770 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %769, i32 0, i32 2
  store i8* %768, i8** %770, align 8
  br label %771

771:                                              ; preds = %763, %757
  store i32 0, i32* %7, align 4
  br label %772

772:                                              ; preds = %771, %740, %728, %709, %690, %671, %652, %633, %614, %575, %549, %530, %500, %467, %455, %436, %417, %398, %355, %320, %237, %217, %182, %140, %120, %85, %50
  %773 = load i32, i32* %7, align 4
  ret i32 %773
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.vxlan_config*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.vxlan_config*, i32*, i32) #1

declare dso_local i64 @cpu_to_be32(i8*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*, i8*) #1

declare dso_local i8* @nla_get_in_addr(%struct.nlattr*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i8* @nla_get_in6_addr(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @vxlan_nl2flag(%struct.vxlan_config*, %struct.nlattr**, i64, i32, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local %struct.ifla_vxlan_port_range* @nla_data(%struct.nlattr*) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
