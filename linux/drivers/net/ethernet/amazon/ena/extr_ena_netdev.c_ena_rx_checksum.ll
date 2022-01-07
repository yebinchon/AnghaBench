; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i32, %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ena_com_rx_ctx = type { i64, i64, i32, i32, i64, i64 }
%struct.sk_buff = type { i8* }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i8* null, align 8
@ENA_ETH_IO_L3_PROTO_IPV4 = common dso_local global i64 0, align 8
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"RX IPv4 header checksum error\0A\00", align 1
@ENA_ETH_IO_L4_PROTO_TCP = common dso_local global i64 0, align 8
@ENA_ETH_IO_L4_PROTO_UDP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"RX L4 checksum error\0A\00", align 1
@CHECKSUM_UNNECESSARY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_ring*, %struct.ena_com_rx_ctx*, %struct.sk_buff*)* @ena_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_rx_checksum(%struct.ena_ring* %0, %struct.ena_com_rx_ctx* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca %struct.ena_com_rx_ctx*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.ena_ring* %0, %struct.ena_ring** %4, align 8
  store %struct.ena_com_rx_ctx* %1, %struct.ena_com_rx_ctx** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %8 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i8*, i8** @CHECKSUM_NONE, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  br label %158

23:                                               ; preds = %3
  %24 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i8*, i8** @CHECKSUM_NONE, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %158

32:                                               ; preds = %23
  %33 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ENA_ETH_IO_L3_PROTO_IPV4, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i1 [ false, %32 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %43
  %49 = load i8*, i8** @CHECKSUM_NONE, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %53 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %52, i32 0, i32 0
  %54 = call i32 @u64_stats_update_begin(i32* %53)
  %55 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %56 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %61 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %60, i32 0, i32 0
  %62 = call i32 @u64_stats_update_end(i32* %61)
  %63 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %64 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @rx_err, align 4
  %67 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %68 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i32 @netif_dbg(i32 %65, i32 %66, %struct.TYPE_4__* %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %158

71:                                               ; preds = %43
  %72 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ENA_ETH_IO_L4_PROTO_TCP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ENA_ETH_IO_L4_PROTO_UDP, align 8
  %82 = icmp eq i64 %80, %81
  br label %83

83:                                               ; preds = %77, %71
  %84 = phi i1 [ true, %71 ], [ %82, %77 ]
  %85 = zext i1 %84 to i32
  %86 = call i64 @likely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %154

88:                                               ; preds = %83
  %89 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %90 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %88
  %95 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %96 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %95, i32 0, i32 0
  %97 = call i32 @u64_stats_update_begin(i32* %96)
  %98 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %99 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %104 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %103, i32 0, i32 0
  %105 = call i32 @u64_stats_update_end(i32* %104)
  %106 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %107 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @rx_err, align 4
  %110 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %111 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = call i32 @netif_dbg(i32 %108, i32 %109, %struct.TYPE_4__* %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i8*, i8** @CHECKSUM_NONE, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  br label %158

117:                                              ; preds = %88
  %118 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %119 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @likely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %117
  %124 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %128 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %127, i32 0, i32 0
  %129 = call i32 @u64_stats_update_begin(i32* %128)
  %130 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %131 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %136 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %135, i32 0, i32 0
  %137 = call i32 @u64_stats_update_end(i32* %136)
  br label %153

138:                                              ; preds = %117
  %139 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %140 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %139, i32 0, i32 0
  %141 = call i32 @u64_stats_update_begin(i32* %140)
  %142 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %143 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %148 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %147, i32 0, i32 0
  %149 = call i32 @u64_stats_update_end(i32* %148)
  %150 = load i8*, i8** @CHECKSUM_NONE, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %138, %123
  br label %158

154:                                              ; preds = %83
  %155 = load i8*, i8** @CHECKSUM_NONE, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  store i8* %155, i8** %157, align 8
  br label %158

158:                                              ; preds = %19, %28, %48, %94, %154, %153
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @netif_dbg(i32, i32, %struct.TYPE_4__*, i8*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
