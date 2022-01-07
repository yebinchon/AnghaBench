; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth.c_ugeth_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth.c_ugeth_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_geth_private = type { %struct.TYPE_4__*, %struct.ucc_fast_private* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ucc_fast_private = type { i32, i32, i64, i64 }

@UCC_MAX_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"ucc_num out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@COMM_DIR_TX = common dso_local global i32 0, align 4
@COMM_DIR_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucc_geth_private*, i32)* @ugeth_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugeth_enable(%struct.ucc_geth_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucc_geth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucc_fast_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ucc_geth_private* %0, %struct.ucc_geth_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %10 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %9, i32 0, i32 1
  %11 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %10, align 8
  store %struct.ucc_fast_private* %11, %struct.ucc_fast_private** %6, align 8
  %12 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %13 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UCC_MAX_NUM, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %22 = call i64 @netif_msg_probe(%struct.ucc_geth_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %71

29:                                               ; preds = %2
  %30 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %6, align 8
  %31 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %6, align 8
  %34 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @COMM_DIR_TX, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %6, align 8
  %45 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %50 = call i32 @ugeth_restart_tx(%struct.ucc_geth_private* %49)
  br label %51

51:                                               ; preds = %48, %43, %40, %29
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @COMM_DIR_RX, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %6, align 8
  %61 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %66 = call i32 @ugeth_restart_rx(%struct.ucc_geth_private* %65)
  br label %67

67:                                               ; preds = %64, %59, %56, %51
  %68 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %6, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @ucc_fast_enable(%struct.ucc_fast_private* %68, i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %26
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @netif_msg_probe(%struct.ucc_geth_private*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ugeth_restart_tx(%struct.ucc_geth_private*) #1

declare dso_local i32 @ugeth_restart_rx(%struct.ucc_geth_private*) #1

declare dso_local i32 @ucc_fast_enable(%struct.ucc_fast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
