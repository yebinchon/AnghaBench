; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp.h_netcp_push_psdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp.h_netcp_push_psdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netcp_packet = type { i64, i32* }

@NETCP_PSDATA_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.netcp_packet*, i32)* @netcp_push_psdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @netcp_push_psdata(%struct.netcp_packet* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.netcp_packet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.netcp_packet* %0, %struct.netcp_packet** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 3
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %41

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = lshr i32 %13, 2
  store i32 %14, i32* %7, align 4
  %15 = load %struct.netcp_packet*, %struct.netcp_packet** %4, align 8
  %16 = getelementptr inbounds %struct.netcp_packet, %struct.netcp_packet* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load i64, i64* @NETCP_PSDATA_LEN, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  store i32* null, i32** %3, align 8
  br label %41

24:                                               ; preds = %12
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = load %struct.netcp_packet*, %struct.netcp_packet** %4, align 8
  %28 = getelementptr inbounds %struct.netcp_packet, %struct.netcp_packet* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.netcp_packet*, %struct.netcp_packet** %4, align 8
  %32 = getelementptr inbounds %struct.netcp_packet, %struct.netcp_packet* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @NETCP_PSDATA_LEN, align 8
  %35 = load %struct.netcp_packet*, %struct.netcp_packet** %4, align 8
  %36 = getelementptr inbounds %struct.netcp_packet, %struct.netcp_packet* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  store i32* %40, i32** %3, align 8
  br label %41

41:                                               ; preds = %24, %23, %11
  %42 = load i32*, i32** %3, align 8
  ret i32* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
