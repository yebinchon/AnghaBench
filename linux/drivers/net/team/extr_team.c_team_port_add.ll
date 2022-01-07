; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_port_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_port_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32, %struct.TYPE_3__*, %struct.net_device* }
%struct.TYPE_3__ = type { i64 }
%struct.net_device = type { i8*, i32, i32, i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.team_port = type { i32, %struct.TYPE_4__, i32, i32, %struct.team*, %struct.net_device* }
%struct.TYPE_4__ = type { i32, i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Loopback device can't be added as a team port\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"Device %s is loopback device. Loopback devices can't be added as a team port\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Device is already a port of a team device\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Device %s is already a port of a team device\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Cannot enslave team device to itself\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Cannot enslave team device to itself\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Device is already an upper device of the team interface\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"Device %s is already an upper device of the team interface\0A\00", align 1
@NETIF_F_VLAN_CHALLENGED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [58 x i8] c"Device is VLAN challenged and team device has VLAN set up\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"Device %s is VLAN challenged and team device has VLAN set up\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [58 x i8] c"Device is up. Set it down before adding it as a team port\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"Device %s is up. Set it down before adding it as a team port\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"Error %d calling dev_set_mtu\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Device %s failed to enter team mode\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Device %s opening failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Failed to add vlan ids to device %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Failed to enable netpoll on device %s\0A\00", align 1
@NETIF_F_LRO = common dso_local global i32 0, align 4
@team_handle_frame = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [41 x i8] c"Device %s failed to register rx_handler\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Device %s failed to set upper link\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"Device %s failed to add per-port options\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [22 x i8] c"Port device %s added\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.team*, %struct.net_device*, %struct.netlink_ext_ack*)* @team_port_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @team_port_add(%struct.team* %0, %struct.net_device* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.team*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.team_port*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.team* %0, %struct.team** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %12 = load %struct.team*, %struct.team** %5, align 8
  %13 = getelementptr inbounds %struct.team, %struct.team* %12, i32 0, i32 2
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IFF_LOOPBACK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %26 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %27, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %355

32:                                               ; preds = %3
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = call i64 @netif_is_team_port(%struct.net_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %38 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %355

44:                                               ; preds = %32
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = icmp eq %struct.net_device* %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %50 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %51 = load %struct.net_device*, %struct.net_device** %8, align 8
  %52 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %355

55:                                               ; preds = %44
  %56 = load %struct.net_device*, %struct.net_device** %8, align 8
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = call i64 @netdev_has_upper_dev(%struct.net_device* %56, %struct.net_device* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %62 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %61, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %63 = load %struct.net_device*, %struct.net_device** %8, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %63, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %355

68:                                               ; preds = %55
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @NETIF_F_VLAN_CHALLENGED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %68
  %76 = load %struct.net_device*, %struct.net_device** %8, align 8
  %77 = call i64 @vlan_uses_dev(%struct.net_device* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %81 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %80, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  %82 = load %struct.net_device*, %struct.net_device** %8, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %82, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @EPERM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %355

87:                                               ; preds = %75, %68
  %88 = load %struct.net_device*, %struct.net_device** %8, align 8
  %89 = load %struct.net_device*, %struct.net_device** %6, align 8
  %90 = call i32 @team_dev_type_check_change(%struct.net_device* %88, %struct.net_device* %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %4, align 4
  br label %355

95:                                               ; preds = %87
  %96 = load %struct.net_device*, %struct.net_device** %6, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @IFF_UP, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %104 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %103, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0))
  %105 = load %struct.net_device*, %struct.net_device** %8, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %105, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* @EBUSY, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %355

110:                                              ; preds = %95
  %111 = load %struct.team*, %struct.team** %5, align 8
  %112 = getelementptr inbounds %struct.team, %struct.team* %111, i32 0, i32 1
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add i64 40, %115
  %117 = load i32, i32* @GFP_KERNEL, align 4
  %118 = call %struct.team_port* @kzalloc(i64 %116, i32 %117)
  store %struct.team_port* %118, %struct.team_port** %9, align 8
  %119 = load %struct.team_port*, %struct.team_port** %9, align 8
  %120 = icmp ne %struct.team_port* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %110
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %355

124:                                              ; preds = %110
  %125 = load %struct.net_device*, %struct.net_device** %6, align 8
  %126 = load %struct.team_port*, %struct.team_port** %9, align 8
  %127 = getelementptr inbounds %struct.team_port, %struct.team_port* %126, i32 0, i32 5
  store %struct.net_device* %125, %struct.net_device** %127, align 8
  %128 = load %struct.team*, %struct.team** %5, align 8
  %129 = load %struct.team_port*, %struct.team_port** %9, align 8
  %130 = getelementptr inbounds %struct.team_port, %struct.team_port* %129, i32 0, i32 4
  store %struct.team* %128, %struct.team** %130, align 8
  %131 = load %struct.team_port*, %struct.team_port** %9, align 8
  %132 = getelementptr inbounds %struct.team_port, %struct.team_port* %131, i32 0, i32 3
  %133 = call i32 @INIT_LIST_HEAD(i32* %132)
  %134 = load %struct.net_device*, %struct.net_device** %6, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.team_port*, %struct.team_port** %9, align 8
  %138 = getelementptr inbounds %struct.team_port, %struct.team_port* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 4
  %140 = load %struct.net_device*, %struct.net_device** %6, align 8
  %141 = load %struct.net_device*, %struct.net_device** %8, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @dev_set_mtu(%struct.net_device* %140, i32 %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %124
  %148 = load %struct.net_device*, %struct.net_device** %8, align 8
  %149 = load i32, i32* %11, align 4
  %150 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %148, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %149)
  br label %351

151:                                              ; preds = %124
  %152 = load %struct.team_port*, %struct.team_port** %9, align 8
  %153 = getelementptr inbounds %struct.team_port, %struct.team_port* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.net_device*, %struct.net_device** %6, align 8
  %157 = getelementptr inbounds %struct.net_device, %struct.net_device* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.net_device*, %struct.net_device** %6, align 8
  %160 = getelementptr inbounds %struct.net_device, %struct.net_device* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @memcpy(i32 %155, i32 %158, i32 %161)
  %163 = load %struct.team*, %struct.team** %5, align 8
  %164 = load %struct.team_port*, %struct.team_port** %9, align 8
  %165 = call i32 @team_port_enter(%struct.team* %163, %struct.team_port* %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %151
  %169 = load %struct.net_device*, %struct.net_device** %8, align 8
  %170 = load i8*, i8** %10, align 8
  %171 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %169, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i8* %170)
  br label %344

172:                                              ; preds = %151
  %173 = load %struct.net_device*, %struct.net_device** %6, align 8
  %174 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %175 = call i32 @dev_open(%struct.net_device* %173, %struct.netlink_ext_ack* %174)
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load %struct.net_device*, %struct.net_device** %8, align 8
  %180 = load i8*, i8** %10, align 8
  %181 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %179, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i8* %180)
  br label %338

182:                                              ; preds = %172
  %183 = load %struct.net_device*, %struct.net_device** %6, align 8
  %184 = load %struct.net_device*, %struct.net_device** %8, align 8
  %185 = call i32 @vlan_vids_add_by_dev(%struct.net_device* %183, %struct.net_device* %184)
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %182
  %189 = load %struct.net_device*, %struct.net_device** %8, align 8
  %190 = load i8*, i8** %10, align 8
  %191 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %189, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i8* %190)
  br label %335

192:                                              ; preds = %182
  %193 = load %struct.team_port*, %struct.team_port** %9, align 8
  %194 = call i32 @team_port_enable_netpoll(%struct.team_port* %193)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load %struct.net_device*, %struct.net_device** %8, align 8
  %199 = load i8*, i8** %10, align 8
  %200 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %198, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i8* %199)
  br label %331

201:                                              ; preds = %192
  %202 = load %struct.net_device*, %struct.net_device** %8, align 8
  %203 = getelementptr inbounds %struct.net_device, %struct.net_device* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @NETIF_F_LRO, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %201
  %209 = load %struct.net_device*, %struct.net_device** %6, align 8
  %210 = call i32 @dev_disable_lro(%struct.net_device* %209)
  br label %211

211:                                              ; preds = %208, %201
  %212 = load %struct.net_device*, %struct.net_device** %6, align 8
  %213 = load i32, i32* @team_handle_frame, align 4
  %214 = load %struct.team_port*, %struct.team_port** %9, align 8
  %215 = call i32 @netdev_rx_handler_register(%struct.net_device* %212, i32 %213, %struct.team_port* %214)
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %211
  %219 = load %struct.net_device*, %struct.net_device** %8, align 8
  %220 = load i8*, i8** %10, align 8
  %221 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %219, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* %220)
  br label %328

222:                                              ; preds = %211
  %223 = load %struct.team*, %struct.team** %5, align 8
  %224 = load %struct.team_port*, %struct.team_port** %9, align 8
  %225 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %226 = call i32 @team_upper_dev_link(%struct.team* %223, %struct.team_port* %224, %struct.netlink_ext_ack* %225)
  store i32 %226, i32* %11, align 4
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %222
  %230 = load %struct.net_device*, %struct.net_device** %8, align 8
  %231 = load i8*, i8** %10, align 8
  %232 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %230, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i8* %231)
  br label %325

233:                                              ; preds = %222
  %234 = load %struct.team*, %struct.team** %5, align 8
  %235 = load %struct.team_port*, %struct.team_port** %9, align 8
  %236 = call i32 @__team_option_inst_add_port(%struct.team* %234, %struct.team_port* %235)
  store i32 %236, i32* %11, align 4
  %237 = load i32, i32* %11, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %233
  %240 = load %struct.net_device*, %struct.net_device** %8, align 8
  %241 = load i8*, i8** %10, align 8
  %242 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %240, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0), i8* %241)
  br label %321

243:                                              ; preds = %233
  %244 = load %struct.net_device*, %struct.net_device** %8, align 8
  %245 = getelementptr inbounds %struct.net_device, %struct.net_device* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @IFF_PROMISC, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %243
  %251 = load %struct.net_device*, %struct.net_device** %6, align 8
  %252 = call i32 @dev_set_promiscuity(%struct.net_device* %251, i32 1)
  store i32 %252, i32* %11, align 4
  %253 = load i32, i32* %11, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  br label %317

256:                                              ; preds = %250
  br label %257

257:                                              ; preds = %256, %243
  %258 = load %struct.net_device*, %struct.net_device** %8, align 8
  %259 = getelementptr inbounds %struct.net_device, %struct.net_device* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @IFF_ALLMULTI, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %281

264:                                              ; preds = %257
  %265 = load %struct.net_device*, %struct.net_device** %6, align 8
  %266 = call i32 @dev_set_allmulti(%struct.net_device* %265, i32 1)
  store i32 %266, i32* %11, align 4
  %267 = load i32, i32* %11, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %264
  %270 = load %struct.net_device*, %struct.net_device** %8, align 8
  %271 = getelementptr inbounds %struct.net_device, %struct.net_device* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @IFF_PROMISC, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %269
  %277 = load %struct.net_device*, %struct.net_device** %6, align 8
  %278 = call i32 @dev_set_promiscuity(%struct.net_device* %277, i32 -1)
  br label %279

279:                                              ; preds = %276, %269
  br label %317

280:                                              ; preds = %264
  br label %281

281:                                              ; preds = %280, %257
  %282 = load %struct.net_device*, %struct.net_device** %8, align 8
  %283 = call i32 @netif_addr_lock_bh(%struct.net_device* %282)
  %284 = load %struct.net_device*, %struct.net_device** %6, align 8
  %285 = load %struct.net_device*, %struct.net_device** %8, align 8
  %286 = call i32 @dev_uc_sync_multiple(%struct.net_device* %284, %struct.net_device* %285)
  %287 = load %struct.net_device*, %struct.net_device** %6, align 8
  %288 = load %struct.net_device*, %struct.net_device** %8, align 8
  %289 = call i32 @dev_mc_sync_multiple(%struct.net_device* %287, %struct.net_device* %288)
  %290 = load %struct.net_device*, %struct.net_device** %8, align 8
  %291 = call i32 @netif_addr_unlock_bh(%struct.net_device* %290)
  %292 = load %struct.team_port*, %struct.team_port** %9, align 8
  %293 = getelementptr inbounds %struct.team_port, %struct.team_port* %292, i32 0, i32 0
  store i32 -1, i32* %293, align 8
  %294 = load %struct.team_port*, %struct.team_port** %9, align 8
  %295 = getelementptr inbounds %struct.team_port, %struct.team_port* %294, i32 0, i32 2
  %296 = load %struct.team*, %struct.team** %5, align 8
  %297 = getelementptr inbounds %struct.team, %struct.team* %296, i32 0, i32 0
  %298 = call i32 @list_add_tail_rcu(i32* %295, i32* %297)
  %299 = load %struct.team*, %struct.team** %5, align 8
  %300 = load %struct.team_port*, %struct.team_port** %9, align 8
  %301 = call i32 @team_port_enable(%struct.team* %299, %struct.team_port* %300)
  %302 = load %struct.team*, %struct.team** %5, align 8
  %303 = call i32 @__team_compute_features(%struct.team* %302)
  %304 = load %struct.team_port*, %struct.team_port** %9, align 8
  %305 = load %struct.net_device*, %struct.net_device** %6, align 8
  %306 = call i32 @netif_oper_up(%struct.net_device* %305)
  %307 = icmp ne i32 %306, 0
  %308 = xor i1 %307, true
  %309 = xor i1 %308, true
  %310 = zext i1 %309 to i32
  %311 = call i32 @__team_port_change_port_added(%struct.team_port* %304, i32 %310)
  %312 = load %struct.team*, %struct.team** %5, align 8
  %313 = call i32 @__team_options_change_check(%struct.team* %312)
  %314 = load %struct.net_device*, %struct.net_device** %8, align 8
  %315 = load i8*, i8** %10, align 8
  %316 = call i32 @netdev_info(%struct.net_device* %314, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8* %315)
  store i32 0, i32* %4, align 4
  br label %355

317:                                              ; preds = %279, %255
  %318 = load %struct.team*, %struct.team** %5, align 8
  %319 = load %struct.team_port*, %struct.team_port** %9, align 8
  %320 = call i32 @__team_option_inst_del_port(%struct.team* %318, %struct.team_port* %319)
  br label %321

321:                                              ; preds = %317, %239
  %322 = load %struct.team*, %struct.team** %5, align 8
  %323 = load %struct.team_port*, %struct.team_port** %9, align 8
  %324 = call i32 @team_upper_dev_unlink(%struct.team* %322, %struct.team_port* %323)
  br label %325

325:                                              ; preds = %321, %229
  %326 = load %struct.net_device*, %struct.net_device** %6, align 8
  %327 = call i32 @netdev_rx_handler_unregister(%struct.net_device* %326)
  br label %328

328:                                              ; preds = %325, %218
  %329 = load %struct.team_port*, %struct.team_port** %9, align 8
  %330 = call i32 @team_port_disable_netpoll(%struct.team_port* %329)
  br label %331

331:                                              ; preds = %328, %197
  %332 = load %struct.net_device*, %struct.net_device** %6, align 8
  %333 = load %struct.net_device*, %struct.net_device** %8, align 8
  %334 = call i32 @vlan_vids_del_by_dev(%struct.net_device* %332, %struct.net_device* %333)
  br label %335

335:                                              ; preds = %331, %188
  %336 = load %struct.net_device*, %struct.net_device** %6, align 8
  %337 = call i32 @dev_close(%struct.net_device* %336)
  br label %338

338:                                              ; preds = %335, %178
  %339 = load %struct.team*, %struct.team** %5, align 8
  %340 = load %struct.team_port*, %struct.team_port** %9, align 8
  %341 = call i32 @team_port_leave(%struct.team* %339, %struct.team_port* %340)
  %342 = load %struct.team_port*, %struct.team_port** %9, align 8
  %343 = call i32 @team_port_set_orig_dev_addr(%struct.team_port* %342)
  br label %344

344:                                              ; preds = %338, %168
  %345 = load %struct.net_device*, %struct.net_device** %6, align 8
  %346 = load %struct.team_port*, %struct.team_port** %9, align 8
  %347 = getelementptr inbounds %struct.team_port, %struct.team_port* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @dev_set_mtu(%struct.net_device* %345, i32 %349)
  br label %351

351:                                              ; preds = %344, %147
  %352 = load %struct.team_port*, %struct.team_port** %9, align 8
  %353 = call i32 @kfree(%struct.team_port* %352)
  %354 = load i32, i32* %11, align 4
  store i32 %354, i32* %4, align 4
  br label %355

355:                                              ; preds = %351, %281, %121, %102, %93, %79, %60, %48, %36, %24
  %356 = load i32, i32* %4, align 4
  ret i32 %356
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @netif_is_team_port(%struct.net_device*) #1

declare dso_local i64 @netdev_has_upper_dev(%struct.net_device*, %struct.net_device*) #1

declare dso_local i64 @vlan_uses_dev(%struct.net_device*) #1

declare dso_local i32 @team_dev_type_check_change(%struct.net_device*, %struct.net_device*) #1

declare dso_local %struct.team_port* @kzalloc(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @team_port_enter(%struct.team*, %struct.team_port*) #1

declare dso_local i32 @dev_open(%struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @vlan_vids_add_by_dev(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @team_port_enable_netpoll(%struct.team_port*) #1

declare dso_local i32 @dev_disable_lro(%struct.net_device*) #1

declare dso_local i32 @netdev_rx_handler_register(%struct.net_device*, i32, %struct.team_port*) #1

declare dso_local i32 @team_upper_dev_link(%struct.team*, %struct.team_port*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @__team_option_inst_add_port(%struct.team*, %struct.team_port*) #1

declare dso_local i32 @dev_set_promiscuity(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_allmulti(%struct.net_device*, i32) #1

declare dso_local i32 @netif_addr_lock_bh(%struct.net_device*) #1

declare dso_local i32 @dev_uc_sync_multiple(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_mc_sync_multiple(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @netif_addr_unlock_bh(%struct.net_device*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @team_port_enable(%struct.team*, %struct.team_port*) #1

declare dso_local i32 @__team_compute_features(%struct.team*) #1

declare dso_local i32 @__team_port_change_port_added(%struct.team_port*, i32) #1

declare dso_local i32 @netif_oper_up(%struct.net_device*) #1

declare dso_local i32 @__team_options_change_check(%struct.team*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i8*) #1

declare dso_local i32 @__team_option_inst_del_port(%struct.team*, %struct.team_port*) #1

declare dso_local i32 @team_upper_dev_unlink(%struct.team*, %struct.team_port*) #1

declare dso_local i32 @netdev_rx_handler_unregister(%struct.net_device*) #1

declare dso_local i32 @team_port_disable_netpoll(%struct.team_port*) #1

declare dso_local i32 @vlan_vids_del_by_dev(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @team_port_leave(%struct.team*, %struct.team_port*) #1

declare dso_local i32 @team_port_set_orig_dev_addr(%struct.team_port*) #1

declare dso_local i32 @kfree(%struct.team_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
