; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_octnet_nic_stats_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_octnet_nic_stats_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.nic_tx_stats, %struct.nic_rx_stats }
%struct.nic_tx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nic_rx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.octeon_soft_command = type { i64 }
%struct.oct_nic_stats_resp = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nic_tx_stats, %struct.nic_rx_stats }

@OCTEON_REQUEST_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"sc OPCODE_NIC_PORT_STATS command failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i64, i8*)* @octnet_nic_stats_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octnet_nic_stats_callback(%struct.octeon_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.octeon_soft_command*, align 8
  %8 = alloca %struct.oct_nic_stats_resp*, align 8
  %9 = alloca %struct.nic_rx_stats*, align 8
  %10 = alloca %struct.nic_tx_stats*, align 8
  %11 = alloca %struct.nic_rx_stats*, align 8
  %12 = alloca %struct.nic_tx_stats*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %14, %struct.octeon_soft_command** %7, align 8
  %15 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %7, align 8
  %16 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.oct_nic_stats_resp*
  store %struct.oct_nic_stats_resp* %18, %struct.oct_nic_stats_resp** %8, align 8
  %19 = load %struct.oct_nic_stats_resp*, %struct.oct_nic_stats_resp** %8, align 8
  %20 = getelementptr inbounds %struct.oct_nic_stats_resp, %struct.oct_nic_stats_resp* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store %struct.nic_rx_stats* %21, %struct.nic_rx_stats** %9, align 8
  %22 = load %struct.oct_nic_stats_resp*, %struct.oct_nic_stats_resp** %8, align 8
  %23 = getelementptr inbounds %struct.oct_nic_stats_resp, %struct.oct_nic_stats_resp* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.nic_tx_stats* %24, %struct.nic_tx_stats** %10, align 8
  %25 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %26 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store %struct.nic_rx_stats* %27, %struct.nic_rx_stats** %11, align 8
  %28 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store %struct.nic_tx_stats* %30, %struct.nic_tx_stats** %12, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @OCTEON_REQUEST_TIMEOUT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %321

34:                                               ; preds = %3
  %35 = load %struct.oct_nic_stats_resp*, %struct.oct_nic_stats_resp** %8, align 8
  %36 = getelementptr inbounds %struct.oct_nic_stats_resp, %struct.oct_nic_stats_resp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %321, label %39

39:                                               ; preds = %34
  %40 = load %struct.oct_nic_stats_resp*, %struct.oct_nic_stats_resp** %8, align 8
  %41 = getelementptr inbounds %struct.oct_nic_stats_resp, %struct.oct_nic_stats_resp* %40, i32 0, i32 1
  %42 = bitcast %struct.TYPE_6__* %41 to i32*
  %43 = call i32 @octeon_swap_8B_data(i32* %42, i32 0)
  %44 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %45 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %44, i32 0, i32 30
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %48 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %47, i32 0, i32 30
  store i32 %46, i32* %48, align 4
  %49 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %50 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %49, i32 0, i32 29
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %53 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %52, i32 0, i32 29
  store i32 %51, i32* %53, align 4
  %54 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %55 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %54, i32 0, i32 28
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %58 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %57, i32 0, i32 28
  store i32 %56, i32* %58, align 4
  %59 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %60 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %59, i32 0, i32 27
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %63 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %62, i32 0, i32 27
  store i32 %61, i32* %63, align 4
  %64 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %65 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %64, i32 0, i32 26
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %68 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %67, i32 0, i32 26
  store i32 %66, i32* %68, align 4
  %69 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %70 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %69, i32 0, i32 25
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %73 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %72, i32 0, i32 25
  store i32 %71, i32* %73, align 4
  %74 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %75 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %74, i32 0, i32 24
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %78 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %77, i32 0, i32 24
  store i32 %76, i32* %78, align 4
  %79 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %80 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %79, i32 0, i32 23
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %83 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %82, i32 0, i32 23
  store i32 %81, i32* %83, align 4
  %84 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %85 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %84, i32 0, i32 22
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %88 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %87, i32 0, i32 22
  store i32 %86, i32* %88, align 4
  %89 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %90 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %89, i32 0, i32 21
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %93 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %92, i32 0, i32 21
  store i32 %91, i32* %93, align 4
  %94 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %95 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %94, i32 0, i32 20
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %98 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %97, i32 0, i32 20
  store i32 %96, i32* %98, align 4
  %99 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %100 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %99, i32 0, i32 19
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %103 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %102, i32 0, i32 19
  store i32 %101, i32* %103, align 4
  %104 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %105 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %104, i32 0, i32 18
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %108 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %107, i32 0, i32 18
  store i32 %106, i32* %108, align 4
  %109 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %110 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %109, i32 0, i32 17
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %113 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %112, i32 0, i32 17
  store i32 %111, i32* %113, align 4
  %114 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %115 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %114, i32 0, i32 16
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %118 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %117, i32 0, i32 16
  store i32 %116, i32* %118, align 4
  %119 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %120 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %119, i32 0, i32 15
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %123 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %122, i32 0, i32 15
  store i32 %121, i32* %123, align 4
  %124 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %125 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %124, i32 0, i32 14
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %128 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %127, i32 0, i32 14
  store i32 %126, i32* %128, align 4
  %129 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %130 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %129, i32 0, i32 13
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %133 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %132, i32 0, i32 13
  store i32 %131, i32* %133, align 4
  %134 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %135 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %134, i32 0, i32 12
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %138 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %137, i32 0, i32 12
  store i32 %136, i32* %138, align 4
  %139 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %140 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %139, i32 0, i32 11
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %143 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %142, i32 0, i32 11
  store i32 %141, i32* %143, align 4
  %144 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %145 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %148 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %147, i32 0, i32 10
  store i32 %146, i32* %148, align 4
  %149 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %150 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %149, i32 0, i32 9
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %153 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %152, i32 0, i32 9
  store i32 %151, i32* %153, align 4
  %154 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %155 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %158 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %157, i32 0, i32 8
  store i32 %156, i32* %158, align 4
  %159 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %160 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %163 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 4
  %164 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %165 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %168 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 4
  %169 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %170 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %173 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 4
  %174 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %175 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %178 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 4
  %179 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %180 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %183 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 4
  %184 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %185 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %188 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %190 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %193 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %9, align 8
  %195 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.nic_rx_stats*, %struct.nic_rx_stats** %11, align 8
  %198 = getelementptr inbounds %struct.nic_rx_stats, %struct.nic_rx_stats* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 4
  %199 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %200 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %199, i32 0, i32 23
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %203 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %202, i32 0, i32 23
  store i32 %201, i32* %203, align 4
  %204 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %205 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %204, i32 0, i32 22
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %208 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %207, i32 0, i32 22
  store i32 %206, i32* %208, align 4
  %209 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %210 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %209, i32 0, i32 21
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %213 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %212, i32 0, i32 21
  store i32 %211, i32* %213, align 4
  %214 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %215 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %214, i32 0, i32 20
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %218 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %217, i32 0, i32 20
  store i32 %216, i32* %218, align 4
  %219 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %220 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %219, i32 0, i32 19
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %223 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %222, i32 0, i32 19
  store i32 %221, i32* %223, align 4
  %224 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %225 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %224, i32 0, i32 18
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %228 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %227, i32 0, i32 18
  store i32 %226, i32* %228, align 4
  %229 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %230 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %229, i32 0, i32 17
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %233 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %232, i32 0, i32 17
  store i32 %231, i32* %233, align 4
  %234 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %235 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %234, i32 0, i32 16
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %238 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %237, i32 0, i32 16
  store i32 %236, i32* %238, align 4
  %239 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %240 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %239, i32 0, i32 15
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %243 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %242, i32 0, i32 15
  store i32 %241, i32* %243, align 4
  %244 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %245 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %244, i32 0, i32 14
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %248 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %247, i32 0, i32 14
  store i32 %246, i32* %248, align 4
  %249 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %250 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %249, i32 0, i32 13
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %253 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %252, i32 0, i32 13
  store i32 %251, i32* %253, align 4
  %254 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %255 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %254, i32 0, i32 12
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %258 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %257, i32 0, i32 12
  store i32 %256, i32* %258, align 4
  %259 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %260 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %259, i32 0, i32 11
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %263 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %262, i32 0, i32 11
  store i32 %261, i32* %263, align 4
  %264 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %265 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %264, i32 0, i32 10
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %268 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %267, i32 0, i32 10
  store i32 %266, i32* %268, align 4
  %269 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %270 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %269, i32 0, i32 9
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %273 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %272, i32 0, i32 9
  store i32 %271, i32* %273, align 4
  %274 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %275 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %274, i32 0, i32 8
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %278 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %277, i32 0, i32 8
  store i32 %276, i32* %278, align 4
  %279 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %280 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %279, i32 0, i32 7
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %283 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %282, i32 0, i32 7
  store i32 %281, i32* %283, align 4
  %284 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %285 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %288 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %287, i32 0, i32 6
  store i32 %286, i32* %288, align 4
  %289 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %290 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %293 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %292, i32 0, i32 5
  store i32 %291, i32* %293, align 4
  %294 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %295 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %298 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %297, i32 0, i32 4
  store i32 %296, i32* %298, align 4
  %299 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %300 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %303 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %302, i32 0, i32 3
  store i32 %301, i32* %303, align 4
  %304 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %305 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %308 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %307, i32 0, i32 2
  store i32 %306, i32* %308, align 4
  %309 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %310 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %313 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %312, i32 0, i32 1
  store i32 %311, i32* %313, align 4
  %314 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %10, align 8
  %315 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.nic_tx_stats*, %struct.nic_tx_stats** %12, align 8
  %318 = getelementptr inbounds %struct.nic_tx_stats, %struct.nic_tx_stats* %317, i32 0, i32 0
  store i32 %316, i32* %318, align 4
  %319 = load %struct.oct_nic_stats_resp*, %struct.oct_nic_stats_resp** %8, align 8
  %320 = getelementptr inbounds %struct.oct_nic_stats_resp, %struct.oct_nic_stats_resp* %319, i32 0, i32 0
  store i32 1, i32* %320, align 4
  br label %329

321:                                              ; preds = %34, %3
  %322 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %323 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %322, i32 0, i32 0
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  %326 = call i32 @dev_err(i32* %325, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %327 = load %struct.oct_nic_stats_resp*, %struct.oct_nic_stats_resp** %8, align 8
  %328 = getelementptr inbounds %struct.oct_nic_stats_resp, %struct.oct_nic_stats_resp* %327, i32 0, i32 0
  store i32 -1, i32* %328, align 4
  br label %329

329:                                              ; preds = %321, %39
  ret void
}

declare dso_local i32 @octeon_swap_8B_data(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
