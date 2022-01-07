; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_get_firmware_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_get_firmware_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.myri10ge_cmd = type { i32 }

@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@MXGEFW_CMD_GET_MAX_TSO6_HDR_SIZE = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@MXGEFW_CMD_GET_RX_RING_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed MXGEFW_CMD_GET_RX_RING_SIZE\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_priv*)* @myri10ge_get_firmware_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_get_firmware_capabilities(%struct.myri10ge_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.myri10ge_priv*, align 8
  %4 = alloca %struct.myri10ge_cmd, align 4
  %5 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %3, align 8
  %6 = load i32, i32* @NETIF_F_SG, align 4
  %7 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @NETIF_F_TSO, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %12 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %14 = load i32, i32* @MXGEFW_CMD_GET_MAX_TSO6_HDR_SIZE, align 4
  %15 = call i32 @myri10ge_send_cmd(%struct.myri10ge_priv* %13, i32 %14, %struct.myri10ge_cmd* %4, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %22 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @NETIF_F_TSO6, align 4
  %24 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %25 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %18, %1
  %29 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %30 = load i32, i32* @MXGEFW_CMD_GET_RX_RING_SIZE, align 4
  %31 = call i32 @myri10ge_send_cmd(%struct.myri10ge_priv* %29, i32 %30, %struct.myri10ge_cmd* %4, i32 0)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %36 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %51

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %4, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %45, 4
  %47 = mul i64 2, %46
  %48 = trunc i64 %47 to i32
  %49 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %50 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %42, %34
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @myri10ge_send_cmd(%struct.myri10ge_priv*, i32, %struct.myri10ge_cmd*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
