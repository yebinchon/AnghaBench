; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_sunvnet_port_add_txq_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_sunvnet_port_add_txq_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { i32, %struct.vnet* }
%struct.vnet = type { i64*, i32 }

@VNET_MAX_TXQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sunvnet_port_add_txq_common(%struct.vnet_port* %0) #0 {
  %2 = alloca %struct.vnet_port*, align 8
  %3 = alloca %struct.vnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vnet_port* %0, %struct.vnet_port** %2, align 8
  %6 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %7 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %6, i32 0, i32 1
  %8 = load %struct.vnet*, %struct.vnet** %7, align 8
  store %struct.vnet* %8, %struct.vnet** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %43, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @VNET_MAX_TXQS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load %struct.vnet*, %struct.vnet** %3, align 8
  %15 = getelementptr inbounds %struct.vnet, %struct.vnet* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %4, align 4
  br label %46

24:                                               ; preds = %13
  %25 = load %struct.vnet*, %struct.vnet** %3, align 8
  %26 = getelementptr inbounds %struct.vnet, %struct.vnet* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.vnet*, %struct.vnet** %3, align 8
  %33 = getelementptr inbounds %struct.vnet, %struct.vnet* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %31, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %24
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %9

46:                                               ; preds = %22, %9
  %47 = load %struct.vnet*, %struct.vnet** %3, align 8
  %48 = getelementptr inbounds %struct.vnet, %struct.vnet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.vnet*, %struct.vnet** %3, align 8
  %52 = getelementptr inbounds %struct.vnet, %struct.vnet* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %61 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
