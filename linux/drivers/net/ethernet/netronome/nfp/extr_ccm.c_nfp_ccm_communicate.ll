; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm.c_nfp_ccm_communicate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm.c_nfp_ccm_communicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_ccm = type { %struct.nfp_app* }
%struct.nfp_app = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.nfp_ccm_hdr = type { i32, i32, i32 }

@NFP_CCM_ABI_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cmsg drop - wrong type 0x%02x != 0x%02lx!\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"cmsg drop - type 0x%02x wrong size %d != %d!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @nfp_ccm_communicate(%struct.nfp_ccm* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nfp_ccm*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfp_app*, align 8
  %11 = alloca %struct.nfp_ccm_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nfp_ccm* %0, %struct.nfp_ccm** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.nfp_ccm*, %struct.nfp_ccm** %6, align 8
  %15 = getelementptr inbounds %struct.nfp_ccm, %struct.nfp_ccm* %14, i32 0, i32 0
  %16 = load %struct.nfp_app*, %struct.nfp_app** %15, align 8
  store %struct.nfp_app* %16, %struct.nfp_app** %10, align 8
  %17 = load %struct.nfp_app*, %struct.nfp_app** %10, align 8
  %18 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nfp_ctrl_lock(i32 %19)
  %21 = load %struct.nfp_ccm*, %struct.nfp_ccm** %6, align 8
  %22 = call i32 @nfp_ccm_alloc_tag(%struct.nfp_ccm* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %4
  %26 = load %struct.nfp_app*, %struct.nfp_app** %10, align 8
  %27 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nfp_ctrl_unlock(i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %30)
  %32 = load i32, i32* %13, align 4
  %33 = call %struct.sk_buff* @ERR_PTR(i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %5, align 8
  br label %105

34:                                               ; preds = %4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.nfp_ccm_hdr*
  store %struct.nfp_ccm_hdr* %39, %struct.nfp_ccm_hdr** %11, align 8
  %40 = load i32, i32* @NFP_CCM_ABI_VERSION, align 4
  %41 = load %struct.nfp_ccm_hdr*, %struct.nfp_ccm_hdr** %11, align 8
  %42 = getelementptr inbounds %struct.nfp_ccm_hdr, %struct.nfp_ccm_hdr* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.nfp_ccm_hdr*, %struct.nfp_ccm_hdr** %11, align 8
  %45 = getelementptr inbounds %struct.nfp_ccm_hdr, %struct.nfp_ccm_hdr* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @cpu_to_be16(i32 %46)
  %48 = load %struct.nfp_ccm_hdr*, %struct.nfp_ccm_hdr** %11, align 8
  %49 = getelementptr inbounds %struct.nfp_ccm_hdr, %struct.nfp_ccm_hdr* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nfp_app*, %struct.nfp_app** %10, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = call i32 @__nfp_app_ctrl_tx(%struct.nfp_app* %50, %struct.sk_buff* %51)
  %53 = load %struct.nfp_app*, %struct.nfp_app** %10, align 8
  %54 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nfp_ctrl_unlock(i32 %55)
  %57 = load %struct.nfp_ccm*, %struct.nfp_ccm** %6, align 8
  %58 = load %struct.nfp_app*, %struct.nfp_app** %10, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call %struct.sk_buff* @nfp_ccm_wait_reply(%struct.nfp_ccm* %57, %struct.nfp_app* %58, i32 %59, i32 %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %7, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = call i64 @IS_ERR(%struct.sk_buff* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %34
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %66, %struct.sk_buff** %5, align 8
  br label %105

67:                                               ; preds = %34
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = call i32 @nfp_ccm_get_type(%struct.sk_buff* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @__NFP_CCM_REPLY(i32 %71)
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.nfp_app*, %struct.nfp_app** %10, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @__NFP_CCM_REPLY(i32 %77)
  %79 = call i32 (%struct.nfp_app*, i8*, i32, i32, ...) @ccm_warn(%struct.nfp_app* %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %78)
  br label %99

80:                                               ; preds = %67
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.nfp_app*, %struct.nfp_app** %10, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (%struct.nfp_app*, i8*, i32, i32, ...) @ccm_warn(%struct.nfp_app* %90, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %94, i32 %95)
  br label %99

97:                                               ; preds = %83, %80
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %98, %struct.sk_buff** %5, align 8
  br label %105

99:                                               ; preds = %89, %74
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %100)
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  %104 = call %struct.sk_buff* @ERR_PTR(i32 %103)
  store %struct.sk_buff* %104, %struct.sk_buff** %5, align 8
  br label %105

105:                                              ; preds = %99, %97, %65, %25
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %106
}

declare dso_local i32 @nfp_ctrl_lock(i32) #1

declare dso_local i32 @nfp_ccm_alloc_tag(%struct.nfp_ccm*) #1

declare dso_local i32 @nfp_ctrl_unlock(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @__nfp_app_ctrl_tx(%struct.nfp_app*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @nfp_ccm_wait_reply(%struct.nfp_ccm*, %struct.nfp_app*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @nfp_ccm_get_type(%struct.sk_buff*) #1

declare dso_local i32 @__NFP_CCM_REPLY(i32) #1

declare dso_local i32 @ccm_warn(%struct.nfp_app*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
