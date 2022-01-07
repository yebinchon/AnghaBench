; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_cmsg.c_nfp_bpf_ctrl_alloc_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_cmsg.c_nfp_bpf_ctrl_alloc_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app_bpf = type { i32 }
%struct.bpf_map = type { i32, i32, i32, i32 }
%struct.cmsg_reply_map_alloc_tbl = type { i32, i32 }
%struct.cmsg_req_map_alloc_tbl = type { i64, i8*, i8*, i8*, i8* }
%struct.sk_buff = type { i64 }

@ENOMEM = common dso_local global i64 0, align 8
@NFP_CCM_TYPE_BPF_MAP_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfp_bpf_ctrl_alloc_map(%struct.nfp_app_bpf* %0, %struct.bpf_map* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.nfp_app_bpf*, align 8
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca %struct.cmsg_reply_map_alloc_tbl*, align 8
  %7 = alloca %struct.cmsg_req_map_alloc_tbl*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nfp_app_bpf* %0, %struct.nfp_app_bpf** %4, align 8
  store %struct.bpf_map* %1, %struct.bpf_map** %5, align 8
  %11 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %12 = call %struct.sk_buff* @nfp_bpf_cmsg_alloc(%struct.nfp_app_bpf* %11, i32 40)
  store %struct.sk_buff* %12, %struct.sk_buff** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* @ENOMEM, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %3, align 8
  br label %87

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.cmsg_req_map_alloc_tbl*
  store %struct.cmsg_req_map_alloc_tbl* %23, %struct.cmsg_req_map_alloc_tbl** %7, align 8
  %24 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %25 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @cpu_to_be32(i32 %26)
  %28 = load %struct.cmsg_req_map_alloc_tbl*, %struct.cmsg_req_map_alloc_tbl** %7, align 8
  %29 = getelementptr inbounds %struct.cmsg_req_map_alloc_tbl, %struct.cmsg_req_map_alloc_tbl* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %31 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = load %struct.cmsg_req_map_alloc_tbl*, %struct.cmsg_req_map_alloc_tbl** %7, align 8
  %35 = getelementptr inbounds %struct.cmsg_req_map_alloc_tbl, %struct.cmsg_req_map_alloc_tbl* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %37 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_be32(i32 %38)
  %40 = load %struct.cmsg_req_map_alloc_tbl*, %struct.cmsg_req_map_alloc_tbl** %7, align 8
  %41 = getelementptr inbounds %struct.cmsg_req_map_alloc_tbl, %struct.cmsg_req_map_alloc_tbl* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %43 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = load %struct.cmsg_req_map_alloc_tbl*, %struct.cmsg_req_map_alloc_tbl** %7, align 8
  %47 = getelementptr inbounds %struct.cmsg_req_map_alloc_tbl, %struct.cmsg_req_map_alloc_tbl* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.cmsg_req_map_alloc_tbl*, %struct.cmsg_req_map_alloc_tbl** %7, align 8
  %49 = getelementptr inbounds %struct.cmsg_req_map_alloc_tbl, %struct.cmsg_req_map_alloc_tbl* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %51 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %50, i32 0, i32 0
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = load i32, i32* @NFP_CCM_TYPE_BPF_MAP_ALLOC, align 4
  %54 = call %struct.sk_buff* @nfp_ccm_communicate(i32* %51, %struct.sk_buff* %52, i32 %53, i32 8)
  store %struct.sk_buff* %54, %struct.sk_buff** %8, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call i64 @IS_ERR(%struct.sk_buff* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %18
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = call i64 @PTR_ERR(%struct.sk_buff* %59)
  store i64 %60, i64* %3, align 8
  br label %87

61:                                               ; preds = %18
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = bitcast i8* %65 to %struct.cmsg_reply_map_alloc_tbl*
  store %struct.cmsg_reply_map_alloc_tbl* %66, %struct.cmsg_reply_map_alloc_tbl** %6, align 8
  %67 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %68 = load %struct.cmsg_reply_map_alloc_tbl*, %struct.cmsg_reply_map_alloc_tbl** %6, align 8
  %69 = getelementptr inbounds %struct.cmsg_reply_map_alloc_tbl, %struct.cmsg_reply_map_alloc_tbl* %68, i32 0, i32 1
  %70 = call i32 @nfp_bpf_ctrl_rc_to_errno(%struct.nfp_app_bpf* %67, i32* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %82

74:                                               ; preds = %61
  %75 = load %struct.cmsg_reply_map_alloc_tbl*, %struct.cmsg_reply_map_alloc_tbl** %6, align 8
  %76 = getelementptr inbounds %struct.cmsg_reply_map_alloc_tbl, %struct.cmsg_reply_map_alloc_tbl* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @be32_to_cpu(i32 %77)
  store i64 %78, i64* %9, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = call i32 @dev_consume_skb_any(%struct.sk_buff* %79)
  %81 = load i64, i64* %9, align 8
  store i64 %81, i64* %3, align 8
  br label %87

82:                                               ; preds = %73
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %83)
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %3, align 8
  br label %87

87:                                               ; preds = %82, %74, %58, %15
  %88 = load i64, i64* %3, align 8
  ret i64 %88
}

declare dso_local %struct.sk_buff* @nfp_bpf_cmsg_alloc(%struct.nfp_app_bpf*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local %struct.sk_buff* @nfp_ccm_communicate(i32*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i64 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @nfp_bpf_ctrl_rc_to_errno(%struct.nfp_app_bpf*, i32*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
