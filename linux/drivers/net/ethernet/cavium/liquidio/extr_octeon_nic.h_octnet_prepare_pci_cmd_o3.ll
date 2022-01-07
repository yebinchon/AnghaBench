; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_nic.h_octnet_prepare_pci_cmd_o3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_nic.h_octnet_prepare_pci_cmd_o3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i32, i32 }
%union.octeon_instr_64B = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%union.octnic_cmd_setup = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.octeon_instr_irh = type { i64, i32, i32 }
%struct.octeon_instr_ih3 = type { i32, i32, i32, i32 }
%struct.octeon_instr_pki_ih3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%union.octnic_packet_params = type { i64, [8 x i8] }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@LIO_PCICMD_O3 = common dso_local global i32 0, align 4
@ORDERED_TAG = common dso_local global i32 0, align 4
@OPCODE_NIC = common dso_local global i32 0, align 4
@OPCODE_NIC_NW_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, %union.octeon_instr_64B*, %union.octnic_cmd_setup*, i64)* @octnet_prepare_pci_cmd_o3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octnet_prepare_pci_cmd_o3(%struct.octeon_device* %0, %union.octeon_instr_64B* %1, %union.octnic_cmd_setup* %2, i64 %3) #0 {
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %union.octeon_instr_64B*, align 8
  %7 = alloca %union.octnic_cmd_setup*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.octeon_instr_irh*, align 8
  %10 = alloca %struct.octeon_instr_ih3*, align 8
  %11 = alloca %struct.octeon_instr_pki_ih3*, align 8
  %12 = alloca %union.octnic_packet_params, align 8
  %13 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store %union.octeon_instr_64B* %1, %union.octeon_instr_64B** %6, align 8
  store %union.octnic_cmd_setup* %2, %union.octnic_cmd_setup** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %union.octeon_instr_64B*, %union.octeon_instr_64B** %6, align 8
  %15 = call i32 @memset(%union.octeon_instr_64B* %14, i32 0, i32 12)
  %16 = load %union.octeon_instr_64B*, %union.octeon_instr_64B** %6, align 8
  %17 = bitcast %union.octeon_instr_64B* %16 to %struct.TYPE_12__*
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = bitcast i32* %18 to %struct.octeon_instr_ih3*
  store %struct.octeon_instr_ih3* %19, %struct.octeon_instr_ih3** %10, align 8
  %20 = load %union.octeon_instr_64B*, %union.octeon_instr_64B** %6, align 8
  %21 = bitcast %union.octeon_instr_64B* %20 to %struct.TYPE_12__*
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = bitcast i32* %22 to %struct.octeon_instr_pki_ih3*
  store %struct.octeon_instr_pki_ih3* %23, %struct.octeon_instr_pki_ih3** %11, align 8
  %24 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %25 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %25, align 8
  %27 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %28 = bitcast %union.octnic_cmd_setup* %27 to %struct.TYPE_14__*
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %26, i64 %30
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.octeon_instr_ih3*, %struct.octeon_instr_ih3** %10, align 8
  %38 = getelementptr inbounds %struct.octeon_instr_ih3, %struct.octeon_instr_ih3* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @LIO_PCICMD_O3, align 4
  %40 = load %struct.octeon_instr_ih3*, %struct.octeon_instr_ih3** %10, align 8
  %41 = getelementptr inbounds %struct.octeon_instr_ih3, %struct.octeon_instr_ih3* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %43 = bitcast %union.octnic_cmd_setup* %42 to %struct.TYPE_14__*
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %4
  %48 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %49 = bitcast %union.octnic_cmd_setup* %48 to %struct.TYPE_14__*
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.octeon_instr_ih3*, %struct.octeon_instr_ih3** %10, align 8
  %54 = getelementptr inbounds %struct.octeon_instr_ih3, %struct.octeon_instr_ih3* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %65

55:                                               ; preds = %4
  %56 = load %struct.octeon_instr_ih3*, %struct.octeon_instr_ih3** %10, align 8
  %57 = getelementptr inbounds %struct.octeon_instr_ih3, %struct.octeon_instr_ih3* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %59 = bitcast %union.octnic_cmd_setup* %58 to %struct.TYPE_14__*
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.octeon_instr_ih3*, %struct.octeon_instr_ih3** %10, align 8
  %64 = getelementptr inbounds %struct.octeon_instr_ih3, %struct.octeon_instr_ih3* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %55, %47
  %66 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %11, align 8
  %67 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %11, align 8
  %69 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %11, align 8
  %71 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  %72 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %11, align 8
  %73 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %72, i32 0, i32 3
  store i32 1, i32* %73, align 4
  %74 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %75 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %75, align 8
  %77 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %78 = bitcast %union.octnic_cmd_setup* %77 to %struct.TYPE_14__*
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %76, i64 %80
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %11, align 8
  %88 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %87, i32 0, i32 9
  store i32 %86, i32* %88, align 8
  %89 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %90 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %90, align 8
  %92 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %93 = bitcast %union.octnic_cmd_setup* %92 to %struct.TYPE_14__*
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %91, i64 %95
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %13, align 4
  %103 = load i64, i64* %8, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %65
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %11, align 8
  %108 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %107, i32 0, i32 8
  store i64 %106, i64* %108, align 8
  br label %114

109:                                              ; preds = %65
  %110 = load i32, i32* %13, align 4
  %111 = call i64 @LIO_DATA(i32 %110)
  %112 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %11, align 8
  %113 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %112, i32 0, i32 8
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %109, %105
  %115 = load i32, i32* @ORDERED_TAG, align 4
  %116 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %11, align 8
  %117 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 4
  %118 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %119 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %118, i32 0, i32 0
  %120 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %119, align 8
  %121 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %122 = bitcast %union.octnic_cmd_setup* %121 to %struct.TYPE_14__*
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %120, i64 %124
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %11, align 8
  %132 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 8
  %133 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %11, align 8
  %134 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %133, i32 0, i32 4
  store i32 7, i32* %134, align 8
  %135 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %11, align 8
  %136 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %135, i32 0, i32 5
  store i32 8, i32* %136, align 4
  %137 = load %union.octeon_instr_64B*, %union.octeon_instr_64B** %6, align 8
  %138 = bitcast %union.octeon_instr_64B* %137 to %struct.TYPE_12__*
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = bitcast i32* %139 to %struct.octeon_instr_irh*
  store %struct.octeon_instr_irh* %140, %struct.octeon_instr_irh** %9, align 8
  %141 = load i32, i32* @OPCODE_NIC, align 4
  %142 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %9, align 8
  %143 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @OPCODE_NIC_NW_DATA, align 4
  %145 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %9, align 8
  %146 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  %147 = bitcast %union.octnic_packet_params* %12 to i64*
  store i64 0, i64* %147, align 8
  %148 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %149 = bitcast %union.octnic_cmd_setup* %148 to %struct.TYPE_14__*
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = bitcast %union.octnic_packet_params* %12 to %struct.TYPE_13__*
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %155 = bitcast %union.octnic_cmd_setup* %154 to %struct.TYPE_14__*
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = bitcast %union.octnic_packet_params* %12 to %struct.TYPE_13__*
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %161 = bitcast %union.octnic_cmd_setup* %160 to %struct.TYPE_14__*
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = bitcast %union.octnic_packet_params* %12 to %struct.TYPE_13__*
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %167 = bitcast %union.octnic_cmd_setup* %166 to %struct.TYPE_14__*
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = bitcast %union.octnic_packet_params* %12 to %struct.TYPE_13__*
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = bitcast %union.octnic_packet_params* %12 to i64*
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %9, align 8
  %175 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
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
