; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_ethtool.c_tse_fill_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_ethtool.c_tse_fill_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.altera_tse_private = type { i32 }

@frames_transmitted_ok = common dso_local global i32 0, align 4
@frames_received_ok = common dso_local global i32 0, align 4
@frames_check_sequence_errors = common dso_local global i32 0, align 4
@alignment_errors = common dso_local global i32 0, align 4
@msb_octets_transmitted_ok = common dso_local global i32 0, align 4
@octets_transmitted_ok = common dso_local global i32 0, align 4
@msb_octets_received_ok = common dso_local global i32 0, align 4
@octets_received_ok = common dso_local global i32 0, align 4
@tx_pause_mac_ctrl_frames = common dso_local global i32 0, align 4
@rx_pause_mac_ctrl_frames = common dso_local global i32 0, align 4
@if_in_errors = common dso_local global i32 0, align 4
@if_out_errors = common dso_local global i32 0, align 4
@if_in_ucast_pkts = common dso_local global i32 0, align 4
@if_in_multicast_pkts = common dso_local global i32 0, align 4
@if_in_broadcast_pkts = common dso_local global i32 0, align 4
@if_out_discards = common dso_local global i32 0, align 4
@if_out_ucast_pkts = common dso_local global i32 0, align 4
@if_out_multicast_pkts = common dso_local global i32 0, align 4
@if_out_broadcast_pkts = common dso_local global i32 0, align 4
@ether_stats_drop_events = common dso_local global i32 0, align 4
@msb_ether_stats_octets = common dso_local global i32 0, align 4
@ether_stats_octets = common dso_local global i32 0, align 4
@ether_stats_pkts = common dso_local global i32 0, align 4
@ether_stats_undersize_pkts = common dso_local global i32 0, align 4
@ether_stats_oversize_pkts = common dso_local global i32 0, align 4
@ether_stats_pkts_64_octets = common dso_local global i32 0, align 4
@ether_stats_pkts_65to127_octets = common dso_local global i32 0, align 4
@ether_stats_pkts_128to255_octets = common dso_local global i32 0, align 4
@ether_stats_pkts_256to511_octets = common dso_local global i32 0, align 4
@ether_stats_pkts_512to1023_octets = common dso_local global i32 0, align 4
@ether_stats_pkts_1024to1518_octets = common dso_local global i32 0, align 4
@ether_stats_pkts_1519tox_octets = common dso_local global i32 0, align 4
@ether_stats_jabbers = common dso_local global i32 0, align 4
@ether_stats_fragments = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @tse_fill_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tse_fill_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.altera_tse_private*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.altera_tse_private* @netdev_priv(%struct.net_device* %9)
  store %struct.altera_tse_private* %10, %struct.altera_tse_private** %7, align 8
  %11 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %12 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @frames_transmitted_ok, align 4
  %15 = call i32 @tse_csroffs(i32 %14)
  %16 = call i32 @csrrd32(i32 %13, i32 %15)
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %20 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @frames_received_ok, align 4
  %23 = call i32 @tse_csroffs(i32 %22)
  %24 = call i32 @csrrd32(i32 %21, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %28 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @frames_check_sequence_errors, align 4
  %31 = call i32 @tse_csroffs(i32 %30)
  %32 = call i32 @csrrd32(i32 %29, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %36 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @alignment_errors, align 4
  %39 = call i32 @tse_csroffs(i32 %38)
  %40 = call i32 @csrrd32(i32 %37, i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %44 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @msb_octets_transmitted_ok, align 4
  %47 = call i32 @tse_csroffs(i32 %46)
  %48 = call i32 @csrrd32(i32 %45, i32 %47)
  %49 = shl i32 %48, 32
  store i32 %49, i32* %8, align 4
  %50 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %51 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @octets_transmitted_ok, align 4
  %54 = call i32 @tse_csroffs(i32 %53)
  %55 = call i32 @csrrd32(i32 %52, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %62 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @msb_octets_received_ok, align 4
  %65 = call i32 @tse_csroffs(i32 %64)
  %66 = call i32 @csrrd32(i32 %63, i32 %65)
  %67 = shl i32 %66, 32
  store i32 %67, i32* %8, align 4
  %68 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %69 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @octets_received_ok, align 4
  %72 = call i32 @tse_csroffs(i32 %71)
  %73 = call i32 @csrrd32(i32 %70, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  store i32 %76, i32* %78, align 4
  %79 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %80 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @tx_pause_mac_ctrl_frames, align 4
  %83 = call i32 @tse_csroffs(i32 %82)
  %84 = call i32 @csrrd32(i32 %81, i32 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 6
  store i32 %84, i32* %86, align 4
  %87 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %88 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @rx_pause_mac_ctrl_frames, align 4
  %91 = call i32 @tse_csroffs(i32 %90)
  %92 = call i32 @csrrd32(i32 %89, i32 %91)
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 7
  store i32 %92, i32* %94, align 4
  %95 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %96 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @if_in_errors, align 4
  %99 = call i32 @tse_csroffs(i32 %98)
  %100 = call i32 @csrrd32(i32 %97, i32 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 8
  store i32 %100, i32* %102, align 4
  %103 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %104 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @if_out_errors, align 4
  %107 = call i32 @tse_csroffs(i32 %106)
  %108 = call i32 @csrrd32(i32 %105, i32 %107)
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 9
  store i32 %108, i32* %110, align 4
  %111 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %112 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @if_in_ucast_pkts, align 4
  %115 = call i32 @tse_csroffs(i32 %114)
  %116 = call i32 @csrrd32(i32 %113, i32 %115)
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 10
  store i32 %116, i32* %118, align 4
  %119 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %120 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @if_in_multicast_pkts, align 4
  %123 = call i32 @tse_csroffs(i32 %122)
  %124 = call i32 @csrrd32(i32 %121, i32 %123)
  %125 = load i32*, i32** %6, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 11
  store i32 %124, i32* %126, align 4
  %127 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %128 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @if_in_broadcast_pkts, align 4
  %131 = call i32 @tse_csroffs(i32 %130)
  %132 = call i32 @csrrd32(i32 %129, i32 %131)
  %133 = load i32*, i32** %6, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 12
  store i32 %132, i32* %134, align 4
  %135 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %136 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @if_out_discards, align 4
  %139 = call i32 @tse_csroffs(i32 %138)
  %140 = call i32 @csrrd32(i32 %137, i32 %139)
  %141 = load i32*, i32** %6, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 13
  store i32 %140, i32* %142, align 4
  %143 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %144 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @if_out_ucast_pkts, align 4
  %147 = call i32 @tse_csroffs(i32 %146)
  %148 = call i32 @csrrd32(i32 %145, i32 %147)
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 14
  store i32 %148, i32* %150, align 4
  %151 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %152 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @if_out_multicast_pkts, align 4
  %155 = call i32 @tse_csroffs(i32 %154)
  %156 = call i32 @csrrd32(i32 %153, i32 %155)
  %157 = load i32*, i32** %6, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 15
  store i32 %156, i32* %158, align 4
  %159 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %160 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @if_out_broadcast_pkts, align 4
  %163 = call i32 @tse_csroffs(i32 %162)
  %164 = call i32 @csrrd32(i32 %161, i32 %163)
  %165 = load i32*, i32** %6, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 16
  store i32 %164, i32* %166, align 4
  %167 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %168 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @ether_stats_drop_events, align 4
  %171 = call i32 @tse_csroffs(i32 %170)
  %172 = call i32 @csrrd32(i32 %169, i32 %171)
  %173 = load i32*, i32** %6, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 17
  store i32 %172, i32* %174, align 4
  %175 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %176 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @msb_ether_stats_octets, align 4
  %179 = call i32 @tse_csroffs(i32 %178)
  %180 = call i32 @csrrd32(i32 %177, i32 %179)
  %181 = shl i32 %180, 32
  store i32 %181, i32* %8, align 4
  %182 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %183 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @ether_stats_octets, align 4
  %186 = call i32 @tse_csroffs(i32 %185)
  %187 = call i32 @csrrd32(i32 %184, i32 %186)
  %188 = load i32, i32* %8, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = load i32*, i32** %6, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 18
  store i32 %190, i32* %192, align 4
  %193 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %194 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @ether_stats_pkts, align 4
  %197 = call i32 @tse_csroffs(i32 %196)
  %198 = call i32 @csrrd32(i32 %195, i32 %197)
  %199 = load i32*, i32** %6, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 19
  store i32 %198, i32* %200, align 4
  %201 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %202 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @ether_stats_undersize_pkts, align 4
  %205 = call i32 @tse_csroffs(i32 %204)
  %206 = call i32 @csrrd32(i32 %203, i32 %205)
  %207 = load i32*, i32** %6, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 20
  store i32 %206, i32* %208, align 4
  %209 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %210 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @ether_stats_oversize_pkts, align 4
  %213 = call i32 @tse_csroffs(i32 %212)
  %214 = call i32 @csrrd32(i32 %211, i32 %213)
  %215 = load i32*, i32** %6, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 21
  store i32 %214, i32* %216, align 4
  %217 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %218 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @ether_stats_pkts_64_octets, align 4
  %221 = call i32 @tse_csroffs(i32 %220)
  %222 = call i32 @csrrd32(i32 %219, i32 %221)
  %223 = load i32*, i32** %6, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 22
  store i32 %222, i32* %224, align 4
  %225 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %226 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @ether_stats_pkts_65to127_octets, align 4
  %229 = call i32 @tse_csroffs(i32 %228)
  %230 = call i32 @csrrd32(i32 %227, i32 %229)
  %231 = load i32*, i32** %6, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 23
  store i32 %230, i32* %232, align 4
  %233 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %234 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @ether_stats_pkts_128to255_octets, align 4
  %237 = call i32 @tse_csroffs(i32 %236)
  %238 = call i32 @csrrd32(i32 %235, i32 %237)
  %239 = load i32*, i32** %6, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 24
  store i32 %238, i32* %240, align 4
  %241 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %242 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @ether_stats_pkts_256to511_octets, align 4
  %245 = call i32 @tse_csroffs(i32 %244)
  %246 = call i32 @csrrd32(i32 %243, i32 %245)
  %247 = load i32*, i32** %6, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 25
  store i32 %246, i32* %248, align 4
  %249 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %250 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @ether_stats_pkts_512to1023_octets, align 4
  %253 = call i32 @tse_csroffs(i32 %252)
  %254 = call i32 @csrrd32(i32 %251, i32 %253)
  %255 = load i32*, i32** %6, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 26
  store i32 %254, i32* %256, align 4
  %257 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %258 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @ether_stats_pkts_1024to1518_octets, align 4
  %261 = call i32 @tse_csroffs(i32 %260)
  %262 = call i32 @csrrd32(i32 %259, i32 %261)
  %263 = load i32*, i32** %6, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 27
  store i32 %262, i32* %264, align 4
  %265 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %266 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @ether_stats_pkts_1519tox_octets, align 4
  %269 = call i32 @tse_csroffs(i32 %268)
  %270 = call i32 @csrrd32(i32 %267, i32 %269)
  %271 = load i32*, i32** %6, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 28
  store i32 %270, i32* %272, align 4
  %273 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %274 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @ether_stats_jabbers, align 4
  %277 = call i32 @tse_csroffs(i32 %276)
  %278 = call i32 @csrrd32(i32 %275, i32 %277)
  %279 = load i32*, i32** %6, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 29
  store i32 %278, i32* %280, align 4
  %281 = load %struct.altera_tse_private*, %struct.altera_tse_private** %7, align 8
  %282 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @ether_stats_fragments, align 4
  %285 = call i32 @tse_csroffs(i32 %284)
  %286 = call i32 @csrrd32(i32 %283, i32 %285)
  %287 = load i32*, i32** %6, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 30
  store i32 %286, i32* %288, align 4
  ret void
}

declare dso_local %struct.altera_tse_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @csrrd32(i32, i32) #1

declare dso_local i32 @tse_csroffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
