; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_recv_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_recv_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i32 }
%struct.scifmsg = type { i64, i64* }
%struct.scif_endpt = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.scif_window = type { i32 }

@SCIFEP_CONNECTED = common dso_local global i64 0, align 8
@SCIF_REGISTER_ACK = common dso_local global i64 0, align 8
@SCIF_REGISTER_NACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_recv_reg(%struct.scif_dev* %0, %struct.scifmsg* %1) #0 {
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca %struct.scifmsg*, align 8
  %5 = alloca %struct.scif_endpt*, align 8
  %6 = alloca %struct.scif_window*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  store %struct.scifmsg* %1, %struct.scifmsg** %4, align 8
  %7 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %8 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.scif_endpt*
  store %struct.scif_endpt* %12, %struct.scif_endpt** %5, align 8
  %13 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %14 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.scif_window*
  store %struct.scif_window* %18, %struct.scif_window** %6, align 8
  %19 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %20 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %24 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %23, i32 0, i32 3
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %27 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SCIFEP_CONNECTED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %2
  %32 = load i64, i64* @SCIF_REGISTER_ACK, align 8
  %33 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %34 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %36 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %39 = call i32 @scif_nodeqp_send(i32 %37, %struct.scifmsg* %38)
  %40 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %41 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.scif_window*, %struct.scif_window** %6, align 8
  %44 = call i32 @scif_fixup_aper_base(i32 %42, %struct.scif_window* %43)
  %45 = load %struct.scif_window*, %struct.scif_window** %6, align 8
  %46 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %47 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = call i32 @scif_insert_window(%struct.scif_window* %45, i32* %48)
  br label %59

50:                                               ; preds = %2
  %51 = load i64, i64* @SCIF_REGISTER_NACK, align 8
  %52 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %53 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %55 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %58 = call i32 @scif_nodeqp_send(i32 %56, %struct.scifmsg* %57)
  br label %59

59:                                               ; preds = %50, %31
  %60 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %61 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %60, i32 0, i32 3
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %64 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %68 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.scif_window*, %struct.scif_window** %6, align 8
  %71 = call i32 @scif_destroy_remote_lookup(i32 %69, %struct.scif_window* %70)
  %72 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %73 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SCIF_REGISTER_NACK, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %59
  %78 = load %struct.scif_window*, %struct.scif_window** %6, align 8
  %79 = call i32 @scif_destroy_remote_window(%struct.scif_window* %78)
  br label %80

80:                                               ; preds = %77, %59
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @scif_nodeqp_send(i32, %struct.scifmsg*) #1

declare dso_local i32 @scif_fixup_aper_base(i32, %struct.scif_window*) #1

declare dso_local i32 @scif_insert_window(%struct.scif_window*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @scif_destroy_remote_lookup(i32, %struct.scif_window*) #1

declare dso_local i32 @scif_destroy_remote_window(%struct.scif_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
