; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_queue_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_wq_info = type { %struct.TYPE_4__*, i32, %struct.otx2_mbox, %struct.TYPE_3__*, %struct.otx2_mbox }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.otx2_mbox = type { i32, %struct.otx2_mbox_dev* }
%struct.otx2_mbox_dev = type { %struct.mbox_hdr* }
%struct.mbox_hdr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_wq_info*, i32, i32, i32)* @rvu_queue_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvu_queue_work(%struct.mbox_wq_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mbox_wq_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.otx2_mbox_dev*, align 8
  %10 = alloca %struct.otx2_mbox*, align 8
  %11 = alloca %struct.mbox_hdr*, align 8
  %12 = alloca i32, align 4
  store %struct.mbox_wq_info* %0, %struct.mbox_wq_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %12, align 4
  br label %14

14:                                               ; preds = %94, %4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %97

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %20, %21
  %23 = call i32 @BIT_ULL(i32 %22)
  %24 = and i32 %19, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %94

27:                                               ; preds = %18
  %28 = load %struct.mbox_wq_info*, %struct.mbox_wq_info** %5, align 8
  %29 = getelementptr inbounds %struct.mbox_wq_info, %struct.mbox_wq_info* %28, i32 0, i32 4
  store %struct.otx2_mbox* %29, %struct.otx2_mbox** %10, align 8
  %30 = load %struct.otx2_mbox*, %struct.otx2_mbox** %10, align 8
  %31 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %30, i32 0, i32 1
  %32 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %32, i64 %34
  store %struct.otx2_mbox_dev* %35, %struct.otx2_mbox_dev** %9, align 8
  %36 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %9, align 8
  %37 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %36, i32 0, i32 0
  %38 = load %struct.mbox_hdr*, %struct.mbox_hdr** %37, align 8
  %39 = load %struct.otx2_mbox*, %struct.otx2_mbox** %10, align 8
  %40 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mbox_hdr, %struct.mbox_hdr* %38, i64 %42
  store %struct.mbox_hdr* %43, %struct.mbox_hdr** %11, align 8
  %44 = load %struct.mbox_hdr*, %struct.mbox_hdr** %11, align 8
  %45 = getelementptr inbounds %struct.mbox_hdr, %struct.mbox_hdr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %27
  %49 = load %struct.mbox_wq_info*, %struct.mbox_wq_info** %5, align 8
  %50 = getelementptr inbounds %struct.mbox_wq_info, %struct.mbox_wq_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mbox_wq_info*, %struct.mbox_wq_info** %5, align 8
  %53 = getelementptr inbounds %struct.mbox_wq_info, %struct.mbox_wq_info* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @queue_work(i32 %51, i32* %58)
  br label %60

60:                                               ; preds = %48, %27
  %61 = load %struct.mbox_wq_info*, %struct.mbox_wq_info** %5, align 8
  %62 = getelementptr inbounds %struct.mbox_wq_info, %struct.mbox_wq_info* %61, i32 0, i32 2
  store %struct.otx2_mbox* %62, %struct.otx2_mbox** %10, align 8
  %63 = load %struct.otx2_mbox*, %struct.otx2_mbox** %10, align 8
  %64 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %63, i32 0, i32 1
  %65 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %65, i64 %67
  store %struct.otx2_mbox_dev* %68, %struct.otx2_mbox_dev** %9, align 8
  %69 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %9, align 8
  %70 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %69, i32 0, i32 0
  %71 = load %struct.mbox_hdr*, %struct.mbox_hdr** %70, align 8
  %72 = load %struct.otx2_mbox*, %struct.otx2_mbox** %10, align 8
  %73 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.mbox_hdr, %struct.mbox_hdr* %71, i64 %75
  store %struct.mbox_hdr* %76, %struct.mbox_hdr** %11, align 8
  %77 = load %struct.mbox_hdr*, %struct.mbox_hdr** %11, align 8
  %78 = getelementptr inbounds %struct.mbox_hdr, %struct.mbox_hdr* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %60
  %82 = load %struct.mbox_wq_info*, %struct.mbox_wq_info** %5, align 8
  %83 = getelementptr inbounds %struct.mbox_wq_info, %struct.mbox_wq_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mbox_wq_info*, %struct.mbox_wq_info** %5, align 8
  %86 = getelementptr inbounds %struct.mbox_wq_info, %struct.mbox_wq_info* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i32 @queue_work(i32 %84, i32* %91)
  br label %93

93:                                               ; preds = %81, %60
  br label %94

94:                                               ; preds = %93, %26
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %14

97:                                               ; preds = %14
  ret void
}

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
