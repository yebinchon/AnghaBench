; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_talk_to_netback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_talk_to_netback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i8*, i32 }
%struct.netfront_info = type { %struct.netfront_queue*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.netfront_queue = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.xenbus_transaction = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"multi-queue-max-queues\00", align 1
@xennet_max_queues = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"feature-split-event-channels\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"parsing %s/mac\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"creating queues\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"starting transaction\00", align 1
@XBT_NIL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"multi-queue-num-queues\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"writing multi-queue-num-queues\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"request-rx-copy\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"writing request-rx-copy\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"feature-rx-notify\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"writing feature-rx-notify\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"feature-sg\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"writing feature-sg\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"feature-gso-tcpv4\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"writing feature-gso-tcpv4\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"feature-gso-tcpv6\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"writing feature-gso-tcpv6\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"feature-ipv6-csum-offload\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"writing feature-ipv6-csum-offload\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [23 x i8] c"completing transaction\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.netfront_info*)* @talk_to_netback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talk_to_netback(%struct.xenbus_device* %0, %struct.netfront_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.netfront_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xenbus_transaction, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.netfront_queue*, align 8
  %13 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.netfront_info* %1, %struct.netfront_info** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.netfront_queue* null, %struct.netfront_queue** %12, align 8
  store i32 1, i32* %13, align 4
  %14 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %15 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %19 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @xenbus_read_unsigned(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @xennet_max_queues, align 4
  %26 = call i32 @min(i32 %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %28 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @xenbus_read_unsigned(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %34 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %35 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @xen_net_read_mac(%struct.xenbus_device* %33, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %2
  %43 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %46 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %43, i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %256

49:                                               ; preds = %2
  %50 = call i32 (...) @rtnl_lock()
  %51 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %52 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %51, i32 0, i32 0
  %53 = load %struct.netfront_queue*, %struct.netfront_queue** %52, align 8
  %54 = icmp ne %struct.netfront_queue* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %57 = call i32 @xennet_destroy_queues(%struct.netfront_info* %56)
  br label %58

58:                                               ; preds = %55, %49
  %59 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %60 = call i32 @xennet_create_queues(%struct.netfront_info* %59, i32* %13)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %64, i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %68 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %67, i32 0, i32 0
  %69 = load %struct.netfront_queue*, %struct.netfront_queue** %68, align 8
  %70 = call i32 @kfree(%struct.netfront_queue* %69)
  %71 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %72 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %71, i32 0, i32 0
  store %struct.netfront_queue* null, %struct.netfront_queue** %72, align 8
  br label %254

73:                                               ; preds = %58
  %74 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %94, %73
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %81 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %80, i32 0, i32 0
  %82 = load %struct.netfront_queue*, %struct.netfront_queue** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %82, i64 %84
  store %struct.netfront_queue* %85, %struct.netfront_queue** %12, align 8
  %86 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %87 = load %struct.netfront_queue*, %struct.netfront_queue** %12, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @setup_netfront(%struct.xenbus_device* %86, %struct.netfront_queue* %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  br label %248

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %10, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %75

97:                                               ; preds = %75
  br label %98

98:                                               ; preds = %233, %97
  %99 = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %7)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %103, i32 %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %248

106:                                              ; preds = %98
  %107 = load i32, i32* @XBT_NIL, align 4
  %108 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %109 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @xenbus_exists(i32 %107, i32 %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %106
  %116 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %117 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @xenbus_printf(i32 %121, i8* %118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %244

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %106
  %128 = load i32, i32* %13, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %132 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %131, i32 0, i32 0
  %133 = load %struct.netfront_queue*, %struct.netfront_queue** %132, align 8
  %134 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %133, i64 0
  %135 = call i32 @write_queue_xenstore_keys(%struct.netfront_queue* %134, %struct.xenbus_transaction* %7, i32 0)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %244

139:                                              ; preds = %130
  br label %162

140:                                              ; preds = %127
  store i32 0, i32* %10, align 4
  br label %141

141:                                              ; preds = %158, %140
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %141
  %146 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %147 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %146, i32 0, i32 0
  %148 = load %struct.netfront_queue*, %struct.netfront_queue** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %148, i64 %150
  store %struct.netfront_queue* %151, %struct.netfront_queue** %12, align 8
  %152 = load %struct.netfront_queue*, %struct.netfront_queue** %12, align 8
  %153 = call i32 @write_queue_xenstore_keys(%struct.netfront_queue* %152, %struct.xenbus_transaction* %7, i32 1)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %145
  br label %244

157:                                              ; preds = %145
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %10, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %10, align 4
  br label %141

161:                                              ; preds = %141
  br label %162

162:                                              ; preds = %161, %139
  %163 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %164 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @xenbus_printf(i32 %167, i8* %165, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %239

172:                                              ; preds = %162
  %173 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %174 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @xenbus_printf(i32 %177, i8* %175, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 1)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %172
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %239

182:                                              ; preds = %172
  %183 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %184 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @xenbus_printf(i32 %187, i8* %185, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 1)
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %182
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8** %6, align 8
  br label %239

192:                                              ; preds = %182
  %193 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %194 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @xenbus_printf(i32 %197, i8* %195, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 1)
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %192
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i8** %6, align 8
  br label %239

202:                                              ; preds = %192
  %203 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %204 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @xenbus_write(i32 %207, i8* %205, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %8, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %202
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i8** %6, align 8
  br label %239

212:                                              ; preds = %202
  %213 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %214 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @xenbus_write(i32 %217, i8* %215, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %212
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i8** %6, align 8
  br label %239

222:                                              ; preds = %212
  %223 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @xenbus_transaction_end(i32 %224, i32 0)
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %222
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* @EAGAIN, align 4
  %231 = sub nsw i32 0, %230
  %232 = icmp eq i32 %229, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %98

234:                                              ; preds = %228
  %235 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %236 = load i32, i32* %8, align 4
  %237 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %235, i32 %236, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0))
  br label %248

238:                                              ; preds = %222
  store i32 0, i32* %3, align 4
  br label %261

239:                                              ; preds = %221, %211, %201, %191, %181, %171
  %240 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %241 = load i32, i32* %8, align 4
  %242 = load i8*, i8** %6, align 8
  %243 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %240, i32 %241, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* %242)
  br label %244

244:                                              ; preds = %239, %156, %138, %125
  %245 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @xenbus_transaction_end(i32 %246, i32 1)
  br label %248

248:                                              ; preds = %244, %234, %102, %92
  %249 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %250 = call i32 @xennet_disconnect_backend(%struct.netfront_info* %249)
  %251 = call i32 (...) @rtnl_lock()
  %252 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %253 = call i32 @xennet_destroy_queues(%struct.netfront_info* %252)
  br label %254

254:                                              ; preds = %248, %63
  %255 = call i32 (...) @rtnl_unlock()
  br label %256

256:                                              ; preds = %254, %42
  %257 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %258 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %257, i32 0, i32 1
  %259 = call i32 @device_unregister(i32* %258)
  %260 = load i32, i32* %8, align 4
  store i32 %260, i32* %3, align 4
  br label %261

261:                                              ; preds = %256, %238
  %262 = load i32, i32* %3, align 4
  ret i32 %262
}

declare dso_local i32 @xenbus_read_unsigned(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @xen_net_read_mac(%struct.xenbus_device*, i32) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, ...) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @xennet_destroy_queues(%struct.netfront_info*) #1

declare dso_local i32 @xennet_create_queues(%struct.netfront_info*, i32*) #1

declare dso_local i32 @kfree(%struct.netfront_queue*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @setup_netfront(%struct.xenbus_device*, %struct.netfront_queue*, i32) #1

declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #1

declare dso_local i64 @xenbus_exists(i32, i32, i8*) #1

declare dso_local i32 @xenbus_printf(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @write_queue_xenstore_keys(%struct.netfront_queue*, %struct.xenbus_transaction*, i32) #1

declare dso_local i32 @xenbus_write(i32, i8*, i8*, i8*) #1

declare dso_local i32 @xenbus_transaction_end(i32, i32) #1

declare dso_local i32 @xennet_disconnect_backend(%struct.netfront_info*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
