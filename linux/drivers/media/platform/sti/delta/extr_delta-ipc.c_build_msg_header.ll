; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-ipc.c_build_msg_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-ipc.c_build_msg_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ipc_ctx = type { i32 }
%struct.delta_ipc_header_msg = type { i32, i32, i32, i32 }

@IPC_SANITY_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.delta_ipc_ctx*, i32, %struct.delta_ipc_header_msg*)* @build_msg_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_msg_header(%struct.delta_ipc_ctx* %0, i32 %1, %struct.delta_ipc_header_msg* %2) #0 {
  %4 = alloca %struct.delta_ipc_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.delta_ipc_header_msg*, align 8
  store %struct.delta_ipc_ctx* %0, %struct.delta_ipc_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.delta_ipc_header_msg* %2, %struct.delta_ipc_header_msg** %6, align 8
  %7 = load i32, i32* @IPC_SANITY_TAG, align 4
  %8 = load %struct.delta_ipc_header_msg*, %struct.delta_ipc_header_msg** %6, align 8
  %9 = getelementptr inbounds %struct.delta_ipc_header_msg, %struct.delta_ipc_header_msg* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %4, align 8
  %11 = call i32 @to_host_hdl(%struct.delta_ipc_ctx* %10)
  %12 = load %struct.delta_ipc_header_msg*, %struct.delta_ipc_header_msg** %6, align 8
  %13 = getelementptr inbounds %struct.delta_ipc_header_msg, %struct.delta_ipc_header_msg* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.delta_ipc_header_msg*, %struct.delta_ipc_header_msg** %6, align 8
  %18 = getelementptr inbounds %struct.delta_ipc_header_msg, %struct.delta_ipc_header_msg* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.delta_ipc_header_msg*, %struct.delta_ipc_header_msg** %6, align 8
  %21 = getelementptr inbounds %struct.delta_ipc_header_msg, %struct.delta_ipc_header_msg* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  ret void
}

declare dso_local i32 @to_host_hdl(%struct.delta_ipc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
