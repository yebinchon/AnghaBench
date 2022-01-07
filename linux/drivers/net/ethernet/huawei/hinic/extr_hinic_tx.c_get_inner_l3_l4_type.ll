; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_get_inner_l3_l4_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_get_inner_l3_l4_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64* }
%union.hinic_l3 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%union.hinic_l4 = type { i64* }
%struct.TYPE_3__ = type { i32, i64 }

@TX_OFFLOAD_CSUM = common dso_local global i32 0, align 4
@IPV4_PKT_NO_CHKSUM_OFFLOAD = common dso_local global i32 0, align 4
@IPV4_PKT_WITH_CHKSUM_OFFLOAD = common dso_local global i32 0, align 4
@IPV6_PKT = common dso_local global i32 0, align 4
@L3TYPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %union.hinic_l3*, %union.hinic_l4*, i32, i32*, i64*)* @get_inner_l3_l4_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_inner_l3_l4_type(%struct.sk_buff* %0, %union.hinic_l3* %1, %union.hinic_l4* %2, i32 %3, i32* %4, i64* %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %union.hinic_l3*, align 8
  %9 = alloca %union.hinic_l4*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %union.hinic_l3* %1, %union.hinic_l3** %8, align 8
  store %union.hinic_l4* %2, %union.hinic_l4** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i64* %5, i64** %12, align 8
  %16 = load %union.hinic_l3*, %union.hinic_l3** %8, align 8
  %17 = bitcast %union.hinic_l3* %16 to %struct.TYPE_3__**
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %39

22:                                               ; preds = %6
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @TX_OFFLOAD_CSUM, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @IPV4_PKT_NO_CHKSUM_OFFLOAD, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @IPV4_PKT_WITH_CHKSUM_OFFLOAD, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = load i32*, i32** %11, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %union.hinic_l3*, %union.hinic_l3** %8, align 8
  %34 = bitcast %union.hinic_l3* %33 to %struct.TYPE_3__**
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %12, align 8
  store i64 %37, i64* %38, align 8
  br label %84

39:                                               ; preds = %6
  %40 = load %union.hinic_l3*, %union.hinic_l3** %8, align 8
  %41 = bitcast %union.hinic_l3* %40 to %struct.TYPE_3__**
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 6
  br i1 %45, label %46, label %79

46:                                               ; preds = %39
  %47 = load i32, i32* @IPV6_PKT, align 4
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %union.hinic_l3*, %union.hinic_l3** %8, align 8
  %50 = bitcast %union.hinic_l3* %49 to i64**
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 8
  store i64* %52, i64** %13, align 8
  %53 = load %union.hinic_l3*, %union.hinic_l3** %8, align 8
  %54 = bitcast %union.hinic_l3* %53 to %struct.TYPE_4__**
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %12, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i64*, i64** %13, align 8
  %60 = load %union.hinic_l4*, %union.hinic_l4** %9, align 8
  %61 = bitcast %union.hinic_l4* %60 to i64**
  %62 = load i64*, i64** %61, align 8
  %63 = icmp ne i64* %59, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %46
  %65 = load i64*, i64** %13, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = ptrtoint i64* %65 to i64
  %70 = ptrtoint i64* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %14, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i64*, i64** %12, align 8
  %77 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %74, i32 %75, i64* %76, i32* %15)
  br label %78

78:                                               ; preds = %64, %46
  br label %83

79:                                               ; preds = %39
  %80 = load i32, i32* @L3TYPE_UNKNOWN, align 4
  %81 = load i32*, i32** %11, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i64*, i64** %12, align 8
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %79, %78
  br label %84

84:                                               ; preds = %83, %30
  ret void
}

declare dso_local i32 @ipv6_skip_exthdr(%struct.sk_buff*, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
