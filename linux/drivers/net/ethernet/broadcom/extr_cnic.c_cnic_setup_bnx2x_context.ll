; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_setup_bnx2x_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_setup_bnx2x_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32, i32, %struct.cnic_ctx*, %struct.cnic_eth_dev* }
%struct.cnic_ctx = type { i64 }
%struct.cnic_eth_dev = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_setup_bnx2x_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_setup_bnx2x_context(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca %struct.cnic_eth_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cnic_ctx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %10 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %11 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %10, i32 0, i32 0
  %12 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  store %struct.cnic_local* %12, %struct.cnic_local** %3, align 8
  %13 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %14 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %13, i32 0, i32 3
  %15 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %14, align 8
  store %struct.cnic_eth_dev* %15, %struct.cnic_eth_dev** %4, align 8
  %16 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %4, align 8
  %17 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %59, %1
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %22 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %19
  %26 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %27 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %26, i32 0, i32 2
  %28 = load %struct.cnic_ctx*, %struct.cnic_ctx** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cnic_ctx, %struct.cnic_ctx* %28, i64 %30
  store %struct.cnic_ctx* %31, %struct.cnic_ctx** %7, align 8
  %32 = load %struct.cnic_ctx*, %struct.cnic_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.cnic_ctx, %struct.cnic_ctx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %8, align 8
  %35 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %36 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %25
  %40 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %41 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %45, %46
  %48 = load i64, i64* %9, align 8
  %49 = xor i64 %48, -1
  %50 = and i64 %47, %49
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %39, %25
  %52 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @cnic_ctx_tbl_wr(%struct.cnic_dev* %52, i64 %56, i64 %57)
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %19

62:                                               ; preds = %19
  ret void
}

declare dso_local i32 @cnic_ctx_tbl_wr(%struct.cnic_dev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
