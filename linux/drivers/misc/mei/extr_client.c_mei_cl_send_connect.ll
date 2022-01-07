; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_send_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_send_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i32, i32, i32, %struct.mei_device* }
%struct.mei_device = type { i32 }
%struct.mei_cl_cb = type { i32 }

@MEI_FILE_DISCONNECT_REPLY = common dso_local global i32 0, align 4
@MEI_CONNECT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_cl*, %struct.mei_cl_cb*)* @mei_cl_send_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_cl_send_connect(%struct.mei_cl* %0, %struct.mei_cl_cb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_cl*, align 8
  %5 = alloca %struct.mei_cl_cb*, align 8
  %6 = alloca %struct.mei_device*, align 8
  %7 = alloca i32, align 4
  store %struct.mei_cl* %0, %struct.mei_cl** %4, align 8
  store %struct.mei_cl_cb* %1, %struct.mei_cl_cb** %5, align 8
  %8 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %9 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %8, i32 0, i32 3
  %10 = load %struct.mei_device*, %struct.mei_device** %9, align 8
  store %struct.mei_device* %10, %struct.mei_device** %6, align 8
  %11 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %12 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %13 = call i32 @mei_hbm_cl_connect_req(%struct.mei_device* %11, %struct.mei_cl* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %16 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @MEI_FILE_DISCONNECT_REPLY, align 4
  %21 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %22 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %5, align 8
  %26 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %25, i32 0, i32 0
  %27 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %28 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %27, i32 0, i32 0
  %29 = call i32 @list_move_tail(i32* %26, i32* %28)
  %30 = load i32, i32* @MEI_CONNECT_TIMEOUT, align 4
  %31 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %32 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %34 = call i32 @mei_schedule_stall_timer(%struct.mei_device* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %24, %19
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @mei_hbm_cl_connect_req(%struct.mei_device*, %struct.mei_cl*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @mei_schedule_stall_timer(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
