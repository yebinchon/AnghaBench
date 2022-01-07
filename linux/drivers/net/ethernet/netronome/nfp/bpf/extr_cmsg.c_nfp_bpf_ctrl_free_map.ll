; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_cmsg.c_nfp_bpf_ctrl_free_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_cmsg.c_nfp_bpf_ctrl_free_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app_bpf = type { i32 }
%struct.nfp_bpf_map = type { i32 }
%struct.cmsg_reply_map_free_tbl = type { i32 }
%struct.cmsg_req_map_free_tbl = type { i32 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"leaking map - failed to allocate msg\0A\00", align 1
@NFP_CCM_TYPE_BPF_MAP_FREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"leaking map - I/O error\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"leaking map - FW responded with: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_bpf_ctrl_free_map(%struct.nfp_app_bpf* %0, %struct.nfp_bpf_map* %1) #0 {
  %3 = alloca %struct.nfp_app_bpf*, align 8
  %4 = alloca %struct.nfp_bpf_map*, align 8
  %5 = alloca %struct.cmsg_reply_map_free_tbl*, align 8
  %6 = alloca %struct.cmsg_req_map_free_tbl*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.nfp_app_bpf* %0, %struct.nfp_app_bpf** %3, align 8
  store %struct.nfp_bpf_map* %1, %struct.nfp_bpf_map** %4, align 8
  %9 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %3, align 8
  %10 = call %struct.sk_buff* @nfp_bpf_cmsg_alloc(%struct.nfp_app_bpf* %9, i32 4)
  store %struct.sk_buff* %10, %struct.sk_buff** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %3, align 8
  %15 = call i32 (%struct.nfp_app_bpf*, i8*, ...) @cmsg_warn(%struct.nfp_app_bpf* %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.cmsg_req_map_free_tbl*
  store %struct.cmsg_req_map_free_tbl* %21, %struct.cmsg_req_map_free_tbl** %6, align 8
  %22 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %4, align 8
  %23 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cpu_to_be32(i32 %24)
  %26 = load %struct.cmsg_req_map_free_tbl*, %struct.cmsg_req_map_free_tbl** %6, align 8
  %27 = getelementptr inbounds %struct.cmsg_req_map_free_tbl, %struct.cmsg_req_map_free_tbl* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %3, align 8
  %29 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %28, i32 0, i32 0
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = load i32, i32* @NFP_CCM_TYPE_BPF_MAP_FREE, align 4
  %32 = call %struct.sk_buff* @nfp_ccm_communicate(i32* %29, %struct.sk_buff* %30, i32 %31, i32 4)
  store %struct.sk_buff* %32, %struct.sk_buff** %7, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = call i64 @IS_ERR(%struct.sk_buff* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %16
  %37 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %3, align 8
  %38 = call i32 (%struct.nfp_app_bpf*, i8*, ...) @cmsg_warn(%struct.nfp_app_bpf* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %58

39:                                               ; preds = %16
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = bitcast i8* %43 to %struct.cmsg_reply_map_free_tbl*
  store %struct.cmsg_reply_map_free_tbl* %44, %struct.cmsg_reply_map_free_tbl** %5, align 8
  %45 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %3, align 8
  %46 = load %struct.cmsg_reply_map_free_tbl*, %struct.cmsg_reply_map_free_tbl** %5, align 8
  %47 = getelementptr inbounds %struct.cmsg_reply_map_free_tbl, %struct.cmsg_reply_map_free_tbl* %46, i32 0, i32 0
  %48 = call i32 @nfp_bpf_ctrl_rc_to_errno(%struct.nfp_app_bpf* %45, i32* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %3, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (%struct.nfp_app_bpf*, i8*, ...) @cmsg_warn(%struct.nfp_app_bpf* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %39
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = call i32 @dev_consume_skb_any(%struct.sk_buff* %56)
  br label %58

58:                                               ; preds = %55, %36, %13
  ret void
}

declare dso_local %struct.sk_buff* @nfp_bpf_cmsg_alloc(%struct.nfp_app_bpf*, i32) #1

declare dso_local i32 @cmsg_warn(%struct.nfp_app_bpf*, i8*, ...) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local %struct.sk_buff* @nfp_ccm_communicate(i32*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @nfp_bpf_ctrl_rc_to_errno(%struct.nfp_app_bpf*, i32*) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
