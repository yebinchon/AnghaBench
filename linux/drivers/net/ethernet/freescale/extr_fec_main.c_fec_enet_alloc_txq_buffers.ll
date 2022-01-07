; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_alloc_txq_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_alloc_txq_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i64, %struct.fec_enet_priv_tx_q** }
%struct.fec_enet_priv_tx_q = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32, %struct.bufdesc* }
%struct.bufdesc = type { i32, i8* }
%struct.bufdesc_ex = type { i8* }

@FEC_ENET_TX_FRSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BD_ENET_TX_INT = common dso_local global i32 0, align 4
@BD_SC_WRAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @fec_enet_alloc_txq_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_alloc_txq_buffers(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fec_enet_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bufdesc*, align 8
  %9 = alloca %struct.fec_enet_priv_tx_q*, align 8
  %10 = alloca %struct.bufdesc_ex*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %11)
  store %struct.fec_enet_private* %12, %struct.fec_enet_private** %6, align 8
  %13 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %14 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %13, i32 0, i32 1
  %15 = load %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_tx_q*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %15, i64 %17
  %19 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %18, align 8
  store %struct.fec_enet_priv_tx_q* %19, %struct.fec_enet_priv_tx_q** %9, align 8
  %20 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %21 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.bufdesc*, %struct.bufdesc** %22, align 8
  store %struct.bufdesc* %23, %struct.bufdesc** %8, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %73, %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %27 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %31, label %76

31:                                               ; preds = %24
  %32 = load i32, i32* @FEC_ENET_TX_FRSIZE, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @kmalloc(i32 %32, i32 %33)
  %35 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %36 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %42 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %31
  br label %87

50:                                               ; preds = %31
  %51 = call i32 @cpu_to_fec16(i32 0)
  %52 = load %struct.bufdesc*, %struct.bufdesc** %8, align 8
  %53 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = call i8* @cpu_to_fec32(i32 0)
  %55 = load %struct.bufdesc*, %struct.bufdesc** %8, align 8
  %56 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %58 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = load %struct.bufdesc*, %struct.bufdesc** %8, align 8
  %63 = bitcast %struct.bufdesc* %62 to %struct.bufdesc_ex*
  store %struct.bufdesc_ex* %63, %struct.bufdesc_ex** %10, align 8
  %64 = load i32, i32* @BD_ENET_TX_INT, align 4
  %65 = call i8* @cpu_to_fec32(i32 %64)
  %66 = load %struct.bufdesc_ex*, %struct.bufdesc_ex** %10, align 8
  %67 = getelementptr inbounds %struct.bufdesc_ex, %struct.bufdesc_ex* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %61, %50
  %69 = load %struct.bufdesc*, %struct.bufdesc** %8, align 8
  %70 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %71 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %70, i32 0, i32 0
  %72 = call %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc* %69, %struct.TYPE_3__* %71)
  store %struct.bufdesc* %72, %struct.bufdesc** %8, align 8
  br label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %24

76:                                               ; preds = %24
  %77 = load %struct.bufdesc*, %struct.bufdesc** %8, align 8
  %78 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %79 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %78, i32 0, i32 0
  %80 = call %struct.bufdesc* @fec_enet_get_prevdesc(%struct.bufdesc* %77, %struct.TYPE_3__* %79)
  store %struct.bufdesc* %80, %struct.bufdesc** %8, align 8
  %81 = load i32, i32* @BD_SC_WRAP, align 4
  %82 = call i32 @cpu_to_fec16(i32 %81)
  %83 = load %struct.bufdesc*, %struct.bufdesc** %8, align 8
  %84 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  store i32 0, i32* %3, align 4
  br label %92

87:                                               ; preds = %49
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = call i32 @fec_enet_free_buffers(%struct.net_device* %88)
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %87, %76
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_fec16(i32) #1

declare dso_local i8* @cpu_to_fec32(i32) #1

declare dso_local %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc*, %struct.TYPE_3__*) #1

declare dso_local %struct.bufdesc* @fec_enet_get_prevdesc(%struct.bufdesc*, %struct.TYPE_3__*) #1

declare dso_local i32 @fec_enet_free_buffers(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
