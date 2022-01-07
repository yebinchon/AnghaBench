; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nm.c_scif_send_acks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nm.c_scif_send_acks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.scif_dev = type { i32, i64, i32 }
%struct.scifmsg = type { i64*, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@SCIF_NODE_REMOVE_ACK = common dso_local global i32 0, align 4
@scif_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SCIF_MGMT_NODE = common dso_local global i64 0, align 8
@scif_dev = common dso_local global %struct.scif_dev* null, align 8
@SCIF_EXIT_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_send_acks(%struct.scif_dev* %0) #0 {
  %2 = alloca %struct.scif_dev*, align 8
  %3 = alloca %struct.scifmsg, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %2, align 8
  %4 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %5 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load i32, i32* @SCIF_NODE_REMOVE_ACK, align 4
  %10 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %3, i32 0, i32 3
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scif_info, i32 0, i32 0), align 4
  %12 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %3, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i64, i64* @SCIF_MGMT_NODE, align 8
  %15 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %3, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %18 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %3, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 %19, i64* %22, align 8
  %23 = load %struct.scif_dev*, %struct.scif_dev** @scif_dev, align 8
  %24 = load i64, i64* @SCIF_MGMT_NODE, align 8
  %25 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %23, i64 %24
  %26 = call i32 @scif_nodeqp_send(%struct.scif_dev* %25, %struct.scifmsg* %3)
  %27 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %28 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %8, %1
  %30 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %31 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i32, i32* @SCIF_EXIT_ACK, align 4
  %36 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %3, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scif_info, i32 0, i32 0), align 4
  %38 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %3, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %41 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %3, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %46 = call i32 @scif_nodeqp_send(%struct.scif_dev* %45, %struct.scifmsg* %3)
  %47 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %48 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %47, i32 0, i32 2
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %34, %29
  ret void
}

declare dso_local i32 @scif_nodeqp_send(%struct.scif_dev*, %struct.scifmsg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
