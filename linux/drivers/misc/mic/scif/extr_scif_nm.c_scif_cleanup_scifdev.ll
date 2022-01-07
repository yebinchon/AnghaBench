; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nm.c_scif_cleanup_scifdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nm.c_scif_cleanup_scifdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.scif_dev = type { i32, i32*, %struct.scif_hw_dev* }
%struct.scif_hw_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.scif_hw_dev*, i32*, %struct.scif_dev*)* }

@scif_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_cleanup_scifdev(%struct.scif_dev* %0) #0 {
  %2 = alloca %struct.scif_dev*, align 8
  %3 = alloca %struct.scif_hw_dev*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %2, align 8
  %4 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %5 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %4, i32 0, i32 2
  %6 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %5, align 8
  store %struct.scif_hw_dev* %6, %struct.scif_hw_dev** %3, align 8
  %7 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %8 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %7, i32 0, i32 2
  %9 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %8, align 8
  %10 = icmp ne %struct.scif_hw_dev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %70

12:                                               ; preds = %1
  %13 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %14 = call i64 @scifdev_is_p2p(%struct.scif_dev* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %18 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %3, align 8
  %23 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.scif_hw_dev*, i32*, %struct.scif_dev*)*, i32 (%struct.scif_hw_dev*, i32*, %struct.scif_dev*)** %25, align 8
  %27 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %3, align 8
  %28 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %29 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %32 = call i32 %26(%struct.scif_hw_dev* %27, i32* %30, %struct.scif_dev* %31)
  %33 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %34 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %21, %16
  %36 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %37 = call i32 @scif_destroy_intr_wq(%struct.scif_dev* %36)
  br label %38

38:                                               ; preds = %35, %12
  %39 = call i32 @flush_work(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 1))
  %40 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %41 = call i32 @scif_destroy_p2p(%struct.scif_dev* %40)
  %42 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %43 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @scif_invalidate_ep(i32 %44)
  %46 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %47 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @scif_zap_mmaps(i32 %48)
  %50 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %51 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @scif_cleanup_rma_for_zombies(i32 %52)
  %54 = call i32 @flush_work(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 1))
  %55 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %56 = call i32 @scif_send_acks(%struct.scif_dev* %55)
  %57 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %58 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %38
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 0), align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %66 = call i32 @scif_send_exit(%struct.scif_dev* %65)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 0), align 4
  br label %67

67:                                               ; preds = %64, %61, %38
  %68 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %69 = call i32 @scif_cleanup_qp(%struct.scif_dev* %68)
  br label %70

70:                                               ; preds = %67, %11
  ret void
}

declare dso_local i64 @scifdev_is_p2p(%struct.scif_dev*) #1

declare dso_local i32 @scif_destroy_intr_wq(%struct.scif_dev*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @scif_destroy_p2p(%struct.scif_dev*) #1

declare dso_local i32 @scif_invalidate_ep(i32) #1

declare dso_local i32 @scif_zap_mmaps(i32) #1

declare dso_local i32 @scif_cleanup_rma_for_zombies(i32) #1

declare dso_local i32 @scif_send_acks(%struct.scif_dev*) #1

declare dso_local i32 @scif_send_exit(%struct.scif_dev*) #1

declare dso_local i32 @scif_cleanup_qp(%struct.scif_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
