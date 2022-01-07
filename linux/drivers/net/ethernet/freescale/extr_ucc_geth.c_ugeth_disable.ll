; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth.c_ugeth_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth.c_ugeth_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_geth_private = type { %struct.ucc_fast_private*, %struct.TYPE_4__* }
%struct.ucc_fast_private = type { i32, i64, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@UCC_MAX_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"ucc_num out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@COMM_DIR_TX = common dso_local global i32 0, align 4
@COMM_DIR_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucc_geth_private*, i32)* @ugeth_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugeth_disable(%struct.ucc_geth_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucc_geth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucc_fast_private*, align 8
  store %struct.ucc_geth_private* %0, %struct.ucc_geth_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %8 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %7, i32 0, i32 0
  %9 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %8, align 8
  store %struct.ucc_fast_private* %9, %struct.ucc_fast_private** %6, align 8
  %10 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %11 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UCC_MAX_NUM, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %20 = call i64 @netif_msg_probe(%struct.ucc_geth_private* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %69

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @COMM_DIR_TX, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %6, align 8
  %34 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %6, align 8
  %39 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %44 = call i32 @ugeth_graceful_stop_tx(%struct.ucc_geth_private* %43)
  br label %45

45:                                               ; preds = %42, %37, %32, %27
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @COMM_DIR_RX, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %6, align 8
  %52 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %6, align 8
  %57 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %62 = call i32 @ugeth_graceful_stop_rx(%struct.ucc_geth_private* %61)
  br label %63

63:                                               ; preds = %60, %55, %50, %45
  %64 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %65 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %64, i32 0, i32 0
  %66 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @ucc_fast_disable(%struct.ucc_fast_private* %66, i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %24
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @netif_msg_probe(%struct.ucc_geth_private*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ugeth_graceful_stop_tx(%struct.ucc_geth_private*) #1

declare dso_local i32 @ugeth_graceful_stop_rx(%struct.ucc_geth_private*) #1

declare dso_local i32 @ucc_fast_disable(%struct.ucc_fast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
