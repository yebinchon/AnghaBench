; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_map_data.c_rmnet_map_complement_ipv4_txporthdr_csum_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_map_data.c_rmnet_map_complement_ipv4_txporthdr_csum_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iphdr = type { i32, i64 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rmnet_map_complement_ipv4_txporthdr_csum_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmnet_map_complement_ipv4_txporthdr_csum_field(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.iphdr*
  store %struct.iphdr* %7, %struct.iphdr** %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %10 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %11, 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr i8, i8* %8, i64 %13
  store i8* %14, i8** %4, align 8
  %15 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %16 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IPPROTO_TCP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IPPROTO_UDP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20, %1
  %27 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @rmnet_map_get_csum_field(i64 %29, i8* %30)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %34, -1
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %26, %20
  ret void
}

declare dso_local i64 @rmnet_map_get_csum_field(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
