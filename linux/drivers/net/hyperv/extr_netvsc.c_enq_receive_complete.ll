; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_enq_receive_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_enq_receive_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netvsc_device = type { i64, %struct.netvsc_channel* }
%struct.netvsc_channel = type { %struct.multi_recv_comp }
%struct.multi_recv_comp = type { i32, %struct.recv_comp_data* }
%struct.recv_comp_data = type { i64, i32 }

@NAPI_POLL_WEIGHT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Recv_comp full buf q:%hd, tid:%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.netvsc_device*, i64, i32, i64)* @enq_receive_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enq_receive_complete(%struct.net_device* %0, %struct.netvsc_device* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netvsc_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.netvsc_channel*, align 8
  %12 = alloca %struct.multi_recv_comp*, align 8
  %13 = alloca %struct.recv_comp_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.netvsc_device* %1, %struct.netvsc_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %16 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %17 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %16, i32 0, i32 1
  %18 = load %struct.netvsc_channel*, %struct.netvsc_channel** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %18, i64 %19
  store %struct.netvsc_channel* %20, %struct.netvsc_channel** %11, align 8
  %21 = load %struct.netvsc_channel*, %struct.netvsc_channel** %11, align 8
  %22 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %21, i32 0, i32 0
  store %struct.multi_recv_comp* %22, %struct.multi_recv_comp** %12, align 8
  %23 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %24 = load %struct.multi_recv_comp*, %struct.multi_recv_comp** %12, align 8
  %25 = call i32 @recv_comp_slot_avail(%struct.netvsc_device* %23, %struct.multi_recv_comp* %24, i64* %14, i64* %15)
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* @NAPI_POLL_WEIGHT, align 8
  %28 = icmp sgt i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %5
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %35 = load %struct.netvsc_channel*, %struct.netvsc_channel** %11, align 8
  %36 = call i32 @send_recv_completions(%struct.net_device* %33, %struct.netvsc_device* %34, %struct.netvsc_channel* %35)
  %37 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %38 = load %struct.multi_recv_comp*, %struct.multi_recv_comp** %12, align 8
  %39 = call i32 @recv_comp_slot_avail(%struct.netvsc_device* %37, %struct.multi_recv_comp* %38, i64* %14, i64* %15)
  br label %40

40:                                               ; preds = %32, %5
  %41 = load i64, i64* %15, align 8
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @netdev_err(%struct.net_device* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %49, i32 %50)
  br label %79

52:                                               ; preds = %40
  %53 = load %struct.multi_recv_comp*, %struct.multi_recv_comp** %12, align 8
  %54 = getelementptr inbounds %struct.multi_recv_comp, %struct.multi_recv_comp* %53, i32 0, i32 1
  %55 = load %struct.recv_comp_data*, %struct.recv_comp_data** %54, align 8
  %56 = load %struct.multi_recv_comp*, %struct.multi_recv_comp** %12, align 8
  %57 = getelementptr inbounds %struct.multi_recv_comp, %struct.multi_recv_comp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.recv_comp_data, %struct.recv_comp_data* %55, i64 %59
  store %struct.recv_comp_data* %60, %struct.recv_comp_data** %13, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.recv_comp_data*, %struct.recv_comp_data** %13, align 8
  %63 = getelementptr inbounds %struct.recv_comp_data, %struct.recv_comp_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.recv_comp_data*, %struct.recv_comp_data** %13, align 8
  %66 = getelementptr inbounds %struct.recv_comp_data, %struct.recv_comp_data* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.multi_recv_comp*, %struct.multi_recv_comp** %12, align 8
  %68 = getelementptr inbounds %struct.multi_recv_comp, %struct.multi_recv_comp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = sext i32 %70 to i64
  %72 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %73 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %52
  %77 = load %struct.multi_recv_comp*, %struct.multi_recv_comp** %12, align 8
  %78 = getelementptr inbounds %struct.multi_recv_comp, %struct.multi_recv_comp* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %47, %76, %52
  ret void
}

declare dso_local i32 @recv_comp_slot_avail(%struct.netvsc_device*, %struct.multi_recv_comp*, i64*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @send_recv_completions(%struct.net_device*, %struct.netvsc_device*, %struct.netvsc_channel*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
