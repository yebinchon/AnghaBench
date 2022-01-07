; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_handle_bulletin_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_handle_bulletin_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.qed_eth_cb_ops* }
%struct.qed_eth_cb_ops = type { i32 (i8*, i32, i32)*, i32 (i8*, i64*, i32)* }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*)* @qed_handle_bulletin_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_handle_bulletin_change(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_eth_cb_ops*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.qed_eth_cb_ops*, %struct.qed_eth_cb_ops** %15, align 8
  store %struct.qed_eth_cb_ops* %16, %struct.qed_eth_cb_ops** %3, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %4, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %5, align 8
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %22 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %27 = call i32 @qed_vf_bulletin_get_udp_ports(%struct.qed_hwfn* %26, i32* %9, i32* %10)
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %29 = call i64 @qed_vf_bulletin_get_forced_mac(%struct.qed_hwfn* %28, i64* %20, i64* %7)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %1
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.qed_eth_cb_ops*, %struct.qed_eth_cb_ops** %3, align 8
  %37 = getelementptr inbounds %struct.qed_eth_cb_ops, %struct.qed_eth_cb_ops* %36, i32 0, i32 1
  %38 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %37, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 %38(i8* %39, i64* %20, i32 %44)
  br label %46

46:                                               ; preds = %35, %32, %1
  %47 = load %struct.qed_eth_cb_ops*, %struct.qed_eth_cb_ops** %3, align 8
  %48 = getelementptr inbounds %struct.qed_eth_cb_ops, %struct.qed_eth_cb_ops* %47, i32 0, i32 0
  %49 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %48, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 %49(i8* %50, i32 %51, i32 %52)
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %55 = call i32 @qed_link_update(%struct.qed_hwfn* %54, i32* null)
  %56 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %56)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @qed_vf_bulletin_get_udp_ports(%struct.qed_hwfn*, i32*, i32*) #2

declare dso_local i64 @qed_vf_bulletin_get_forced_mac(%struct.qed_hwfn*, i64*, i64*) #2

declare dso_local i32 @qed_link_update(%struct.qed_hwfn*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
