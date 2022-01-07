; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nm.c_scif_disconnect_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nm.c_scif_disconnect_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@scif_dev = common dso_local global %struct.scif_dev* null, align 8
@scif_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SCIF_NODE_ALIVE_TIMEOUT = common dso_local global i32 0, align 4
@SCIF_MGMT_NODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_disconnect_node(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.scif_dev*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load %struct.scif_dev*, %struct.scif_dev** @scif_dev, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %9, i64 %10
  store %struct.scif_dev* %11, %struct.scif_dev** %8, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %82

15:                                               ; preds = %2
  %16 = load %struct.scif_dev*, %struct.scif_dev** %8, align 8
  %17 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %16, i32 0, i32 0
  %18 = call i32 @atomic_set(i32* %17, i32 0)
  store i64 1, i64* %7, align 8
  br label %19

19:                                               ; preds = %38, %15
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 0), align 8
  %22 = icmp ule i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %38

28:                                               ; preds = %23
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @scif_send_rmnode_msg(i64 %29, i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %28
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %19

41:                                               ; preds = %19
  %42 = load %struct.scif_dev*, %struct.scif_dev** %8, align 8
  %43 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.scif_dev*, %struct.scif_dev** %8, align 8
  %46 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %45, i32 0, i32 0
  %47 = call i32 @atomic_read(i32* %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* @SCIF_NODE_ALIVE_TIMEOUT, align 4
  %52 = call i32 @wait_event_timeout(i32 %44, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %41
  %56 = load %struct.scif_dev*, %struct.scif_dev** %8, align 8
  %57 = call i64 @_scifdev_alive(%struct.scif_dev* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.scif_dev*, %struct.scif_dev** %8, align 8
  %61 = call i32 @scif_send_exit(%struct.scif_dev* %60)
  br label %62

62:                                               ; preds = %59, %55, %41
  %63 = load %struct.scif_dev*, %struct.scif_dev** %8, align 8
  %64 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %63, i32 0, i32 0
  %65 = call i32 @atomic_set(i32* %64, i32 0)
  %66 = load i64, i64* @SCIF_MGMT_NODE, align 8
  %67 = load i64, i64* %3, align 8
  %68 = call i32 @scif_send_rmnode_msg(i64 %66, i64 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %62
  %72 = load %struct.scif_dev*, %struct.scif_dev** %8, align 8
  %73 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.scif_dev*, %struct.scif_dev** %8, align 8
  %76 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %75, i32 0, i32 0
  %77 = call i32 @atomic_read(i32* %76)
  %78 = icmp eq i32 %77, 1
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* @SCIF_NODE_ALIVE_TIMEOUT, align 4
  %81 = call i32 @wait_event_timeout(i32 %74, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %14, %71, %62
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @scif_send_rmnode_msg(i64, i64) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @_scifdev_alive(%struct.scif_dev*) #1

declare dso_local i32 @scif_send_exit(%struct.scif_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
