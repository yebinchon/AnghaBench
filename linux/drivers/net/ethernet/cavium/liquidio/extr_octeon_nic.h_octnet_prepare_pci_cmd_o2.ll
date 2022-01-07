; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_nic.h_octnet_prepare_pci_cmd_o2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_nic.h_octnet_prepare_pci_cmd_o2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%union.octeon_instr_64B = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%union.octnic_cmd_setup = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.octeon_instr_ih2 = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.octeon_instr_irh = type { i64, i32, i32 }
%union.octnic_packet_params = type { i64, [8 x i8] }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@LIO_PCICMD_O2 = common dso_local global i32 0, align 4
@ORDERED_TAG = common dso_local global i32 0, align 4
@DEFAULT_POW_GRP = common dso_local global i32 0, align 4
@OPCODE_NIC = common dso_local global i32 0, align 4
@OPCODE_NIC_NW_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, %union.octeon_instr_64B*, %union.octnic_cmd_setup*, i64)* @octnet_prepare_pci_cmd_o2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octnet_prepare_pci_cmd_o2(%struct.octeon_device* %0, %union.octeon_instr_64B* %1, %union.octnic_cmd_setup* %2, i64 %3) #0 {
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %union.octeon_instr_64B*, align 8
  %7 = alloca %union.octnic_cmd_setup*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.octeon_instr_ih2*, align 8
  %10 = alloca %struct.octeon_instr_irh*, align 8
  %11 = alloca %union.octnic_packet_params, align 8
  %12 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store %union.octeon_instr_64B* %1, %union.octeon_instr_64B** %6, align 8
  store %union.octnic_cmd_setup* %2, %union.octnic_cmd_setup** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %union.octeon_instr_64B*, %union.octeon_instr_64B** %6, align 8
  %14 = call i32 @memset(%union.octeon_instr_64B* %13, i32 0, i32 8)
  %15 = load %union.octeon_instr_64B*, %union.octeon_instr_64B** %6, align 8
  %16 = bitcast %union.octeon_instr_64B* %15 to %struct.TYPE_12__*
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = bitcast i32* %17 to %struct.octeon_instr_ih2*
  store %struct.octeon_instr_ih2* %18, %struct.octeon_instr_ih2** %9, align 8
  %19 = load i32, i32* @LIO_PCICMD_O2, align 4
  %20 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %9, align 8
  %21 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @ORDERED_TAG, align 4
  %23 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %9, align 8
  %24 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @DEFAULT_POW_GRP, align 4
  %26 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %9, align 8
  %27 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %29, align 8
  %31 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %32 = bitcast %union.octnic_cmd_setup* %31 to %struct.TYPE_14__*
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %30, i64 %34
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %12, align 4
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %4
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %9, align 8
  %47 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %46, i32 0, i32 4
  store i64 %45, i64* %47, align 8
  br label %53

48:                                               ; preds = %4
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @LIO_DATA(i32 %49)
  %51 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %9, align 8
  %52 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %51, i32 0, i32 4
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %44
  %54 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %9, align 8
  %55 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* %12, align 4
  %57 = and i32 %56, 3
  %58 = add nsw i32 %57, 4
  %59 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %9, align 8
  %60 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %62 = bitcast %union.octnic_cmd_setup* %61 to %struct.TYPE_14__*
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %53
  %67 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %68 = bitcast %union.octnic_cmd_setup* %67 to %struct.TYPE_14__*
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %9, align 8
  %73 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %84

74:                                               ; preds = %53
  %75 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %9, align 8
  %76 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  %77 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %78 = bitcast %union.octnic_cmd_setup* %77 to %struct.TYPE_14__*
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %9, align 8
  %83 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %74, %66
  %85 = load %union.octeon_instr_64B*, %union.octeon_instr_64B** %6, align 8
  %86 = bitcast %union.octeon_instr_64B* %85 to %struct.TYPE_12__*
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = bitcast i32* %87 to %struct.octeon_instr_irh*
  store %struct.octeon_instr_irh* %88, %struct.octeon_instr_irh** %10, align 8
  %89 = load i32, i32* @OPCODE_NIC, align 4
  %90 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %10, align 8
  %91 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @OPCODE_NIC_NW_DATA, align 4
  %93 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %10, align 8
  %94 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = bitcast %union.octnic_packet_params* %11 to i64*
  store i64 0, i64* %95, align 8
  %96 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %97 = bitcast %union.octnic_cmd_setup* %96 to %struct.TYPE_14__*
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = bitcast %union.octnic_packet_params* %11 to %struct.TYPE_13__*
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %103 = bitcast %union.octnic_cmd_setup* %102 to %struct.TYPE_14__*
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = bitcast %union.octnic_packet_params* %11 to %struct.TYPE_13__*
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %109 = bitcast %union.octnic_cmd_setup* %108 to %struct.TYPE_14__*
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = bitcast %union.octnic_packet_params* %11 to %struct.TYPE_13__*
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %115 = bitcast %union.octnic_cmd_setup* %114 to %struct.TYPE_14__*
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = bitcast %union.octnic_packet_params* %11 to %struct.TYPE_13__*
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = bitcast %union.octnic_packet_params* %11 to i64*
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %10, align 8
  %123 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  ret void
}

declare dso_local i32 @memset(%union.octeon_instr_64B*, i32, i32) #1

declare dso_local i64 @LIO_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
