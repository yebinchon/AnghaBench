; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_mbox.c_otx2_mbox_alloc_msg_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_mbox.c_otx2_mbox_alloc_msg_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_msghdr = type { i64, i32 }
%struct.otx2_mbox = type { i64, i64, i32, %struct.otx2_mbox_dev* }
%struct.otx2_mbox_dev = type { i64, i64, i32, %struct.mbox_msghdr*, i64 }

@MBOX_MSG_ALIGN = common dso_local global i32 0, align 4
@msgs_offset = common dso_local global i64 0, align 8
@OTX2_MBOX_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbox_msghdr* @otx2_mbox_alloc_msg_rsp(%struct.otx2_mbox* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.otx2_mbox*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.otx2_mbox_dev*, align 8
  %10 = alloca %struct.mbox_msghdr*, align 8
  store %struct.otx2_mbox* %0, %struct.otx2_mbox** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.otx2_mbox*, %struct.otx2_mbox** %5, align 8
  %12 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %11, i32 0, i32 3
  %13 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %13, i64 %15
  store %struct.otx2_mbox_dev* %16, %struct.otx2_mbox_dev** %9, align 8
  store %struct.mbox_msghdr* null, %struct.mbox_msghdr** %10, align 8
  %17 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %9, align 8
  %18 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %17, i32 0, i32 2
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MBOX_MSG_ALIGN, align 4
  %22 = call i32 @ALIGN(i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MBOX_MSG_ALIGN, align 4
  %25 = call i32 @ALIGN(i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %9, align 8
  %27 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load %struct.otx2_mbox*, %struct.otx2_mbox** %5, align 8
  %33 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @msgs_offset, align 8
  %36 = sub nsw i64 %34, %35
  %37 = icmp sgt i64 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  br label %108

39:                                               ; preds = %4
  %40 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %9, align 8
  %41 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load %struct.otx2_mbox*, %struct.otx2_mbox** %5, align 8
  %47 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @msgs_offset, align 8
  %50 = sub nsw i64 %48, %49
  %51 = icmp sgt i64 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %108

53:                                               ; preds = %39
  %54 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %9, align 8
  %55 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %9, align 8
  %60 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %59, i32 0, i32 4
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %9, align 8
  %63 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %9, align 8
  %67 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %66, i32 0, i32 3
  %68 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %67, align 8
  %69 = load %struct.otx2_mbox*, %struct.otx2_mbox** %5, align 8
  %70 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %68, i64 %72
  %74 = load i64, i64* @msgs_offset, align 8
  %75 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %73, i64 %74
  %76 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %9, align 8
  %77 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %75, i64 %78
  store %struct.mbox_msghdr* %79, %struct.mbox_msghdr** %10, align 8
  %80 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %10, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 16, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memset(%struct.mbox_msghdr* %80, i32 0, i32 %84)
  %86 = load i32, i32* @OTX2_MBOX_VERSION, align 4
  %87 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %10, align 8
  %88 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %9, align 8
  %92 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %9, align 8
  %98 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %9, align 8
  %102 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @msgs_offset, align 8
  %105 = add nsw i64 %103, %104
  %106 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %10, align 8
  %107 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %61, %52, %38
  %109 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %9, align 8
  %110 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %109, i32 0, i32 2
  %111 = call i32 @spin_unlock(i32* %110)
  %112 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %10, align 8
  ret %struct.mbox_msghdr* %112
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @memset(%struct.mbox_msghdr*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
