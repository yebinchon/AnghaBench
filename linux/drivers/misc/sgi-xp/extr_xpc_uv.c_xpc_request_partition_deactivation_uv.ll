; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_request_partition_deactivation_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_request_partition_deactivation_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.xpc_activate_mq_msg_deactivate_req_uv = type { i32 }

@XPC_P_AS_DEACTIVATING = common dso_local global i64 0, align 8
@XPC_P_AS_INACTIVE = common dso_local global i64 0, align 8
@XPC_ACTIVATE_MQ_MSG_DEACTIVATE_REQ_UV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_partition*)* @xpc_request_partition_deactivation_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_request_partition_deactivation_uv(%struct.xpc_partition* %0) #0 {
  %2 = alloca %struct.xpc_partition*, align 8
  %3 = alloca %struct.xpc_activate_mq_msg_deactivate_req_uv, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %2, align 8
  %4 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %5 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %13 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @XPC_P_AS_INACTIVE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %21 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.xpc_activate_mq_msg_deactivate_req_uv, %struct.xpc_activate_mq_msg_deactivate_req_uv* %3, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %25 = load i32, i32* @XPC_ACTIVATE_MQ_MSG_DEACTIVATE_REQ_UV, align 4
  %26 = call i32 @xpc_send_activate_IRQ_part_uv(%struct.xpc_partition* %24, %struct.xpc_activate_mq_msg_deactivate_req_uv* %3, i32 4, i32 %25)
  br label %27

27:                                               ; preds = %19, %11, %1
  ret void
}

declare dso_local i32 @xpc_send_activate_IRQ_part_uv(%struct.xpc_partition*, %struct.xpc_activate_mq_msg_deactivate_req_uv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
