; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_nodeqp_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_nodeqp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i64 }
%struct.scifmsg = type { i64 }
%struct.device = type { i32 }

@SCIF_EXIT_ACK = common dso_local global i64 0, align 8
@OP_IDLE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_nodeqp_send(%struct.scif_dev* %0, %struct.scifmsg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scif_dev*, align 8
  %5 = alloca %struct.scifmsg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %4, align 8
  store %struct.scifmsg* %1, %struct.scifmsg** %5, align 8
  store %struct.device* null, %struct.device** %7, align 8
  %8 = load %struct.scifmsg*, %struct.scifmsg** %5, align 8
  %9 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SCIF_EXIT_ACK, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load i64, i64* @OP_IDLE, align 8
  %15 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %16 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %13
  %23 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %24 = call %struct.device* @scif_get_peer_dev(%struct.scif_dev* %23)
  store %struct.device* %24, %struct.device** %7, align 8
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = call i64 @IS_ERR(%struct.device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = call i32 @PTR_ERR(%struct.device* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %47

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %35 = load %struct.scifmsg*, %struct.scifmsg** %5, align 8
  %36 = call i32 @_scif_nodeqp_send(%struct.scif_dev* %34, %struct.scifmsg* %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.scifmsg*, %struct.scifmsg** %5, align 8
  %38 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SCIF_EXIT_ACK, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = call i32 @scif_put_peer_dev(%struct.device* %43)
  br label %45

45:                                               ; preds = %42, %33
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %28, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.device* @scif_get_peer_dev(%struct.scif_dev*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @_scif_nodeqp_send(%struct.scif_dev*, %struct.scifmsg*) #1

declare dso_local i32 @scif_put_peer_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
