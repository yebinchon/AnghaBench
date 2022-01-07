; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth.c_ucc_geth_init_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth.c_ucc_geth_init_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_geth_private = type { %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32* }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Cannot configure internal struct, aborting\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Cannot configure net device, aborting\0A\00", align 1
@COMM_DIR_RX_AND_TX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Cannot enable net device, aborting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucc_geth_private*)* @ucc_geth_init_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucc_geth_init_mac(%struct.ucc_geth_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucc_geth_private*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.ucc_geth_private* %0, %struct.ucc_geth_private** %3, align 8
  %6 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %7 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %6, i32 0, i32 1
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %10 = call i32 @ucc_struct_init(%struct.ucc_geth_private* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %15 = load i32, i32* @ifup, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @netif_err(%struct.ucc_geth_private* %14, i32 %15, %struct.net_device* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %89

18:                                               ; preds = %1
  %19 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %20 = call i32 @ucc_geth_startup(%struct.ucc_geth_private* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %25 = load i32, i32* @ifup, align 4
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netif_err(%struct.ucc_geth_private* %24, i32 %25, %struct.net_device* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %89

28:                                               ; preds = %18
  %29 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %30 = call i32 @adjust_enet_interface(%struct.ucc_geth_private* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %35 = load i32, i32* @ifup, align 4
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @netif_err(%struct.ucc_geth_private* %34, i32 %35, %struct.net_device* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %89

38:                                               ; preds = %28
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %70 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %74 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @init_mac_station_addr_regs(i32 %43, i32 %48, i32 %53, i32 %58, i32 %63, i32 %68, i32* %72, i32* %76)
  %78 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %79 = load i32, i32* @COMM_DIR_RX_AND_TX, align 4
  %80 = call i32 @ugeth_enable(%struct.ucc_geth_private* %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %38
  %84 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %85 = load i32, i32* @ifup, align 4
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = call i32 @netif_err(%struct.ucc_geth_private* %84, i32 %85, %struct.net_device* %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %89

88:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %93

89:                                               ; preds = %83, %33, %23, %13
  %90 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %91 = call i32 @ucc_geth_stop(%struct.ucc_geth_private* %90)
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %88
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @ucc_struct_init(%struct.ucc_geth_private*) #1

declare dso_local i32 @netif_err(%struct.ucc_geth_private*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @ucc_geth_startup(%struct.ucc_geth_private*) #1

declare dso_local i32 @adjust_enet_interface(%struct.ucc_geth_private*) #1

declare dso_local i32 @init_mac_station_addr_regs(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ugeth_enable(%struct.ucc_geth_private*, i32) #1

declare dso_local i32 @ucc_geth_stop(%struct.ucc_geth_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
