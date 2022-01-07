; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_tx_flow_ctrl_creds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_tx_flow_ctrl_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_cl*)* @mei_cl_tx_flow_ctrl_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_cl_tx_flow_ctrl_creds(%struct.mei_cl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_cl*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %3, align 8
  %4 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %5 = icmp ne %struct.mei_cl* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %8 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i1 [ true, %1 ], [ %11, %6 ]
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %45

20:                                               ; preds = %12
  %21 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %22 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %45

26:                                               ; preds = %20
  %27 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %28 = call i64 @mei_cl_is_fixed_address(%struct.mei_cl* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %45

31:                                               ; preds = %26
  %32 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %33 = call i64 @mei_cl_is_single_recv_buf(%struct.mei_cl* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %37 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %45

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %31
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %42, %30, %25, %17
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @mei_cl_is_fixed_address(%struct.mei_cl*) #1

declare dso_local i64 @mei_cl_is_single_recv_buf(%struct.mei_cl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
