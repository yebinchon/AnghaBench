; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_process_msg_chctl_flags_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_process_msg_chctl_flags_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { %struct.xpc_channel* }
%struct.xpc_channel = type { i32 }

@XPC_C_CONNECTED = common dso_local global i32 0, align 4
@XPC_C_CONNECTEDCALLOUT_MADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_partition*, i32)* @xpc_process_msg_chctl_flags_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_process_msg_chctl_flags_uv(%struct.xpc_partition* %0, i32 %1) #0 {
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xpc_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %8 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %7, i32 0, i32 0
  %9 = load %struct.xpc_channel*, %struct.xpc_channel** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %9, i64 %11
  store %struct.xpc_channel* %12, %struct.xpc_channel** %5, align 8
  %13 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %14 = call i32 @xpc_msgqueue_ref(%struct.xpc_channel* %13)
  %15 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %16 = call i32 @xpc_n_of_deliverable_payloads_uv(%struct.xpc_channel* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %2
  %20 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %21 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @XPC_C_CONNECTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %28 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @XPC_C_CONNECTEDCALLOUT_MADE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @xpc_activate_kthreads(%struct.xpc_channel* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %26, %19, %2
  %38 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %39 = call i32 @xpc_msgqueue_deref(%struct.xpc_channel* %38)
  ret void
}

declare dso_local i32 @xpc_msgqueue_ref(%struct.xpc_channel*) #1

declare dso_local i32 @xpc_n_of_deliverable_payloads_uv(%struct.xpc_channel*) #1

declare dso_local i32 @xpc_activate_kthreads(%struct.xpc_channel*, i32) #1

declare dso_local i32 @xpc_msgqueue_deref(%struct.xpc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
