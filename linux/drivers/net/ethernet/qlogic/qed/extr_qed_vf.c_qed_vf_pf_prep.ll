; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_vf_iov* }
%struct.qed_vf_iov = type { i64, i32*, i64, i64, i32 }
%struct.vfpf_first_tlv = type { i64 }

@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"preparing to send 0x%04x tlv over vf pf channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.qed_hwfn*, i32, i32)* @qed_vf_pf_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qed_vf_pf_prep(%struct.qed_hwfn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_vf_iov*, align 8
  %8 = alloca i8*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 0
  %11 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %10, align 8
  store %struct.qed_vf_iov* %11, %struct.qed_vf_iov** %7, align 8
  %12 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %7, align 8
  %13 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %12, i32 0, i32 4
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %16 = load i32, i32* @QED_MSG_IOV, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %15, i32 %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %7, align 8
  %20 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %7, align 8
  %24 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %7, align 8
  %26 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @memset(i64 %27, i32 0, i32 4)
  %29 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %7, align 8
  %30 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @memset(i64 %31, i32 0, i32 4)
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %34 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %7, align 8
  %35 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %34, i32 0, i32 1
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i8* @qed_add_tlv(%struct.qed_hwfn* %33, i32** %35, i32 %36, i32 %37)
  store i8* %38, i8** %8, align 8
  %39 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %7, align 8
  %40 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = bitcast i8* %42 to %struct.vfpf_first_tlv*
  %44 = getelementptr inbounds %struct.vfpf_first_tlv, %struct.vfpf_first_tlv* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load i8*, i8** %8, align 8
  ret i8* %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i8* @qed_add_tlv(%struct.qed_hwfn*, i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
