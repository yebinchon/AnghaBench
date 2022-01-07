; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_xdp_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_xdp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veth_rq = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.veth_xdp_tx_bq = type { i32 }
%struct.sk_buff = type { i64 }
%struct.xdp_frame = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.veth_rq*, i32, i32*, %struct.veth_xdp_tx_bq*)* @veth_xdp_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_xdp_rcv(%struct.veth_rq* %0, i32 %1, i32* %2, %struct.veth_xdp_tx_bq* %3) #0 {
  %5 = alloca %struct.veth_rq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.veth_xdp_tx_bq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.xdp_frame*, align 8
  store %struct.veth_rq* %0, %struct.veth_rq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.veth_xdp_tx_bq* %3, %struct.veth_xdp_tx_bq** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %82, %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %85

21:                                               ; preds = %17
  %22 = load %struct.veth_rq*, %struct.veth_rq** %5, align 8
  %23 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %22, i32 0, i32 2
  %24 = call i8* @__ptr_ring_consume(i32* %23)
  store i8* %24, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %25 = load i8*, i8** %13, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %85

28:                                               ; preds = %21
  %29 = load i8*, i8** %13, align 8
  %30 = call i64 @veth_is_xdp_frame(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i8*, i8** %13, align 8
  %34 = call %struct.xdp_frame* @veth_ptr_to_xdp(i8* %33)
  store %struct.xdp_frame* %34, %struct.xdp_frame** %16, align 8
  %35 = load %struct.xdp_frame*, %struct.xdp_frame** %16, align 8
  %36 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %12, align 4
  %42 = load %struct.veth_rq*, %struct.veth_rq** %5, align 8
  %43 = load %struct.xdp_frame*, %struct.xdp_frame** %16, align 8
  %44 = load %struct.veth_xdp_tx_bq*, %struct.veth_xdp_tx_bq** %8, align 8
  %45 = call %struct.sk_buff* @veth_xdp_rcv_one(%struct.veth_rq* %42, %struct.xdp_frame* %43, i32* %14, %struct.veth_xdp_tx_bq* %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %15, align 8
  br label %60

46:                                               ; preds = %28
  %47 = load i8*, i8** %13, align 8
  %48 = bitcast i8* %47 to %struct.sk_buff*
  store %struct.sk_buff* %48, %struct.sk_buff** %15, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %12, align 4
  %56 = load %struct.veth_rq*, %struct.veth_rq** %5, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %58 = load %struct.veth_xdp_tx_bq*, %struct.veth_xdp_tx_bq** %8, align 8
  %59 = call %struct.sk_buff* @veth_xdp_rcv_skb(%struct.veth_rq* %56, %struct.sk_buff* %57, i32* %14, %struct.veth_xdp_tx_bq* %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %15, align 8
  br label %60

60:                                               ; preds = %46, %32
  %61 = load i32, i32* %14, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %66 = icmp ne %struct.sk_buff* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.veth_rq*, %struct.veth_rq** %5, align 8
  %69 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %68, i32 0, i32 1
  %70 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %71 = call i32 @napi_gro_receive(i32* %69, %struct.sk_buff* %70)
  br label %79

72:                                               ; preds = %60
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %67
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %17

85:                                               ; preds = %27, %17
  %86 = load %struct.veth_rq*, %struct.veth_rq** %5, align 8
  %87 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = call i32 @u64_stats_update_begin(i32* %88)
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.veth_rq*, %struct.veth_rq** %5, align 8
  %92 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %90
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.veth_rq*, %struct.veth_rq** %5, align 8
  %98 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %96
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.veth_rq*, %struct.veth_rq** %5, align 8
  %104 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %102
  store i32 %107, i32* %105, align 4
  %108 = load %struct.veth_rq*, %struct.veth_rq** %5, align 8
  %109 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  %111 = call i32 @u64_stats_update_end(i32* %110)
  %112 = load i32, i32* %10, align 4
  ret i32 %112
}

declare dso_local i8* @__ptr_ring_consume(i32*) #1

declare dso_local i64 @veth_is_xdp_frame(i8*) #1

declare dso_local %struct.xdp_frame* @veth_ptr_to_xdp(i8*) #1

declare dso_local %struct.sk_buff* @veth_xdp_rcv_one(%struct.veth_rq*, %struct.xdp_frame*, i32*, %struct.veth_xdp_tx_bq*) #1

declare dso_local %struct.sk_buff* @veth_xdp_rcv_skb(%struct.veth_rq*, %struct.sk_buff*, i32*, %struct.veth_xdp_tx_bq*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
