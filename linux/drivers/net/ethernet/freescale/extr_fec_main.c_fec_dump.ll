; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { %struct.fec_enet_priv_tx_q** }
%struct.fec_enet_priv_tx_q = type { %struct.TYPE_2__, i32*, %struct.bufdesc* }
%struct.TYPE_2__ = type { %struct.bufdesc*, %struct.bufdesc* }
%struct.bufdesc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"TX ring dump\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Nr     SC     addr       len  SKB\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%3u %c%c 0x%04x 0x%08x %4u %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fec_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_dump(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  %4 = alloca %struct.bufdesc*, align 8
  %5 = alloca %struct.fec_enet_priv_tx_q*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fec_enet_private* %8, %struct.fec_enet_private** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netdev_info(%struct.net_device* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %13 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %12, i32 0, i32 0
  %14 = load %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_tx_q*** %13, align 8
  %15 = getelementptr inbounds %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %14, i64 0
  %16 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %15, align 8
  store %struct.fec_enet_priv_tx_q* %16, %struct.fec_enet_priv_tx_q** %5, align 8
  %17 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %18 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.bufdesc*, %struct.bufdesc** %19, align 8
  store %struct.bufdesc* %20, %struct.bufdesc** %4, align 8
  br label %21

21:                                               ; preds = %64, %1
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %24 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %25 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.bufdesc*, %struct.bufdesc** %26, align 8
  %28 = icmp eq %struct.bufdesc* %23, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 83, i32 32
  %31 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %32 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %33 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %32, i32 0, i32 2
  %34 = load %struct.bufdesc*, %struct.bufdesc** %33, align 8
  %35 = icmp eq %struct.bufdesc* %31, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 72, i32 32
  %38 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %39 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fec16_to_cpu(i32 %40)
  %42 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %43 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @fec32_to_cpu(i32 %44)
  %46 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %47 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fec16_to_cpu(i32 %48)
  %50 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %51 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %30, i32 %37, i32 %41, i32 %45, i32 %49, i32 %56)
  %58 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %59 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %60 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %59, i32 0, i32 0
  %61 = call %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc* %58, %struct.TYPE_2__* %60)
  store %struct.bufdesc* %61, %struct.bufdesc** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %21
  %65 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %66 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %67 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load %struct.bufdesc*, %struct.bufdesc** %68, align 8
  %70 = icmp ne %struct.bufdesc* %65, %69
  br i1 %70, label %21, label %71

71:                                               ; preds = %64
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @fec16_to_cpu(i32) #1

declare dso_local i32 @fec32_to_cpu(i32) #1

declare dso_local %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
