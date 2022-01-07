; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_vf.c_enetc_msg_vsi_set_primary_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_vf.c_enetc_msg_vsi_set_primary_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_ndev_priv = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.enetc_msg_cmd_set_primary_mac = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.enetc_msg_swbd = type { i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to alloc Tx msg (size: %d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENETC_MSG_CMD_MNG_MAC = common dso_local global i32 0, align 4
@ENETC_MSG_CMD_MNG_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enetc_ndev_priv*, %struct.sockaddr*)* @enetc_msg_vsi_set_primary_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_msg_vsi_set_primary_mac_addr(%struct.enetc_ndev_priv* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.enetc_ndev_priv*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.enetc_msg_cmd_set_primary_mac*, align 8
  %7 = alloca %struct.enetc_msg_swbd, align 8
  %8 = alloca i32, align 4
  store %struct.enetc_ndev_priv* %0, %struct.enetc_ndev_priv** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %9 = call i32 @ALIGN(i32 12, i32 64)
  %10 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %7, i32 0, i32 2
  store i32 %9, i32* %10, align 8
  %11 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %12 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %7, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %7, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @dma_alloc_coherent(i32 %13, i32 %15, i32* %16, i32 %17)
  %19 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %7, i32 0, i32 1
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %7, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %2
  %24 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %25 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %7, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %63

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %7, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.enetc_msg_cmd_set_primary_mac*
  store %struct.enetc_msg_cmd_set_primary_mac* %35, %struct.enetc_msg_cmd_set_primary_mac** %6, align 8
  %36 = load i32, i32* @ENETC_MSG_CMD_MNG_MAC, align 4
  %37 = load %struct.enetc_msg_cmd_set_primary_mac*, %struct.enetc_msg_cmd_set_primary_mac** %6, align 8
  %38 = getelementptr inbounds %struct.enetc_msg_cmd_set_primary_mac, %struct.enetc_msg_cmd_set_primary_mac* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @ENETC_MSG_CMD_MNG_ADD, align 4
  %41 = load %struct.enetc_msg_cmd_set_primary_mac*, %struct.enetc_msg_cmd_set_primary_mac** %6, align 8
  %42 = getelementptr inbounds %struct.enetc_msg_cmd_set_primary_mac, %struct.enetc_msg_cmd_set_primary_mac* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.enetc_msg_cmd_set_primary_mac*, %struct.enetc_msg_cmd_set_primary_mac** %6, align 8
  %45 = getelementptr inbounds %struct.enetc_msg_cmd_set_primary_mac, %struct.enetc_msg_cmd_set_primary_mac* %44, i32 0, i32 0
  %46 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %47 = call i32 @memcpy(i32* %45, %struct.sockaddr* %46, i32 4)
  %48 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %49 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @enetc_msg_vsi_send(i32 %50, %struct.enetc_msg_swbd* %7)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %53 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %7, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %7, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dma_free_coherent(i32 %54, i32 %56, i64 %58, i32 %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %32, %23
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @enetc_msg_vsi_send(i32, %struct.enetc_msg_swbd*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
