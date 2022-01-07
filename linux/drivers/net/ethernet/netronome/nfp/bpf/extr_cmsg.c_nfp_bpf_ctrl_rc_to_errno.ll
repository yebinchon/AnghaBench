; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_cmsg.c_nfp_bpf_ctrl_rc_to_errno.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_cmsg.c_nfp_bpf_ctrl_rc_to_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app_bpf = type { i32 }
%struct.cmsg_reply_map_simple = type { i32 }

@nfp_bpf_ctrl_rc_to_errno.res_table = internal constant [143 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -130, i32 -128, i32 -129, i32 -133, i32 -132, i32 -131, i32 -134], align 16
@.str = private unnamed_addr constant [38 x i8] c"FW responded with invalid status: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app_bpf*, %struct.cmsg_reply_map_simple*)* @nfp_bpf_ctrl_rc_to_errno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_ctrl_rc_to_errno(%struct.nfp_app_bpf* %0, %struct.cmsg_reply_map_simple* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app_bpf*, align 8
  %5 = alloca %struct.cmsg_reply_map_simple*, align 8
  %6 = alloca i64, align 8
  store %struct.nfp_app_bpf* %0, %struct.nfp_app_bpf** %4, align 8
  store %struct.cmsg_reply_map_simple* %1, %struct.cmsg_reply_map_simple** %5, align 8
  %7 = load %struct.cmsg_reply_map_simple*, %struct.cmsg_reply_map_simple** %5, align 8
  %8 = getelementptr inbounds %struct.cmsg_reply_map_simple, %struct.cmsg_reply_map_simple* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @be32_to_cpu(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([143 x i32], [143 x i32]* @nfp_bpf_ctrl_rc_to_errno.res_table, i64 0, i64 0))
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @cmsg_warn(%struct.nfp_app_bpf* %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %16)
  store i32 -130, i32* %3, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds [143 x i32], [143 x i32]* @nfp_bpf_ctrl_rc_to_errno.res_table, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cmsg_warn(%struct.nfp_app_bpf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
