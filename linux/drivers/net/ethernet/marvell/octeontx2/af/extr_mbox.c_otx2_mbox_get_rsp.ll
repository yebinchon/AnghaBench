; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_mbox.c_otx2_mbox_get_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_mbox.c_otx2_mbox_get_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otx2_mbox = type { i64, i64, %struct.otx2_mbox_dev* }
%struct.otx2_mbox_dev = type { i64, i64, %struct.mbox_msghdr* }
%struct.mbox_msghdr = type { i64, i64 }

@msgs_offset = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbox_msghdr* @otx2_mbox_get_rsp(%struct.otx2_mbox* %0, i32 %1, %struct.mbox_msghdr* %2) #0 {
  %4 = alloca %struct.mbox_msghdr*, align 8
  %5 = alloca %struct.otx2_mbox*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbox_msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.otx2_mbox_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mbox_msghdr*, align 8
  %13 = alloca %struct.mbox_msghdr*, align 8
  store %struct.otx2_mbox* %0, %struct.otx2_mbox** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mbox_msghdr* %2, %struct.mbox_msghdr** %7, align 8
  %14 = load %struct.otx2_mbox*, %struct.otx2_mbox** %5, align 8
  %15 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @msgs_offset, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %8, align 8
  %19 = load %struct.otx2_mbox*, %struct.otx2_mbox** %5, align 8
  %20 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @msgs_offset, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %9, align 8
  %24 = load %struct.otx2_mbox*, %struct.otx2_mbox** %5, align 8
  %25 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %24, i32 0, i32 2
  %26 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %26, i64 %28
  store %struct.otx2_mbox_dev* %29, %struct.otx2_mbox_dev** %10, align 8
  %30 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %10, align 8
  %31 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %10, align 8
  %34 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.mbox_msghdr* @ERR_PTR(i32 %39)
  store %struct.mbox_msghdr* %40, %struct.mbox_msghdr** %4, align 8
  br label %90

41:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %42

42:                                               ; preds = %83, %41
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %10, align 8
  %45 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %42
  %49 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %10, align 8
  %50 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %49, i32 0, i32 2
  %51 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %51, i64 %52
  store %struct.mbox_msghdr* %53, %struct.mbox_msghdr** %12, align 8
  %54 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %10, align 8
  %55 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %54, i32 0, i32 2
  %56 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %56, i64 %57
  store %struct.mbox_msghdr* %58, %struct.mbox_msghdr** %13, align 8
  %59 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %7, align 8
  %60 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %12, align 8
  %61 = icmp eq %struct.mbox_msghdr* %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %48
  %63 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %12, align 8
  %64 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %13, align 8
  %67 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  %73 = call %struct.mbox_msghdr* @ERR_PTR(i32 %72)
  store %struct.mbox_msghdr* %73, %struct.mbox_msghdr** %4, align 8
  br label %90

74:                                               ; preds = %62
  %75 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %13, align 8
  store %struct.mbox_msghdr* %75, %struct.mbox_msghdr** %4, align 8
  br label %90

76:                                               ; preds = %48
  %77 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %12, align 8
  %78 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %8, align 8
  %80 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %13, align 8
  %81 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %9, align 8
  br label %83

83:                                               ; preds = %76
  %84 = load i64, i64* %11, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %11, align 8
  br label %42

86:                                               ; preds = %42
  %87 = load i32, i32* @ENODEV, align 4
  %88 = sub nsw i32 0, %87
  %89 = call %struct.mbox_msghdr* @ERR_PTR(i32 %88)
  store %struct.mbox_msghdr* %89, %struct.mbox_msghdr** %4, align 8
  br label %90

90:                                               ; preds = %86, %74, %70, %37
  %91 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %4, align 8
  ret %struct.mbox_msghdr* %91
}

declare dso_local %struct.mbox_msghdr* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
