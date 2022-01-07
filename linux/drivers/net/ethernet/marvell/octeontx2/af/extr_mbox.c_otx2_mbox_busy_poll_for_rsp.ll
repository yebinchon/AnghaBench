; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_mbox.c_otx2_mbox_busy_poll_for_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_mbox.c_otx2_mbox_busy_poll_for_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otx2_mbox = type { %struct.otx2_mbox_dev* }
%struct.otx2_mbox_dev = type { i64, i64 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @otx2_mbox_busy_poll_for_rsp(%struct.otx2_mbox* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.otx2_mbox*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.otx2_mbox_dev*, align 8
  %7 = alloca i64, align 8
  store %struct.otx2_mbox* %0, %struct.otx2_mbox** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.otx2_mbox*, %struct.otx2_mbox** %4, align 8
  %9 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %8, i32 0, i32 0
  %10 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %10, i64 %12
  store %struct.otx2_mbox_dev* %13, %struct.otx2_mbox_dev** %6, align 8
  %14 = load i32, i32* @jiffies, align 4
  %15 = load i32, i32* @HZ, align 4
  %16 = mul nsw i32 1, %15
  %17 = add nsw i32 %14, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %7, align 8
  br label %19

19:                                               ; preds = %34, %2
  %20 = load i32, i32* @jiffies, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @time_after(i32 %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %6, align 8
  %27 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %6, align 8
  %30 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %39

34:                                               ; preds = %25
  %35 = call i32 (...) @cpu_relax()
  br label %19

36:                                               ; preds = %19
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
