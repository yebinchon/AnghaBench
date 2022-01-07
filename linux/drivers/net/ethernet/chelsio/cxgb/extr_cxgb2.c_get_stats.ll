; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.adapter* }
%struct.adapter = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cmac* }
%struct.cmac = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.cmac_statistics* (%struct.cmac*, i32)* }
%struct.cmac_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_stats = type { i32 }
%struct.sge_intr_counts = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_port_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.espi_intr_counts = type { i32, i32, i32, i32, i32, i32 }

@MAC_STATS_UPDATE_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.cmac*, align 8
  %9 = alloca %struct.cmac_statistics*, align 8
  %10 = alloca %struct.sge_intr_counts*, align 8
  %11 = alloca %struct.sge_port_stats, align 4
  %12 = alloca %struct.espi_intr_counts*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load %struct.adapter*, %struct.adapter** %14, align 8
  store %struct.adapter* %15, %struct.adapter** %7, align 8
  %16 = load %struct.adapter*, %struct.adapter** %7, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.cmac*, %struct.cmac** %23, align 8
  store %struct.cmac* %24, %struct.cmac** %8, align 8
  %25 = load %struct.cmac*, %struct.cmac** %8, align 8
  %26 = getelementptr inbounds %struct.cmac, %struct.cmac* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.cmac_statistics* (%struct.cmac*, i32)*, %struct.cmac_statistics* (%struct.cmac*, i32)** %28, align 8
  %30 = load %struct.cmac*, %struct.cmac** %8, align 8
  %31 = load i32, i32* @MAC_STATS_UPDATE_FULL, align 4
  %32 = call %struct.cmac_statistics* %29(%struct.cmac* %30, i32 %31)
  store %struct.cmac_statistics* %32, %struct.cmac_statistics** %9, align 8
  %33 = load %struct.adapter*, %struct.adapter** %7, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.sge_intr_counts* @t1_sge_get_intr_counts(i32 %35)
  store %struct.sge_intr_counts* %36, %struct.sge_intr_counts** %10, align 8
  %37 = load %struct.adapter*, %struct.adapter** %7, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @t1_sge_get_port_stats(i32 %39, i64 %42, %struct.sge_port_stats* %11)
  %44 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %45 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %44, i32 0, i32 35
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  %49 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %50 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %49, i32 0, i32 34
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %54 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %55 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %54, i32 0, i32 33
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  %59 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %60 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %59, i32 0, i32 32
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  %64 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %65 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %64, i32 0, i32 31
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  %69 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %70 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %69, i32 0, i32 30
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  %74 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %75 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %74, i32 0, i32 29
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  %79 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %80 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %79, i32 0, i32 28
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %6, align 8
  store i32 %81, i32* %82, align 4
  %84 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %85 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %84, i32 0, i32 27
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %6, align 8
  store i32 %86, i32* %87, align 4
  %89 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %90 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %89, i32 0, i32 26
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  %94 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %95 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %94, i32 0, i32 25
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %6, align 8
  store i32 %96, i32* %97, align 4
  %99 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %100 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %99, i32 0, i32 24
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %6, align 8
  store i32 %101, i32* %102, align 4
  %104 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %105 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %104, i32 0, i32 23
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %6, align 8
  store i32 %106, i32* %107, align 4
  %109 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %110 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %109, i32 0, i32 22
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %6, align 8
  store i32 %111, i32* %112, align 4
  %114 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %115 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %114, i32 0, i32 21
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %6, align 8
  store i32 %116, i32* %117, align 4
  %119 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %120 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %119, i32 0, i32 20
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %6, align 8
  store i32 %121, i32* %122, align 4
  %124 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %125 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %124, i32 0, i32 19
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %6, align 8
  store i32 %126, i32* %127, align 4
  %129 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %130 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %129, i32 0, i32 18
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %6, align 8
  store i32 %131, i32* %132, align 4
  %134 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %135 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %134, i32 0, i32 17
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %6, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %6, align 8
  store i32 %136, i32* %137, align 4
  %139 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %140 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %139, i32 0, i32 16
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %6, align 8
  store i32 %141, i32* %142, align 4
  %144 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %145 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %144, i32 0, i32 15
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %6, align 8
  store i32 %146, i32* %147, align 4
  %149 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %150 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %149, i32 0, i32 14
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %6, align 8
  store i32 %151, i32* %152, align 4
  %154 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %155 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %154, i32 0, i32 13
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %6, align 8
  store i32 %156, i32* %157, align 4
  %159 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %160 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %159, i32 0, i32 12
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %6, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %6, align 8
  store i32 %161, i32* %162, align 4
  %164 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %165 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %164, i32 0, i32 11
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %6, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %6, align 8
  store i32 %166, i32* %167, align 4
  %169 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %170 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %169, i32 0, i32 10
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %6, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %6, align 8
  store i32 %171, i32* %172, align 4
  %174 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %175 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %6, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %6, align 8
  store i32 %176, i32* %177, align 4
  %179 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %180 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %6, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %6, align 8
  store i32 %181, i32* %182, align 4
  %184 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %185 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %6, align 8
  %188 = getelementptr inbounds i32, i32* %187, i32 1
  store i32* %188, i32** %6, align 8
  store i32 %186, i32* %187, align 4
  %189 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %190 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %6, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 1
  store i32* %193, i32** %6, align 8
  store i32 %191, i32* %192, align 4
  %194 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %195 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %6, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %6, align 8
  store i32 %196, i32* %197, align 4
  %199 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %200 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %6, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %203, i32** %6, align 8
  store i32 %201, i32* %202, align 4
  %204 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %205 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %6, align 8
  %208 = getelementptr inbounds i32, i32* %207, i32 1
  store i32* %208, i32** %6, align 8
  store i32 %206, i32* %207, align 4
  %209 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %210 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %6, align 8
  %213 = getelementptr inbounds i32, i32* %212, i32 1
  store i32* %213, i32** %6, align 8
  store i32 %211, i32* %212, align 4
  %214 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %215 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %6, align 8
  %218 = getelementptr inbounds i32, i32* %217, i32 1
  store i32* %218, i32** %6, align 8
  store i32 %216, i32* %217, align 4
  %219 = load %struct.cmac_statistics*, %struct.cmac_statistics** %9, align 8
  %220 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %6, align 8
  %223 = getelementptr inbounds i32, i32* %222, i32 1
  store i32* %223, i32** %6, align 8
  store i32 %221, i32* %222, align 4
  %224 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %11, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %6, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %6, align 8
  store i32 %225, i32* %226, align 4
  %228 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %11, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %6, align 8
  %231 = getelementptr inbounds i32, i32* %230, i32 1
  store i32* %231, i32** %6, align 8
  store i32 %229, i32* %230, align 4
  %232 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %11, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %6, align 8
  %235 = getelementptr inbounds i32, i32* %234, i32 1
  store i32* %235, i32** %6, align 8
  store i32 %233, i32* %234, align 4
  %236 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %11, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** %6, align 8
  %239 = getelementptr inbounds i32, i32* %238, i32 1
  store i32* %239, i32** %6, align 8
  store i32 %237, i32* %238, align 4
  %240 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %11, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32*, i32** %6, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %6, align 8
  store i32 %241, i32* %242, align 4
  %244 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %11, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %6, align 8
  %247 = getelementptr inbounds i32, i32* %246, i32 1
  store i32* %247, i32** %6, align 8
  store i32 %245, i32* %246, align 4
  %248 = load %struct.sge_intr_counts*, %struct.sge_intr_counts** %10, align 8
  %249 = getelementptr inbounds %struct.sge_intr_counts, %struct.sge_intr_counts* %248, i32 0, i32 8
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %6, align 8
  %252 = getelementptr inbounds i32, i32* %251, i32 1
  store i32* %252, i32** %6, align 8
  store i32 %250, i32* %251, align 4
  %253 = load %struct.sge_intr_counts*, %struct.sge_intr_counts** %10, align 8
  %254 = getelementptr inbounds %struct.sge_intr_counts, %struct.sge_intr_counts* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 8
  %256 = load i32*, i32** %6, align 8
  %257 = getelementptr inbounds i32, i32* %256, i32 1
  store i32* %257, i32** %6, align 8
  store i32 %255, i32* %256, align 4
  %258 = load %struct.sge_intr_counts*, %struct.sge_intr_counts** %10, align 8
  %259 = getelementptr inbounds %struct.sge_intr_counts, %struct.sge_intr_counts* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 4
  %261 = load i32*, i32** %6, align 8
  %262 = getelementptr inbounds i32, i32* %261, i32 1
  store i32* %262, i32** %6, align 8
  store i32 %260, i32* %261, align 4
  %263 = load %struct.sge_intr_counts*, %struct.sge_intr_counts** %10, align 8
  %264 = getelementptr inbounds %struct.sge_intr_counts, %struct.sge_intr_counts* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 8
  %266 = load i32*, i32** %6, align 8
  %267 = getelementptr inbounds i32, i32* %266, i32 1
  store i32* %267, i32** %6, align 8
  store i32 %265, i32* %266, align 4
  %268 = load %struct.sge_intr_counts*, %struct.sge_intr_counts** %10, align 8
  %269 = getelementptr inbounds %struct.sge_intr_counts, %struct.sge_intr_counts* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 4
  %271 = load i32*, i32** %6, align 8
  %272 = getelementptr inbounds i32, i32* %271, i32 1
  store i32* %272, i32** %6, align 8
  store i32 %270, i32* %271, align 4
  %273 = load %struct.sge_intr_counts*, %struct.sge_intr_counts** %10, align 8
  %274 = getelementptr inbounds %struct.sge_intr_counts, %struct.sge_intr_counts* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = load i32*, i32** %6, align 8
  %277 = getelementptr inbounds i32, i32* %276, i32 1
  store i32* %277, i32** %6, align 8
  store i32 %275, i32* %276, align 4
  %278 = load %struct.sge_intr_counts*, %struct.sge_intr_counts** %10, align 8
  %279 = getelementptr inbounds %struct.sge_intr_counts, %struct.sge_intr_counts* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load i32*, i32** %6, align 8
  %282 = getelementptr inbounds i32, i32* %281, i32 1
  store i32* %282, i32** %6, align 8
  store i32 %280, i32* %281, align 4
  %283 = load %struct.sge_intr_counts*, %struct.sge_intr_counts** %10, align 8
  %284 = getelementptr inbounds %struct.sge_intr_counts, %struct.sge_intr_counts* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load i32*, i32** %6, align 8
  %287 = getelementptr inbounds i32, i32* %286, i32 1
  store i32* %287, i32** %6, align 8
  store i32 %285, i32* %286, align 4
  %288 = load %struct.sge_intr_counts*, %struct.sge_intr_counts** %10, align 8
  %289 = getelementptr inbounds %struct.sge_intr_counts, %struct.sge_intr_counts* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32*, i32** %6, align 8
  %294 = getelementptr inbounds i32, i32* %293, i32 1
  store i32* %294, i32** %6, align 8
  store i32 %292, i32* %293, align 4
  %295 = load %struct.sge_intr_counts*, %struct.sge_intr_counts** %10, align 8
  %296 = getelementptr inbounds %struct.sge_intr_counts, %struct.sge_intr_counts* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32*, i32** %6, align 8
  %301 = getelementptr inbounds i32, i32* %300, i32 1
  store i32* %301, i32** %6, align 8
  store i32 %299, i32* %300, align 4
  %302 = load %struct.adapter*, %struct.adapter** %7, align 8
  %303 = getelementptr inbounds %struct.adapter, %struct.adapter* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %341

306:                                              ; preds = %3
  %307 = load %struct.adapter*, %struct.adapter** %7, align 8
  %308 = getelementptr inbounds %struct.adapter, %struct.adapter* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = call %struct.espi_intr_counts* @t1_espi_get_intr_counts(i64 %309)
  store %struct.espi_intr_counts* %310, %struct.espi_intr_counts** %12, align 8
  %311 = load %struct.espi_intr_counts*, %struct.espi_intr_counts** %12, align 8
  %312 = getelementptr inbounds %struct.espi_intr_counts, %struct.espi_intr_counts* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 4
  %314 = load i32*, i32** %6, align 8
  %315 = getelementptr inbounds i32, i32* %314, i32 1
  store i32* %315, i32** %6, align 8
  store i32 %313, i32* %314, align 4
  %316 = load %struct.espi_intr_counts*, %struct.espi_intr_counts** %12, align 8
  %317 = getelementptr inbounds %struct.espi_intr_counts, %struct.espi_intr_counts* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 4
  %319 = load i32*, i32** %6, align 8
  %320 = getelementptr inbounds i32, i32* %319, i32 1
  store i32* %320, i32** %6, align 8
  store i32 %318, i32* %319, align 4
  %321 = load %struct.espi_intr_counts*, %struct.espi_intr_counts** %12, align 8
  %322 = getelementptr inbounds %struct.espi_intr_counts, %struct.espi_intr_counts* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = load i32*, i32** %6, align 8
  %325 = getelementptr inbounds i32, i32* %324, i32 1
  store i32* %325, i32** %6, align 8
  store i32 %323, i32* %324, align 4
  %326 = load %struct.espi_intr_counts*, %struct.espi_intr_counts** %12, align 8
  %327 = getelementptr inbounds %struct.espi_intr_counts, %struct.espi_intr_counts* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = load i32*, i32** %6, align 8
  %330 = getelementptr inbounds i32, i32* %329, i32 1
  store i32* %330, i32** %6, align 8
  store i32 %328, i32* %329, align 4
  %331 = load %struct.espi_intr_counts*, %struct.espi_intr_counts** %12, align 8
  %332 = getelementptr inbounds %struct.espi_intr_counts, %struct.espi_intr_counts* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load i32*, i32** %6, align 8
  %335 = getelementptr inbounds i32, i32* %334, i32 1
  store i32* %335, i32** %6, align 8
  store i32 %333, i32* %334, align 4
  %336 = load %struct.espi_intr_counts*, %struct.espi_intr_counts** %12, align 8
  %337 = getelementptr inbounds %struct.espi_intr_counts, %struct.espi_intr_counts* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = load i32*, i32** %6, align 8
  %340 = getelementptr inbounds i32, i32* %339, i32 1
  store i32* %340, i32** %6, align 8
  store i32 %338, i32* %339, align 4
  br label %341

341:                                              ; preds = %306, %3
  ret void
}

declare dso_local %struct.sge_intr_counts* @t1_sge_get_intr_counts(i32) #1

declare dso_local i32 @t1_sge_get_port_stats(i32, i64, %struct.sge_port_stats*) #1

declare dso_local %struct.espi_intr_counts* @t1_espi_get_intr_counts(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
