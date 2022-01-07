; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_read_bulletin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_read_bulletin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_vf_iov* }
%struct.qed_vf_iov = type { %struct.TYPE_2__, %struct.qed_bulletin_content }
%struct.TYPE_2__ = type { i64, %struct.qed_bulletin_content* }
%struct.qed_bulletin_content = type { i64, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Read a bulletin update %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_vf_read_bulletin(%struct.qed_hwfn* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.qed_vf_iov*, align 8
  %7 = alloca %struct.qed_bulletin_content, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %11 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %10, i32 0, i32 0
  %12 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %11, align 8
  store %struct.qed_vf_iov* %12, %struct.qed_vf_iov** %6, align 8
  store i32 4, i32* %9, align 4
  %13 = load i32*, i32** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %15 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %16, align 8
  %18 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %19 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @memcpy(%struct.qed_bulletin_content* %7, %struct.qed_bulletin_content* %17, i64 %21)
  %23 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %7, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %26 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

31:                                               ; preds = %2
  %32 = bitcast %struct.qed_bulletin_content* %7 to i32*
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %37 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = sub nsw i64 %39, %41
  %43 = call i32 @crc32(i32 0, i32* %35, i64 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %7, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %31
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %65

51:                                               ; preds = %31
  %52 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %53 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %52, i32 0, i32 1
  %54 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %55 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @memcpy(%struct.qed_bulletin_content* %53, %struct.qed_bulletin_content* %7, i64 %57)
  %59 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %60 = load i32, i32* @QED_MSG_IOV, align 4
  %61 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %7, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %59, i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %5, align 8
  store i32 1, i32* %64, align 4
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %51, %48, %30
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @memcpy(%struct.qed_bulletin_content*, %struct.qed_bulletin_content*, i64) #1

declare dso_local i32 @crc32(i32, i32*, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
