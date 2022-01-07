; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_epd.c_scif_cnctreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_epd.c_scif_cnctreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i32 }
%struct.scifmsg = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.scif_endpt = type { i64, i64, i32, i32, i32 }
%struct.scif_conreq = type { i32, %struct.scifmsg }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SCIF_CNCT_REJ = common dso_local global i32 0, align 4
@scif_dev = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_cnctreq(%struct.scif_dev* %0, %struct.scifmsg* %1) #0 {
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca %struct.scifmsg*, align 8
  %5 = alloca %struct.scif_endpt*, align 8
  %6 = alloca %struct.scif_conreq*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  store %struct.scifmsg* %1, %struct.scifmsg** %4, align 8
  store %struct.scif_endpt* null, %struct.scif_endpt** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.scif_conreq* @kmalloc(i32 24, i32 %7)
  store %struct.scif_conreq* %8, %struct.scif_conreq** %6, align 8
  %9 = load %struct.scif_conreq*, %struct.scif_conreq** %6, align 8
  %10 = icmp ne %struct.scif_conreq* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %61

12:                                               ; preds = %2
  %13 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %14 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.scif_endpt* @scif_find_listen_ep(i32 %16)
  store %struct.scif_endpt* %17, %struct.scif_endpt** %5, align 8
  %18 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %19 = icmp ne %struct.scif_endpt* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %58

21:                                               ; preds = %12
  %22 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %23 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %22, i32 0, i32 2
  %24 = call i32 @spin_lock(i32* %23)
  br label %25

25:                                               ; preds = %21
  %26 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %27 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %30 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %35 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %34, i32 0, i32 2
  %36 = call i32 @spin_unlock(i32* %35)
  br label %58

37:                                               ; preds = %25
  %38 = load %struct.scif_conreq*, %struct.scif_conreq** %6, align 8
  %39 = getelementptr inbounds %struct.scif_conreq, %struct.scif_conreq* %38, i32 0, i32 1
  %40 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %41 = bitcast %struct.scifmsg* %39 to i8*
  %42 = bitcast %struct.scifmsg* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = load %struct.scif_conreq*, %struct.scif_conreq** %6, align 8
  %44 = getelementptr inbounds %struct.scif_conreq, %struct.scif_conreq* %43, i32 0, i32 0
  %45 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %46 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %45, i32 0, i32 4
  %47 = call i32 @list_add_tail(i32* %44, i32* %46)
  %48 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %49 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %53 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %52, i32 0, i32 3
  %54 = call i32 @wake_up_interruptible(i32* %53)
  %55 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %56 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %55, i32 0, i32 2
  %57 = call i32 @spin_unlock(i32* %56)
  br label %73

58:                                               ; preds = %33, %20
  %59 = load %struct.scif_conreq*, %struct.scif_conreq** %6, align 8
  %60 = call i32 @kfree(%struct.scif_conreq* %59)
  br label %61

61:                                               ; preds = %58, %11
  %62 = load i32, i32* @SCIF_CNCT_REJ, align 4
  %63 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %64 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load i32*, i32** @scif_dev, align 8
  %66 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %67 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %72 = call i32 @scif_nodeqp_send(i32* %70, %struct.scifmsg* %71)
  br label %73

73:                                               ; preds = %61, %37
  ret void
}

declare dso_local %struct.scif_conreq* @kmalloc(i32, i32) #1

declare dso_local %struct.scif_endpt* @scif_find_listen_ep(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kfree(%struct.scif_conreq*) #1

declare dso_local i32 @scif_nodeqp_send(i32*, %struct.scifmsg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
