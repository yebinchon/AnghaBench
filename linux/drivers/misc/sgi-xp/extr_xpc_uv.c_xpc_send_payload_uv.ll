; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_send_payload_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_send_payload_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i64, i32, i32, i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.xpc_send_msg_slot_uv = type { i32*, i32*, i32 }
%struct.xpc_notify_mq_msg_uv = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }

@xpSuccess = common dso_local global i32 0, align 4
@XPC_NOTIFY_MSG_SIZE_UV = common dso_local global i32 0, align 4
@XPC_N_CALL = common dso_local global i64 0, align 8
@xpPayloadTooBig = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@XPC_C_CONNECTED = common dso_local global i32 0, align 4
@xpNotConnected = common dso_local global i32 0, align 4
@xp_partition_id = common dso_local global i32 0, align 4
@xpc_partitions = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_channel*, i32, i8*, i32, i64, i32*, i8*)* @xpc_send_payload_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_send_payload_uv(%struct.xpc_channel* %0, i32 %1, i8* %2, i32 %3, i64 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xpc_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.xpc_send_msg_slot_uv*, align 8
  %18 = alloca %struct.xpc_notify_mq_msg_uv*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %23 = load i32, i32* @xpSuccess, align 4
  store i32 %23, i32* %16, align 4
  store %struct.xpc_send_msg_slot_uv* null, %struct.xpc_send_msg_slot_uv** %17, align 8
  %24 = load i32, i32* @XPC_NOTIFY_MSG_SIZE_UV, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %19, align 8
  %27 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %20, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* @XPC_N_CALL, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @DBUG_ON(i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 4, %34
  store i64 %35, i64* %21, align 8
  %36 = load i64, i64* %21, align 8
  %37 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %38 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %7
  %42 = load i32, i32* @xpPayloadTooBig, align 4
  store i32 %42, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %172

43:                                               ; preds = %7
  %44 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %45 = call i32 @xpc_msgqueue_ref(%struct.xpc_channel* %44)
  %46 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %47 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %54 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %16, align 4
  br label %168

56:                                               ; preds = %43
  %57 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %58 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @XPC_C_CONNECTED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @xpNotConnected, align 4
  store i32 %64, i32* %16, align 4
  br label %168

65:                                               ; preds = %56
  %66 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @xpc_allocate_msg_slot_uv(%struct.xpc_channel* %66, i32 %67, %struct.xpc_send_msg_slot_uv** %17)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @xpSuccess, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %168

73:                                               ; preds = %65
  %74 = load i32*, i32** %14, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %78 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %77, i32 0, i32 4
  %79 = call i32 @atomic_inc(i32* %78)
  %80 = load i8*, i8** %15, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.xpc_send_msg_slot_uv*, %struct.xpc_send_msg_slot_uv** %17, align 8
  %83 = getelementptr inbounds %struct.xpc_send_msg_slot_uv, %struct.xpc_send_msg_slot_uv* %82, i32 0, i32 0
  store i32* %81, i32** %83, align 8
  %84 = call i32 (...) @smp_wmb()
  %85 = load i32*, i32** %14, align 8
  %86 = load %struct.xpc_send_msg_slot_uv*, %struct.xpc_send_msg_slot_uv** %17, align 8
  %87 = getelementptr inbounds %struct.xpc_send_msg_slot_uv, %struct.xpc_send_msg_slot_uv* %86, i32 0, i32 1
  store i32* %85, i32** %87, align 8
  %88 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %89 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %76
  %95 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %96 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %16, align 4
  br label %146

98:                                               ; preds = %76
  br label %99

99:                                               ; preds = %98, %73
  %100 = bitcast i64* %27 to %struct.xpc_notify_mq_msg_uv*
  store %struct.xpc_notify_mq_msg_uv* %100, %struct.xpc_notify_mq_msg_uv** %18, align 8
  %101 = load i32, i32* @xp_partition_id, align 4
  %102 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %18, align 8
  %103 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 8
  %105 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %106 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %18, align 8
  %109 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 4
  %111 = load i64, i64* %21, align 8
  %112 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %18, align 8
  %113 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i64 %111, i64* %114, align 8
  %115 = load %struct.xpc_send_msg_slot_uv*, %struct.xpc_send_msg_slot_uv** %17, align 8
  %116 = getelementptr inbounds %struct.xpc_send_msg_slot_uv, %struct.xpc_send_msg_slot_uv* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %18, align 8
  %119 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 8
  %121 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %18, align 8
  %122 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %121, i32 0, i32 0
  %123 = load i8*, i8** %11, align 8
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @memcpy(i32* %122, i8* %123, i32 %124)
  %126 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %127 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %18, align 8
  %132 = load i64, i64* %21, align 8
  %133 = call i32 @xpc_send_gru_msg(i32 %130, %struct.xpc_notify_mq_msg_uv* %131, i64 %132)
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* @xpSuccess, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %99
  br label %168

138:                                              ; preds = %99
  %139 = load i32*, i32** @xpc_partitions, align 8
  %140 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %141 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @XPC_DEACTIVATE_PARTITION(i32* %143, i32 %144)
  br label %146

146:                                              ; preds = %138, %94
  %147 = load i32*, i32** %14, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %164

149:                                              ; preds = %146
  %150 = load %struct.xpc_send_msg_slot_uv*, %struct.xpc_send_msg_slot_uv** %17, align 8
  %151 = getelementptr inbounds %struct.xpc_send_msg_slot_uv, %struct.xpc_send_msg_slot_uv* %150, i32 0, i32 1
  %152 = load i32*, i32** %14, align 8
  %153 = call i32* @cmpxchg(i32** %151, i32* %152, i32* null)
  %154 = load i32*, i32** %14, align 8
  %155 = icmp ne i32* %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* @xpSuccess, align 4
  store i32 %157, i32* %16, align 4
  br label %168

158:                                              ; preds = %149
  %159 = load %struct.xpc_send_msg_slot_uv*, %struct.xpc_send_msg_slot_uv** %17, align 8
  %160 = getelementptr inbounds %struct.xpc_send_msg_slot_uv, %struct.xpc_send_msg_slot_uv* %159, i32 0, i32 0
  store i32* null, i32** %160, align 8
  %161 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %162 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %161, i32 0, i32 4
  %163 = call i32 @atomic_dec(i32* %162)
  br label %164

164:                                              ; preds = %158, %146
  %165 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %166 = load %struct.xpc_send_msg_slot_uv*, %struct.xpc_send_msg_slot_uv** %17, align 8
  %167 = call i32 @xpc_free_msg_slot_uv(%struct.xpc_channel* %165, %struct.xpc_send_msg_slot_uv* %166)
  br label %168

168:                                              ; preds = %164, %156, %137, %72, %63, %52
  %169 = load %struct.xpc_channel*, %struct.xpc_channel** %9, align 8
  %170 = call i32 @xpc_msgqueue_deref(%struct.xpc_channel* %169)
  %171 = load i32, i32* %16, align 4
  store i32 %171, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %172

172:                                              ; preds = %168, %41
  %173 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %8, align 4
  ret i32 %174
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DBUG_ON(i32) #2

declare dso_local i32 @xpc_msgqueue_ref(%struct.xpc_channel*) #2

declare dso_local i32 @xpc_allocate_msg_slot_uv(%struct.xpc_channel*, i32, %struct.xpc_send_msg_slot_uv**) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @smp_wmb(...) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @xpc_send_gru_msg(i32, %struct.xpc_notify_mq_msg_uv*, i64) #2

declare dso_local i32 @XPC_DEACTIVATE_PARTITION(i32*, i32) #2

declare dso_local i32* @cmpxchg(i32**, i32*, i32*) #2

declare dso_local i32 @atomic_dec(i32*) #2

declare dso_local i32 @xpc_free_msg_slot_uv(%struct.xpc_channel*, %struct.xpc_send_msg_slot_uv*) #2

declare dso_local i32 @xpc_msgqueue_deref(%struct.xpc_channel*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
