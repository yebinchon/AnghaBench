; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_prep_tx_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_prep_tx_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.metadata_dst = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@METADATA_HW_PORT_MUX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@NFP_NET_META_PORTID = common dso_local global i32 0, align 4
@NFP_NET_META_FIELD_SIZE = common dso_local global i32 0, align 4
@NFP_NET_META_CONN_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64)* @nfp_net_prep_tx_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_prep_tx_meta(%struct.sk_buff* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.metadata_dst*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.metadata_dst* @skb_metadata_dst(%struct.sk_buff* %10)
  store %struct.metadata_dst* %11, %struct.metadata_dst** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.metadata_dst*, %struct.metadata_dst** %6, align 8
  %13 = icmp ne %struct.metadata_dst* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i1 [ false, %2 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %107

24:                                               ; preds = %18
  %25 = load %struct.metadata_dst*, %struct.metadata_dst** %6, align 8
  %26 = icmp ne %struct.metadata_dst* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.metadata_dst*, %struct.metadata_dst** %6, align 8
  %29 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @METADATA_HW_PORT_MUX, align 8
  %32 = icmp ne i64 %30, %31
  br label %33

33:                                               ; preds = %27, %24
  %34 = phi i1 [ false, %24 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %107

42:                                               ; preds = %38
  store %struct.metadata_dst* null, %struct.metadata_dst** %6, align 8
  br label %43

43:                                               ; preds = %42, %33
  %44 = load %struct.metadata_dst*, %struct.metadata_dst** %6, align 8
  %45 = icmp ne %struct.metadata_dst* %44, null
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = mul nsw i32 %48, 4
  %50 = add nsw i32 4, %49
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = mul nsw i32 %55, 8
  %57 = add nsw i32 %50, %56
  store i32 %57, i32* %9, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @skb_cow_head(%struct.sk_buff* %58, i32 %59)
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %43
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %107

66:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i8* @skb_push(%struct.sk_buff* %67, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8* %72, i8** %7, align 8
  %73 = load %struct.metadata_dst*, %struct.metadata_dst** %6, align 8
  %74 = icmp ne %struct.metadata_dst* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %66
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 -4
  store i8* %77, i8** %7, align 8
  %78 = load %struct.metadata_dst*, %struct.metadata_dst** %6, align 8
  %79 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @put_unaligned_be32(i32 %82, i8* %83)
  %85 = load i32, i32* @NFP_NET_META_PORTID, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %75, %66
  %87 = load i64, i64* %5, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 -8
  store i8* %91, i8** %7, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @memcpy(i8* %92, i64* %5, i32 8)
  %94 = load i32, i32* @NFP_NET_META_FIELD_SIZE, align 4
  %95 = load i32, i32* %8, align 4
  %96 = shl i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* @NFP_NET_META_CONN_HANDLE, align 4
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %89, %86
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 -4
  store i8* %102, i8** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @put_unaligned_be32(i32 %103, i8* %104)
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %100, %63, %41, %23
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.metadata_dst* @skb_metadata_dst(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @put_unaligned_be32(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
