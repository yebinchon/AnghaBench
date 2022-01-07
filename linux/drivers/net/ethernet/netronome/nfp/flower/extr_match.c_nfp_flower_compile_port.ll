; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_flower_in_port = type { i8* }
%struct.netlink_ext_ack = type { i32 }

@NFP_FL_PORT_TYPE_TUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"unsupported offload: invalid ingress interface for match offload\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_flower_in_port*, i32, i32, i32, %struct.netlink_ext_ack*)* @nfp_flower_compile_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_compile_port(%struct.nfp_flower_in_port* %0, i32 %1, i32 %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_flower_in_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.nfp_flower_in_port* %0, %struct.nfp_flower_in_port** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = call i8* @cpu_to_be32(i32 -1)
  %16 = load %struct.nfp_flower_in_port*, %struct.nfp_flower_in_port** %7, align 8
  %17 = getelementptr inbounds %struct.nfp_flower_in_port, %struct.nfp_flower_in_port* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  store i32 0, i32* %6, align 4
  br label %42

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* @NFP_FL_PORT_TYPE_TUN, align 4
  %23 = load i32, i32* %10, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = load %struct.nfp_flower_in_port*, %struct.nfp_flower_in_port** %7, align 8
  %27 = getelementptr inbounds %struct.nfp_flower_in_port, %struct.nfp_flower_in_port* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  br label %41

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %33 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %32, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %42

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = call i8* @cpu_to_be32(i32 %37)
  %39 = load %struct.nfp_flower_in_port*, %struct.nfp_flower_in_port** %7, align 8
  %40 = getelementptr inbounds %struct.nfp_flower_in_port, %struct.nfp_flower_in_port* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %36, %21
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %31, %14
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
