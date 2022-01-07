; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32, i32* }
%struct.hnae_vf_cb = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64 }
%struct.hns_ppe_cb = type { i32 }

@HNAE_PORT_SERVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_handle*, i8*)* @hns_ae_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_ae_get_regs(%struct.hnae_handle* %0, i8* %1) #0 {
  %3 = alloca %struct.hnae_handle*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hnae_vf_cb*, align 8
  %8 = alloca %struct.hns_ppe_cb*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %5, align 8
  %11 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %12 = call %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle* %11)
  store %struct.hnae_vf_cb* %12, %struct.hnae_vf_cb** %7, align 8
  %13 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %14 = call %struct.hns_ppe_cb* @hns_get_ppe_cb(%struct.hnae_handle* %13)
  store %struct.hns_ppe_cb* %14, %struct.hns_ppe_cb** %8, align 8
  %15 = load %struct.hns_ppe_cb*, %struct.hns_ppe_cb** %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @hns_ppe_get_regs(%struct.hns_ppe_cb* %15, i32* %16)
  %18 = call i32 (...) @hns_ppe_get_regs_count()
  %19 = load i32*, i32** %5, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32* %21, i32** %5, align 8
  %22 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %7, align 8
  %23 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @hns_rcb_get_common_regs(i32 %28, i32* %29)
  %31 = call i32 (...) @hns_rcb_get_common_regs_count()
  %32 = load i32*, i32** %5, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %55, %2
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %38 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %43 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @hns_rcb_get_ring_regs(i32 %48, i32* %49)
  %51 = call i32 (...) @hns_rcb_get_ring_regs_count()
  %52 = load i32*, i32** %5, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %5, align 8
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %35

58:                                               ; preds = %35
  %59 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %7, align 8
  %60 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @hns_mac_get_regs(%struct.TYPE_4__* %61, i32* %62)
  %64 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %7, align 8
  %65 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = call i32 @hns_mac_get_regs_count(%struct.TYPE_4__* %66)
  %68 = load i32*, i32** %5, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %5, align 8
  %71 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %7, align 8
  %72 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @HNAE_PORT_SERVICE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %58
  %79 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %7, align 8
  %80 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %7, align 8
  %83 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @hns_dsaf_get_regs(%struct.TYPE_5__* %81, i32 %84, i32* %85)
  br label %87

87:                                               ; preds = %78, %58
  ret void
}

declare dso_local %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle*) #1

declare dso_local %struct.hns_ppe_cb* @hns_get_ppe_cb(%struct.hnae_handle*) #1

declare dso_local i32 @hns_ppe_get_regs(%struct.hns_ppe_cb*, i32*) #1

declare dso_local i32 @hns_ppe_get_regs_count(...) #1

declare dso_local i32 @hns_rcb_get_common_regs(i32, i32*) #1

declare dso_local i32 @hns_rcb_get_common_regs_count(...) #1

declare dso_local i32 @hns_rcb_get_ring_regs(i32, i32*) #1

declare dso_local i32 @hns_rcb_get_ring_regs_count(...) #1

declare dso_local i32 @hns_mac_get_regs(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @hns_mac_get_regs_count(%struct.TYPE_4__*) #1

declare dso_local i32 @hns_dsaf_get_regs(%struct.TYPE_5__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
