; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_mbox.c_otx2_mbox_wait_for_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_mbox.c_otx2_mbox_wait_for_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otx2_mbox = type { %struct.otx2_mbox_dev* }
%struct.otx2_mbox_dev = type { i64, i64 }

@MBOX_RSP_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @otx2_mbox_wait_for_rsp(%struct.otx2_mbox* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.otx2_mbox*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.otx2_mbox_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.otx2_mbox* %0, %struct.otx2_mbox** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.otx2_mbox*, %struct.otx2_mbox** %4, align 8
  %10 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %9, i32 0, i32 0
  %11 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %11, i64 %13
  store %struct.otx2_mbox_dev* %14, %struct.otx2_mbox_dev** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %15

15:                                               ; preds = %35, %2
  %16 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %6, align 8
  %17 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %6, align 8
  %20 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %15
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @msleep(i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @MBOX_RSP_TIMEOUT, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %23
  br label %15

36:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
