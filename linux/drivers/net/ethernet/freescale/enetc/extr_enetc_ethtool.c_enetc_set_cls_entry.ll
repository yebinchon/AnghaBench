; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_set_cls_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_set_cls_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_si = type { i32 }
%struct.ethtool_rx_flow_spec = type { i32, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.ethhdr, %struct.ethtool_usrip4_spec, %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec }
%struct.ethhdr = type { i32, i32, i32 }
%struct.ethtool_usrip4_spec = type { i32, i32, i32 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.ethhdr, %struct.ethtool_usrip4_spec, %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec }
%struct.enetc_cmd_rfse = type { i32, i64, i32, i8*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i8*, i8*, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"ToS field is not supported and was ignored\0A\00", align 1
@ETH_P_IP = common dso_local global i8* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENETC_RFSE_EN = common dso_local global i32 0, align 4
@RX_CLS_FLOW_DISC = common dso_local global i64 0, align 8
@ENETC_RFSE_MODE_BD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enetc_si*, %struct.ethtool_rx_flow_spec*, i32)* @enetc_set_cls_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_set_cls_entry(%struct.enetc_si* %0, %struct.ethtool_rx_flow_spec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.enetc_si*, align 8
  %6 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ethtool_tcpip4_spec*, align 8
  %9 = alloca %struct.ethtool_tcpip4_spec*, align 8
  %10 = alloca %struct.ethtool_usrip4_spec*, align 8
  %11 = alloca %struct.ethtool_usrip4_spec*, align 8
  %12 = alloca %struct.ethhdr*, align 8
  %13 = alloca %struct.ethhdr*, align 8
  %14 = alloca %struct.enetc_cmd_rfse, align 8
  store %struct.enetc_si* %0, %struct.enetc_si** %5, align 8
  store %struct.ethtool_rx_flow_spec* %1, %struct.ethtool_rx_flow_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = bitcast %struct.enetc_cmd_rfse* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 120, i1 false)
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %212

19:                                               ; preds = %3
  %20 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %21 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 255
  switch i32 %23, label %189 [
    i32 129, label %24
    i32 128, label %31
    i32 130, label %38
    i32 131, label %103
    i32 132, label %147
  ]

24:                                               ; preds = %19
  %25 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %26 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  store %struct.ethtool_tcpip4_spec* %27, %struct.ethtool_tcpip4_spec** %8, align 8
  %28 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %29 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  store %struct.ethtool_tcpip4_spec* %30, %struct.ethtool_tcpip4_spec** %9, align 8
  br label %45

31:                                               ; preds = %19
  %32 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %33 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  store %struct.ethtool_tcpip4_spec* %34, %struct.ethtool_tcpip4_spec** %8, align 8
  %35 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %36 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  store %struct.ethtool_tcpip4_spec* %37, %struct.ethtool_tcpip4_spec** %9, align 8
  br label %45

38:                                               ; preds = %19
  %39 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %40 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store %struct.ethtool_tcpip4_spec* %41, %struct.ethtool_tcpip4_spec** %8, align 8
  %42 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %43 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store %struct.ethtool_tcpip4_spec* %44, %struct.ethtool_tcpip4_spec** %9, align 8
  br label %45

45:                                               ; preds = %38, %31, %24
  %46 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %47 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 11
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %53 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 10
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %59 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 9
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %65 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 8
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %71 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @ntohs(i32 %72)
  %74 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 15
  store i8* %73, i8** %74, align 8
  %75 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %76 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @ntohs(i32 %77)
  %79 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 14
  store i8* %78, i8** %79, align 8
  %80 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %81 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @ntohs(i32 %82)
  %84 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 13
  store i8* %83, i8** %84, align 8
  %85 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %86 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @ntohs(i32 %87)
  %89 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 12
  store i8* %88, i8** %89, align 8
  %90 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %91 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %45
  %95 = load %struct.enetc_si*, %struct.enetc_si** %5, align 8
  %96 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @netdev_warn(i32 %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %94, %45
  %100 = load i8*, i8** @ETH_P_IP, align 8
  %101 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 3
  store i8* %100, i8** %101, align 8
  %102 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 0
  store i32 65535, i32* %102, align 8
  br label %192

103:                                              ; preds = %19
  %104 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %105 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store %struct.ethtool_usrip4_spec* %106, %struct.ethtool_usrip4_spec** %10, align 8
  %107 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %108 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store %struct.ethtool_usrip4_spec* %109, %struct.ethtool_usrip4_spec** %11, align 8
  %110 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %10, align 8
  %111 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 11
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32 %112, i32* %115, align 4
  %116 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %11, align 8
  %117 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 10
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %118, i32* %121, align 4
  %122 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %10, align 8
  %123 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 9
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 %124, i32* %127, align 4
  %128 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %11, align 8
  %129 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 8
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 %130, i32* %133, align 4
  %134 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %11, align 8
  %135 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %103
  %139 = load %struct.enetc_si*, %struct.enetc_si** %5, align 8
  %140 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @netdev_warn(i32 %141, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %143

143:                                              ; preds = %138, %103
  %144 = load i8*, i8** @ETH_P_IP, align 8
  %145 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 3
  store i8* %144, i8** %145, align 8
  %146 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 0
  store i32 65535, i32* %146, align 8
  br label %192

147:                                              ; preds = %19
  %148 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %149 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  store %struct.ethhdr* %150, %struct.ethhdr** %12, align 8
  %151 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %152 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  store %struct.ethhdr* %153, %struct.ethhdr** %13, align 8
  %154 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %157 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ether_addr_copy_swap(i32 %155, i32 %158)
  %160 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ethhdr*, %struct.ethhdr** %13, align 8
  %163 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ether_addr_copy_swap(i32 %161, i32 %164)
  %166 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %169 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ether_addr_copy_swap(i32 %167, i32 %170)
  %172 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.ethhdr*, %struct.ethhdr** %13, align 8
  %175 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ether_addr_copy_swap(i32 %173, i32 %176)
  %178 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %179 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @ntohs(i32 %180)
  %182 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 3
  store i8* %181, i8** %182, align 8
  %183 = load %struct.ethhdr*, %struct.ethhdr** %13, align 8
  %184 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @ntohs(i32 %185)
  %187 = ptrtoint i8* %186 to i32
  %188 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 0
  store i32 %187, i32* %188, align 8
  br label %192

189:                                              ; preds = %19
  %190 = load i32, i32* @EOPNOTSUPP, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %4, align 4
  br label %218

192:                                              ; preds = %147, %143, %99
  %193 = load i32, i32* @ENETC_RFSE_EN, align 4
  %194 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %193
  store i32 %196, i32* %194, align 8
  %197 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %198 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @RX_CLS_FLOW_DISC, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %192
  %203 = load i32, i32* @ENETC_RFSE_MODE_BD, align 4
  %204 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %203
  store i32 %206, i32* %204, align 8
  %207 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %208 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.enetc_cmd_rfse, %struct.enetc_cmd_rfse* %14, i32 0, i32 1
  store i64 %209, i64* %210, align 8
  br label %211

211:                                              ; preds = %202, %192
  br label %212

212:                                              ; preds = %211, %18
  %213 = load %struct.enetc_si*, %struct.enetc_si** %5, align 8
  %214 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %215 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @enetc_set_fs_entry(%struct.enetc_si* %213, %struct.enetc_cmd_rfse* %14, i32 %216)
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %212, %189
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @ntohs(i32) #2

declare dso_local i32 @netdev_warn(i32, i8*) #2

declare dso_local i32 @ether_addr_copy_swap(i32, i32) #2

declare dso_local i32 @enetc_set_fs_entry(%struct.enetc_si*, %struct.enetc_cmd_rfse*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
