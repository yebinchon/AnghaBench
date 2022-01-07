; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_irq_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_irq_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { %struct.mei_device* }
%struct.mei_device = type { i32 }
%struct.mei_cl_cb = type { i32 }
%struct.list_head = type { i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_cl_irq_connect(%struct.mei_cl* %0, %struct.mei_cl_cb* %1, %struct.list_head* %2) #0 {
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
  %15 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %16 = call i64 @mei_cl_is_other_connecting(%struct.mei_cl* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

19:                                               ; preds = %3
  %20 = call i64 @mei_hbm2slots(i32 4)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %22 = call i32 @mei_hbuf_empty_slots(%struct.mei_device* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EOVERFLOW, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %49

28:                                               ; preds = %19
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %9, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EMSGSIZE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %49

36:                                               ; preds = %28
  %37 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %38 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %39 = call i32 @mei_cl_send_connect(%struct.mei_cl* %37, %struct.mei_cl_cb* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %44 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %43, i32 0, i32 0
  %45 = load %struct.list_head*, %struct.list_head** %7, align 8
  %46 = call i32 @list_move_tail(i32* %44, %struct.list_head* %45)
  br label %47

47:                                               ; preds = %42, %36
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %33, %25, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @mei_cl_is_other_connecting(%struct.mei_cl*) #1

declare dso_local i64 @mei_hbm2slots(i32) #1

declare dso_local i32 @mei_hbuf_empty_slots(%struct.mei_device*) #1

declare dso_local i32 @mei_cl_send_connect(%struct.mei_cl*, %struct.mei_cl_cb*) #1

declare dso_local i32 @list_move_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
