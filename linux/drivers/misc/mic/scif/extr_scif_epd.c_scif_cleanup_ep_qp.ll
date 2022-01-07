; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_epd.c_scif_cleanup_ep_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_epd.c_scif_cleanup_ep_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_endpt = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.scif_qp* }
%struct.scif_qp = type { i32, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }

@SCIF_ENDPT_QP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_cleanup_ep_qp(%struct.scif_endpt* %0) #0 {
  %2 = alloca %struct.scif_endpt*, align 8
  %3 = alloca %struct.scif_qp*, align 8
  store %struct.scif_endpt* %0, %struct.scif_endpt** %2, align 8
  %4 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %5 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  store %struct.scif_qp* %7, %struct.scif_qp** %3, align 8
  %8 = load %struct.scif_qp*, %struct.scif_qp** %3, align 8
  %9 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.scif_qp*, %struct.scif_qp** %3, align 8
  %15 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load %struct.scif_qp*, %struct.scif_qp** %3, align 8
  %20 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %24 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @scif_iounmap(i8* %18, i32 %22, i32 %25)
  %27 = load %struct.scif_qp*, %struct.scif_qp** %3, align 8
  %28 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %13, %1
  %31 = load %struct.scif_qp*, %struct.scif_qp** %3, align 8
  %32 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.scif_qp*, %struct.scif_qp** %3, align 8
  %37 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %41 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @scif_iounmap(i8* %39, i32 32, i32 %42)
  %44 = load %struct.scif_qp*, %struct.scif_qp** %3, align 8
  %45 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %35, %30
  %47 = load %struct.scif_qp*, %struct.scif_qp** %3, align 8
  %48 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.scif_qp*, %struct.scif_qp** %3, align 8
  %53 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %56 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @scif_unmap_single(i32 %54, i32 %57, i32 32)
  %59 = load %struct.scif_qp*, %struct.scif_qp** %3, align 8
  %60 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %51, %46
  %62 = load %struct.scif_qp*, %struct.scif_qp** %3, align 8
  %63 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.scif_qp*, %struct.scif_qp** %3, align 8
  %68 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %71 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SCIF_ENDPT_QP_SIZE, align 4
  %74 = call i32 @scif_unmap_single(i32 %69, i32 %72, i32 %73)
  %75 = load %struct.scif_qp*, %struct.scif_qp** %3, align 8
  %76 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %66, %61
  ret void
}

declare dso_local i32 @scif_iounmap(i8*, i32, i32) #1

declare dso_local i32 @scif_unmap_single(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
