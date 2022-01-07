; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_pppoe_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_pppoe_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_pppox = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.pppox_sock = type { %struct.net_device*, i64, i64, %struct.TYPE_7__, %struct.TYPE_7__, i32*, %struct.TYPE_7__ }
%struct.net_device = type { i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i64, i32*, %struct.sock*, i64 }
%struct.pppoe_net = type { i32 }
%struct.net = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PX_PROTO_OE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@PPPOX_CONNECTED = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@PPPOX_DEAD = common dso_local global i32 0, align 4
@PPPOX_NONE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@pppoe_chan_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @pppoe_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppoe_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sockaddr_pppox*, align 8
  %11 = alloca %struct.pppox_sock*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.pppoe_net*, align 8
  %14 = alloca %struct.net*, align 8
  %15 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %9, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_pppox*
  store %struct.sockaddr_pppox* %20, %struct.sockaddr_pppox** %10, align 8
  %21 = load %struct.sock*, %struct.sock** %9, align 8
  %22 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %21)
  store %struct.pppox_sock* %22, %struct.pppox_sock** %11, align 8
  store %struct.net_device* null, %struct.net_device** %12, align 8
  store %struct.net* null, %struct.net** %14, align 8
  %23 = load %struct.sock*, %struct.sock** %9, align 8
  %24 = call i32 @lock_sock(%struct.sock* %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 24
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %248

31:                                               ; preds = %4
  %32 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %10, align 8
  %33 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PX_PROTO_OE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %248

38:                                               ; preds = %31
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %15, align 4
  %41 = load %struct.sock*, %struct.sock** %9, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PPPOX_CONNECTED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %10, align 8
  %49 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @stage_session(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %248

56:                                               ; preds = %47, %38
  %57 = load i32, i32* @EALREADY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %15, align 4
  %59 = load %struct.sock*, %struct.sock** %9, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PPPOX_DEAD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %56
  %66 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %10, align 8
  %67 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @stage_session(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  br label %248

74:                                               ; preds = %65, %56
  store i32 0, i32* %15, align 4
  %75 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %76 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @stage_session(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %130

81:                                               ; preds = %74
  %82 = load %struct.sock*, %struct.sock** %9, align 8
  %83 = call i32 @pppox_unbind_sock(%struct.sock* %82)
  %84 = load %struct.sock*, %struct.sock** %9, align 8
  %85 = call %struct.net* @sock_net(%struct.sock* %84)
  %86 = call %struct.pppoe_net* @pppoe_pernet(%struct.net* %85)
  store %struct.pppoe_net* %86, %struct.pppoe_net** %13, align 8
  %87 = load %struct.pppoe_net*, %struct.pppoe_net** %13, align 8
  %88 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %89 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %93 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %97 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @delete_item(%struct.pppoe_net* %87, i64 %91, i32 %95, i64 %98)
  %100 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %101 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %100, i32 0, i32 0
  %102 = load %struct.net_device*, %struct.net_device** %101, align 8
  %103 = icmp ne %struct.net_device* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %81
  %105 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %106 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %105, i32 0, i32 0
  %107 = load %struct.net_device*, %struct.net_device** %106, align 8
  %108 = call i32 @dev_put(%struct.net_device* %107)
  %109 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %110 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %109, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %110, align 8
  br label %111

111:                                              ; preds = %104, %81
  %112 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %113 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  %114 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %115 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %114, i32 0, i32 3
  %116 = call i32 @memset(%struct.TYPE_7__* %115, i32 0, i32 40)
  %117 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %118 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %117, i32 0, i32 6
  %119 = call i32 @memset(%struct.TYPE_7__* %118, i32 0, i32 40)
  %120 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %121 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %120, i32 0, i32 4
  %122 = call i32 @memset(%struct.TYPE_7__* %121, i32 0, i32 40)
  %123 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %124 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %123, i32 0, i32 5
  store i32* null, i32** %124, align 8
  %125 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %126 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load i32, i32* @PPPOX_NONE, align 4
  %128 = load %struct.sock*, %struct.sock** %9, align 8
  %129 = getelementptr inbounds %struct.sock, %struct.sock* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %111, %74
  %131 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %10, align 8
  %132 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @stage_session(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %240

138:                                              ; preds = %130
  %139 = load i32, i32* @ENODEV, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %15, align 4
  %141 = load %struct.sock*, %struct.sock** %9, align 8
  %142 = call %struct.net* @sock_net(%struct.sock* %141)
  store %struct.net* %142, %struct.net** %14, align 8
  %143 = load %struct.net*, %struct.net** %14, align 8
  %144 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %10, align 8
  %145 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call %struct.net_device* @dev_get_by_name(%struct.net* %143, i32 %148)
  store %struct.net_device* %149, %struct.net_device** %12, align 8
  %150 = load %struct.net_device*, %struct.net_device** %12, align 8
  %151 = icmp ne %struct.net_device* %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %138
  br label %252

153:                                              ; preds = %138
  %154 = load %struct.net_device*, %struct.net_device** %12, align 8
  %155 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %156 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %155, i32 0, i32 0
  store %struct.net_device* %154, %struct.net_device** %156, align 8
  %157 = load %struct.net_device*, %struct.net_device** %12, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %161 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %160, i32 0, i32 2
  store i64 %159, i64* %161, align 8
  %162 = load %struct.net*, %struct.net** %14, align 8
  %163 = call %struct.pppoe_net* @pppoe_pernet(%struct.net* %162)
  store %struct.pppoe_net* %163, %struct.pppoe_net** %13, align 8
  %164 = load %struct.net_device*, %struct.net_device** %12, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @IFF_UP, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %153
  br label %252

171:                                              ; preds = %153
  %172 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %173 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %172, i32 0, i32 3
  %174 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %10, align 8
  %175 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = call i32 @memcpy(%struct.TYPE_7__* %173, %struct.TYPE_8__* %176, i32 4)
  %178 = load %struct.pppoe_net*, %struct.pppoe_net** %13, align 8
  %179 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %178, i32 0, i32 0
  %180 = call i32 @write_lock_bh(i32* %179)
  %181 = load %struct.pppoe_net*, %struct.pppoe_net** %13, align 8
  %182 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %183 = call i32 @__set_item(%struct.pppoe_net* %181, %struct.pppox_sock* %182)
  store i32 %183, i32* %15, align 4
  %184 = load %struct.pppoe_net*, %struct.pppoe_net** %13, align 8
  %185 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %184, i32 0, i32 0
  %186 = call i32 @write_unlock_bh(i32* %185)
  %187 = load i32, i32* %15, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %171
  br label %252

190:                                              ; preds = %171
  %191 = load %struct.net_device*, %struct.net_device** %12, align 8
  %192 = getelementptr inbounds %struct.net_device, %struct.net_device* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = add i64 4, %193
  %195 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %196 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 5
  store i64 %194, i64* %197, align 8
  %198 = load %struct.net_device*, %struct.net_device** %12, align 8
  %199 = getelementptr inbounds %struct.net_device, %struct.net_device* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = sub i64 %201, 4
  %203 = sub i64 %202, 2
  %204 = trunc i64 %203 to i32
  %205 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %206 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  store i32 %204, i32* %207, align 8
  %208 = load %struct.sock*, %struct.sock** %9, align 8
  %209 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %210 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 4
  store %struct.sock* %208, %struct.sock** %211, align 8
  %212 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %213 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 3
  store i32* @pppoe_chan_ops, i32** %214, align 8
  %215 = load %struct.net_device*, %struct.net_device** %12, align 8
  %216 = call i32 @dev_net(%struct.net_device* %215)
  %217 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %218 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %217, i32 0, i32 4
  %219 = call i32 @ppp_register_net_channel(i32 %216, %struct.TYPE_7__* %218)
  store i32 %219, i32* %15, align 4
  %220 = load i32, i32* %15, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %236

222:                                              ; preds = %190
  %223 = load %struct.pppoe_net*, %struct.pppoe_net** %13, align 8
  %224 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %225 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %229 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %233 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @delete_item(%struct.pppoe_net* %223, i64 %227, i32 %231, i64 %234)
  br label %252

236:                                              ; preds = %190
  %237 = load i32, i32* @PPPOX_CONNECTED, align 4
  %238 = load %struct.sock*, %struct.sock** %9, align 8
  %239 = getelementptr inbounds %struct.sock, %struct.sock* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 4
  br label %240

240:                                              ; preds = %236, %130
  %241 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %10, align 8
  %242 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %247 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %246, i32 0, i32 1
  store i64 %245, i64* %247, align 8
  br label %248

248:                                              ; preds = %264, %240, %73, %55, %37, %30
  %249 = load %struct.sock*, %struct.sock** %9, align 8
  %250 = call i32 @release_sock(%struct.sock* %249)
  %251 = load i32, i32* %15, align 4
  ret i32 %251

252:                                              ; preds = %222, %189, %170, %152
  %253 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %254 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %253, i32 0, i32 0
  %255 = load %struct.net_device*, %struct.net_device** %254, align 8
  %256 = icmp ne %struct.net_device* %255, null
  br i1 %256, label %257, label %264

257:                                              ; preds = %252
  %258 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %259 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %258, i32 0, i32 0
  %260 = load %struct.net_device*, %struct.net_device** %259, align 8
  %261 = call i32 @dev_put(%struct.net_device* %260)
  %262 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %263 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %262, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %263, align 8
  br label %264

264:                                              ; preds = %257, %252
  br label %248
}

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @stage_session(i64) #1

declare dso_local i32 @pppox_unbind_sock(%struct.sock*) #1

declare dso_local %struct.pppoe_net* @pppoe_pernet(%struct.net*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @delete_item(%struct.pppoe_net*, i64, i32, i64) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.net_device* @dev_get_by_name(%struct.net*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @__set_item(%struct.pppoe_net*, %struct.pppox_sock*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @ppp_register_net_channel(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
