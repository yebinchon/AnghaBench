; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_portreify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_portreify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_repr = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nfp_flower_cmsg_portreify = type { i32, i64, i32 }
%struct.sk_buff = type { i32 }

@NFP_FLOWER_CMSG_TYPE_PORT_REIFY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_flower_cmsg_portreify(%struct.nfp_repr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_repr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_flower_cmsg_portreify*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.nfp_repr* %0, %struct.nfp_repr** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nfp_repr*, %struct.nfp_repr** %4, align 8
  %9 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = load i32, i32* @NFP_FLOWER_CMSG_TYPE_PORT_REIFY, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sk_buff* @nfp_flower_cmsg_alloc(%struct.TYPE_8__* %10, i32 24, i32 %11, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call %struct.nfp_flower_cmsg_portreify* @nfp_flower_cmsg_get_data(%struct.sk_buff* %20)
  store %struct.nfp_flower_cmsg_portreify* %21, %struct.nfp_flower_cmsg_portreify** %6, align 8
  %22 = load %struct.nfp_repr*, %struct.nfp_repr** %4, align 8
  %23 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cpu_to_be32(i32 %28)
  %30 = load %struct.nfp_flower_cmsg_portreify*, %struct.nfp_flower_cmsg_portreify** %6, align 8
  %31 = getelementptr inbounds %struct.nfp_flower_cmsg_portreify, %struct.nfp_flower_cmsg_portreify* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.nfp_flower_cmsg_portreify*, %struct.nfp_flower_cmsg_portreify** %6, align 8
  %33 = getelementptr inbounds %struct.nfp_flower_cmsg_portreify, %struct.nfp_flower_cmsg_portreify* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @cpu_to_be16(i32 %34)
  %36 = load %struct.nfp_flower_cmsg_portreify*, %struct.nfp_flower_cmsg_portreify** %6, align 8
  %37 = getelementptr inbounds %struct.nfp_flower_cmsg_portreify, %struct.nfp_flower_cmsg_portreify* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.nfp_repr*, %struct.nfp_repr** %4, align 8
  %39 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = call i32 @nfp_ctrl_tx(i32 %42, %struct.sk_buff* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %19, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.sk_buff* @nfp_flower_cmsg_alloc(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local %struct.nfp_flower_cmsg_portreify* @nfp_flower_cmsg_get_data(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @nfp_ctrl_tx(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
