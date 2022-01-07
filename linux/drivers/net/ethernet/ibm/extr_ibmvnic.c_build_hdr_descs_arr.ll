; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_build_hdr_descs_arr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_build_hdr_descs_arr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_tx_buff = type { i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvnic_tx_buff*, i32*, i32)* @build_hdr_descs_arr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_hdr_descs_arr(%struct.ibmvnic_tx_buff* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ibmvnic_tx_buff*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ibmvnic_tx_buff* %0, %struct.ibmvnic_tx_buff** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 12, i1 false)
  %11 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %4, align 8
  %12 = getelementptr inbounds %struct.ibmvnic_tx_buff, %struct.ibmvnic_tx_buff* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %4, align 8
  %16 = getelementptr inbounds %struct.ibmvnic_tx_buff, %struct.ibmvnic_tx_buff* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %19 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %4, align 8
  %20 = getelementptr inbounds %struct.ibmvnic_tx_buff, %struct.ibmvnic_tx_buff* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @build_hdr_data(i32 %14, i32 %17, i32* %18, i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %27 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %4, align 8
  %28 = getelementptr inbounds %struct.ibmvnic_tx_buff, %struct.ibmvnic_tx_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i64 @create_hdr_descs(i32 %23, i32* %24, i32 %25, i32* %26, i64 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %31
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @build_hdr_data(i32, i32, i32*, i32*) #2

declare dso_local i64 @create_hdr_descs(i32, i32*, i32, i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
