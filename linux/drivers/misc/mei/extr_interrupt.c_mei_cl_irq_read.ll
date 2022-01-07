; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_interrupt.c_mei_cl_irq_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_interrupt.c_mei_cl_irq_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i32, %struct.list_head, %struct.mei_device* }
%struct.list_head = type { i32 }
%struct.mei_device = type { i32 }
%struct.mei_cl_cb = type { i32, i64 }

@EOVERFLOW = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_cl*, %struct.mei_cl_cb*, %struct.list_head*)* @mei_cl_irq_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_cl_irq_read(%struct.mei_cl* %0, %struct.mei_cl_cb* %1, %struct.list_head* %2) #0 {
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
  %13 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %12, i32 0, i32 2
  %14 = load %struct.mei_device*, %struct.mei_device** %13, align 8
  store %struct.mei_device* %14, %struct.mei_device** %8, align 8
  %15 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %16 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %15, i32 0, i32 1
  %17 = call i32 @list_empty(%struct.list_head* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

20:                                               ; preds = %3
  %21 = call i64 @mei_hbm2slots(i32 4)
  store i64 %21, i64* %9, align 8
  %22 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %23 = call i32 @mei_hbuf_empty_slots(%struct.mei_device* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EOVERFLOW, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %60

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %9, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EMSGSIZE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %60

37:                                               ; preds = %29
  %38 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %39 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %40 = call i32 @mei_hbm_cl_flow_control_req(%struct.mei_device* %38, %struct.mei_cl* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %46 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %48 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %50 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %49, i32 0, i32 0
  %51 = load %struct.list_head*, %struct.list_head** %7, align 8
  %52 = call i32 @list_move_tail(i32* %50, %struct.list_head* %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %60

54:                                               ; preds = %37
  %55 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %56 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %55, i32 0, i32 0
  %57 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %58 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %57, i32 0, i32 1
  %59 = call i32 @list_move_tail(i32* %56, %struct.list_head* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %54, %43, %34, %26, %19
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i64 @mei_hbm2slots(i32) #1

declare dso_local i32 @mei_hbuf_empty_slots(%struct.mei_device*) #1

declare dso_local i32 @mei_hbm_cl_flow_control_req(%struct.mei_device*, %struct.mei_cl*) #1

declare dso_local i32 @list_move_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
