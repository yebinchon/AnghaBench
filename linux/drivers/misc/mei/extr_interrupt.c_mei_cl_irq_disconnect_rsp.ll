; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_interrupt.c_mei_cl_irq_disconnect_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_interrupt.c_mei_cl_irq_disconnect_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { %struct.mei_device* }
%struct.mei_device = type { i32 }
%struct.mei_cl_cb = type { i32 }
%struct.list_head = type { i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_cl*, %struct.mei_cl_cb*, %struct.list_head*)* @mei_cl_irq_disconnect_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_cl_irq_disconnect_rsp(%struct.mei_cl* %0, %struct.mei_cl_cb* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mei_cl*, align 8
  %6 = alloca %struct.mei_cl_cb*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.mei_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mei_cl* %0, %struct.mei_cl** %5, align 8
  store %struct.mei_cl_cb* %1, %struct.mei_cl_cb** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %12 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %13 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %12, i32 0, i32 0
  %14 = load %struct.mei_device*, %struct.mei_device** %13, align 8
  store %struct.mei_device* %14, %struct.mei_device** %8, align 8
  %15 = call i64 @mei_hbm2slots(i32 4)
  store i64 %15, i64* %9, align 8
  %16 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %17 = call i32 @mei_hbuf_empty_slots(%struct.mei_device* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EOVERFLOW, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %40

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %9, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %40

31:                                               ; preds = %23
  %32 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %33 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %34 = call i32 @mei_hbm_cl_disconnect_rsp(%struct.mei_device* %32, %struct.mei_cl* %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %36 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %35, i32 0, i32 0
  %37 = load %struct.list_head*, %struct.list_head** %7, align 8
  %38 = call i32 @list_move_tail(i32* %36, %struct.list_head* %37)
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %31, %28, %20
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @mei_hbm2slots(i32) #1

declare dso_local i32 @mei_hbuf_empty_slots(%struct.mei_device*) #1

declare dso_local i32 @mei_hbm_cl_disconnect_rsp(%struct.mei_device*, %struct.mei_cl*) #1

declare dso_local i32 @list_move_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
