; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_send_scif_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_send_scif_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_endpt = type { i64, i32, i32, i8*, i32 }
%struct.scif_window = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.scifmsg = type { i8**, i8*, i32 }

@SCIFEP_CONNECTED = common dso_local global i64 0, align 8
@SCIF_REGISTER = common dso_local global i8* null, align 8
@OP_IN_PROGRESS = common dso_local global i64 0, align 8
@SCIF_NODE_ALIVE_TIMEOUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@OP_FAILED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@SCIF_FREE_VIRT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scif_endpt*, %struct.scif_window*)* @scif_send_scif_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scif_send_scif_register(%struct.scif_endpt* %0, %struct.scif_window* %1) #0 {
  %3 = alloca %struct.scif_endpt*, align 8
  %4 = alloca %struct.scif_window*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scifmsg, align 8
  store %struct.scif_endpt* %0, %struct.scif_endpt** %3, align 8
  store %struct.scif_window* %1, %struct.scif_window** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %8 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %6, i32 0, i32 2
  store i32 %9, i32* %10, align 8
  %11 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %12 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %11, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %6, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  store i8* %13, i8** %16, align 8
  %17 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %18 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %6, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  store i8* %20, i8** %23, align 8
  %24 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %25 = bitcast %struct.scif_window* %24 to i8*
  %26 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %6, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  store i8* %25, i8** %28, align 8
  %29 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %30 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %33 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SCIFEP_CONNECTED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %91

37:                                               ; preds = %2
  %38 = load i8*, i8** @SCIF_REGISTER, align 8
  %39 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %6, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load i64, i64* @OP_IN_PROGRESS, align 8
  %41 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %42 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %44 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @_scif_nodeqp_send(i32 %45, %struct.scifmsg* %6)
  store i32 %46, i32* %5, align 4
  %47 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %48 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %90, label %52

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %71, %52
  %54 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %55 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %58 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @OP_IN_PROGRESS, align 8
  %61 = icmp ne i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* @SCIF_NODE_ALIVE_TIMEOUT, align 4
  %64 = call i32 @wait_event_timeout(i32 %56, i32 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %53
  %68 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %69 = call i64 @scifdev_alive(%struct.scif_endpt* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %53

72:                                               ; preds = %67, %53
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  br label %79

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %75
  %80 = phi i32 [ %77, %75 ], [ 0, %78 ]
  store i32 %80, i32* %5, align 4
  %81 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %82 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @OP_FAILED, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* @ENOTCONN, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %86, %79
  br label %90

90:                                               ; preds = %89, %37
  br label %111

91:                                               ; preds = %2
  %92 = load i8*, i8** @SCIF_FREE_VIRT, align 8
  %93 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %6, i32 0, i32 1
  store i8* %92, i8** %93, align 8
  %94 = load i8*, i8** @SCIF_REGISTER, align 8
  %95 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %6, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 3
  store i8* %94, i8** %97, align 8
  %98 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %99 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @_scif_nodeqp_send(i32 %100, %struct.scifmsg* %6)
  store i32 %101, i32* %5, align 4
  %102 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %103 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %102, i32 0, i32 1
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %91
  %108 = load i32, i32* @ENOTCONN, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %107, %91
  br label %111

111:                                              ; preds = %110, %90
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_scif_nodeqp_send(i32, %struct.scifmsg*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @scifdev_alive(%struct.scif_endpt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
