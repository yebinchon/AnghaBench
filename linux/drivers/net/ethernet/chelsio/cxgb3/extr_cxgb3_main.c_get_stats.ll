; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.port_info = type { %struct.TYPE_2__, i32, %struct.adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.adapter = type { i32 }
%struct.mac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SGE_PSTAT_TSO = common dso_local global i32 0, align 4
@SGE_PSTAT_VLANEX = common dso_local global i32 0, align 4
@SGE_PSTAT_VLANINS = common dso_local global i32 0, align 4
@SGE_PSTAT_TX_CSUM = common dso_local global i32 0, align 4
@SGE_PSTAT_RX_CSUM_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.port_info*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.mac_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.port_info* @netdev_priv(%struct.net_device* %10)
  store %struct.port_info* %11, %struct.port_info** %7, align 8
  %12 = load %struct.port_info*, %struct.port_info** %7, align 8
  %13 = getelementptr inbounds %struct.port_info, %struct.port_info* %12, i32 0, i32 2
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %8, align 8
  %15 = load %struct.adapter*, %struct.adapter** %8, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.port_info*, %struct.port_info** %7, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 1
  %20 = call %struct.mac_stats* @t3_mac_update_stats(i32* %19)
  store %struct.mac_stats* %20, %struct.mac_stats** %9, align 8
  %21 = load %struct.adapter*, %struct.adapter** %8, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %25 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %24, i32 0, i32 35
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  %29 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %30 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %29, i32 0, i32 34
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %34 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %35 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %34, i32 0, i32 33
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  %39 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %40 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %39, i32 0, i32 32
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  %44 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %45 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %44, i32 0, i32 31
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  %49 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %50 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %49, i32 0, i32 30
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %54 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %55 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %54, i32 0, i32 29
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  %59 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %60 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %59, i32 0, i32 28
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  %64 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %65 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %64, i32 0, i32 27
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  %69 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %70 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %69, i32 0, i32 26
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  %74 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %75 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %74, i32 0, i32 25
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  %79 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %80 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %79, i32 0, i32 24
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %6, align 8
  store i32 %81, i32* %82, align 4
  %84 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %85 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %84, i32 0, i32 23
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %6, align 8
  store i32 %86, i32* %87, align 4
  %89 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %90 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %89, i32 0, i32 22
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  %94 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %95 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %94, i32 0, i32 21
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %6, align 8
  store i32 %96, i32* %97, align 4
  %99 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %100 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %99, i32 0, i32 20
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %6, align 8
  store i32 %101, i32* %102, align 4
  %104 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %105 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %104, i32 0, i32 19
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %6, align 8
  store i32 %106, i32* %107, align 4
  %109 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %110 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %109, i32 0, i32 18
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %6, align 8
  store i32 %111, i32* %112, align 4
  %114 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %115 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %114, i32 0, i32 17
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %6, align 8
  store i32 %116, i32* %117, align 4
  %119 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %120 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %119, i32 0, i32 16
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %6, align 8
  store i32 %121, i32* %122, align 4
  %124 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %125 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %124, i32 0, i32 15
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %6, align 8
  store i32 %126, i32* %127, align 4
  %129 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %130 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %129, i32 0, i32 14
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %6, align 8
  store i32 %131, i32* %132, align 4
  %134 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %135 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %134, i32 0, i32 13
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %6, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %6, align 8
  store i32 %136, i32* %137, align 4
  %139 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %140 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %139, i32 0, i32 12
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %6, align 8
  store i32 %141, i32* %142, align 4
  %144 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %145 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %144, i32 0, i32 11
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %6, align 8
  store i32 %146, i32* %147, align 4
  %149 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %150 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %149, i32 0, i32 10
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %6, align 8
  store i32 %151, i32* %152, align 4
  %154 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %155 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %154, i32 0, i32 9
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %6, align 8
  store i32 %156, i32* %157, align 4
  %159 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %160 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %6, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %6, align 8
  store i32 %161, i32* %162, align 4
  %164 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %165 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %6, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %6, align 8
  store i32 %166, i32* %167, align 4
  %169 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %170 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %6, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %6, align 8
  store i32 %171, i32* %172, align 4
  %174 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %175 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %6, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %6, align 8
  store i32 %176, i32* %177, align 4
  %179 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %180 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %6, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %6, align 8
  store i32 %181, i32* %182, align 4
  %184 = load %struct.port_info*, %struct.port_info** %7, align 8
  %185 = getelementptr inbounds %struct.port_info, %struct.port_info* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32*, i32** %6, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %6, align 8
  store i32 %187, i32* %188, align 4
  %190 = load %struct.adapter*, %struct.adapter** %8, align 8
  %191 = load %struct.port_info*, %struct.port_info** %7, align 8
  %192 = load i32, i32* @SGE_PSTAT_TSO, align 4
  %193 = call i8* @collect_sge_port_stats(%struct.adapter* %190, %struct.port_info* %191, i32 %192)
  %194 = ptrtoint i8* %193 to i32
  %195 = load i32*, i32** %6, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %6, align 8
  store i32 %194, i32* %195, align 4
  %197 = load %struct.adapter*, %struct.adapter** %8, align 8
  %198 = load %struct.port_info*, %struct.port_info** %7, align 8
  %199 = load i32, i32* @SGE_PSTAT_VLANEX, align 4
  %200 = call i8* @collect_sge_port_stats(%struct.adapter* %197, %struct.port_info* %198, i32 %199)
  %201 = ptrtoint i8* %200 to i32
  %202 = load i32*, i32** %6, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %203, i32** %6, align 8
  store i32 %201, i32* %202, align 4
  %204 = load %struct.adapter*, %struct.adapter** %8, align 8
  %205 = load %struct.port_info*, %struct.port_info** %7, align 8
  %206 = load i32, i32* @SGE_PSTAT_VLANINS, align 4
  %207 = call i8* @collect_sge_port_stats(%struct.adapter* %204, %struct.port_info* %205, i32 %206)
  %208 = ptrtoint i8* %207 to i32
  %209 = load i32*, i32** %6, align 8
  %210 = getelementptr inbounds i32, i32* %209, i32 1
  store i32* %210, i32** %6, align 8
  store i32 %208, i32* %209, align 4
  %211 = load %struct.adapter*, %struct.adapter** %8, align 8
  %212 = load %struct.port_info*, %struct.port_info** %7, align 8
  %213 = load i32, i32* @SGE_PSTAT_TX_CSUM, align 4
  %214 = call i8* @collect_sge_port_stats(%struct.adapter* %211, %struct.port_info* %212, i32 %213)
  %215 = ptrtoint i8* %214 to i32
  %216 = load i32*, i32** %6, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %6, align 8
  store i32 %215, i32* %216, align 4
  %218 = load %struct.adapter*, %struct.adapter** %8, align 8
  %219 = load %struct.port_info*, %struct.port_info** %7, align 8
  %220 = load i32, i32* @SGE_PSTAT_RX_CSUM_GOOD, align 4
  %221 = call i8* @collect_sge_port_stats(%struct.adapter* %218, %struct.port_info* %219, i32 %220)
  %222 = ptrtoint i8* %221 to i32
  %223 = load i32*, i32** %6, align 8
  %224 = getelementptr inbounds i32, i32* %223, i32 1
  store i32* %224, i32** %6, align 8
  store i32 %222, i32* %223, align 4
  %225 = load i32*, i32** %6, align 8
  %226 = getelementptr inbounds i32, i32* %225, i32 1
  store i32* %226, i32** %6, align 8
  store i32 0, i32* %225, align 4
  %227 = load i32*, i32** %6, align 8
  %228 = getelementptr inbounds i32, i32* %227, i32 1
  store i32* %228, i32** %6, align 8
  store i32 0, i32* %227, align 4
  %229 = load i32*, i32** %6, align 8
  %230 = getelementptr inbounds i32, i32* %229, i32 1
  store i32* %230, i32** %6, align 8
  store i32 0, i32* %229, align 4
  %231 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %232 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %6, align 8
  %235 = getelementptr inbounds i32, i32* %234, i32 1
  store i32* %235, i32** %6, align 8
  store i32 %233, i32* %234, align 4
  %236 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %237 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %6, align 8
  %240 = getelementptr inbounds i32, i32* %239, i32 1
  store i32* %240, i32** %6, align 8
  store i32 %238, i32* %239, align 4
  %241 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %242 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32*, i32** %6, align 8
  %245 = getelementptr inbounds i32, i32* %244, i32 1
  store i32* %245, i32** %6, align 8
  store i32 %243, i32* %244, align 4
  %246 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %247 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** %6, align 8
  %250 = getelementptr inbounds i32, i32* %249, i32 1
  store i32* %250, i32** %6, align 8
  store i32 %248, i32* %249, align 4
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mac_stats* @t3_mac_update_stats(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i8* @collect_sge_port_stats(%struct.adapter*, %struct.port_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
