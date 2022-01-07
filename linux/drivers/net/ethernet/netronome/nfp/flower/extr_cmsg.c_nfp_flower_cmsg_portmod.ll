; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_portmod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_portmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_repr = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nfp_flower_cmsg_portmod = type { i32, i32, i64, i32 }
%struct.sk_buff = type { i32 }

@NFP_FLOWER_CMSG_TYPE_PORT_MOD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFP_FLOWER_CMSG_PORTMOD_MTU_CHANGE_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_flower_cmsg_portmod(%struct.nfp_repr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_repr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfp_flower_cmsg_portmod*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.nfp_repr* %0, %struct.nfp_repr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nfp_repr*, %struct.nfp_repr** %6, align 8
  %13 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = load i32, i32* @NFP_FLOWER_CMSG_TYPE_PORT_MOD, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sk_buff* @nfp_flower_cmsg_alloc(%struct.TYPE_8__* %14, i32 24, i32 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %61

23:                                               ; preds = %4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %25 = call %struct.nfp_flower_cmsg_portmod* @nfp_flower_cmsg_get_data(%struct.sk_buff* %24)
  store %struct.nfp_flower_cmsg_portmod* %25, %struct.nfp_flower_cmsg_portmod** %10, align 8
  %26 = load %struct.nfp_repr*, %struct.nfp_repr** %6, align 8
  %27 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cpu_to_be32(i32 %32)
  %34 = load %struct.nfp_flower_cmsg_portmod*, %struct.nfp_flower_cmsg_portmod** %10, align 8
  %35 = getelementptr inbounds %struct.nfp_flower_cmsg_portmod, %struct.nfp_flower_cmsg_portmod* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.nfp_flower_cmsg_portmod*, %struct.nfp_flower_cmsg_portmod** %10, align 8
  %37 = getelementptr inbounds %struct.nfp_flower_cmsg_portmod, %struct.nfp_flower_cmsg_portmod* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.nfp_flower_cmsg_portmod*, %struct.nfp_flower_cmsg_portmod** %10, align 8
  %40 = getelementptr inbounds %struct.nfp_flower_cmsg_portmod, %struct.nfp_flower_cmsg_portmod* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %23
  %44 = load i32, i32* @NFP_FLOWER_CMSG_PORTMOD_MTU_CHANGE_ONLY, align 4
  %45 = load %struct.nfp_flower_cmsg_portmod*, %struct.nfp_flower_cmsg_portmod** %10, align 8
  %46 = getelementptr inbounds %struct.nfp_flower_cmsg_portmod, %struct.nfp_flower_cmsg_portmod* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %43, %23
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @cpu_to_be16(i32 %50)
  %52 = load %struct.nfp_flower_cmsg_portmod*, %struct.nfp_flower_cmsg_portmod** %10, align 8
  %53 = getelementptr inbounds %struct.nfp_flower_cmsg_portmod, %struct.nfp_flower_cmsg_portmod* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.nfp_repr*, %struct.nfp_repr** %6, align 8
  %55 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %60 = call i32 @nfp_ctrl_tx(i32 %58, %struct.sk_buff* %59)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %49, %20
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.sk_buff* @nfp_flower_cmsg_alloc(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local %struct.nfp_flower_cmsg_portmod* @nfp_flower_cmsg_get_data(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @nfp_ctrl_tx(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
