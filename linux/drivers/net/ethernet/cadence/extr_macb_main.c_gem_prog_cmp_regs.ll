; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_prog_cmp_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_prog_cmp_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32 }
%struct.ethtool_rx_flow_spec = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.ethtool_tcpip4_spec }
%struct.ethtool_tcpip4_spec = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.ethtool_tcpip4_spec }

@T2DISMSK = common dso_local global i32 0, align 4
@T2CMPOFST = common dso_local global i32 0, align 4
@GEM_T2COMPOFST_ETYPE = common dso_local global i32 0, align 4
@T2OFST = common dso_local global i32 0, align 4
@ETYPE_SRCIP_OFFSET = common dso_local global i32 0, align 4
@T2CMPW0 = common dso_local global i32 0, align 4
@T2CMPW1 = common dso_local global i32 0, align 4
@ETYPE_DSTIP_OFFSET = common dso_local global i32 0, align 4
@GEM_T2COMPOFST_IPHDR = common dso_local global i32 0, align 4
@T2MASK = common dso_local global i32 0, align 4
@T2CMP = common dso_local global i32 0, align 4
@IPHDR_SRCPORT_OFFSET = common dso_local global i32 0, align 4
@IPHDR_DSTPORT_OFFSET = common dso_local global i32 0, align 4
@QUEUE = common dso_local global i32 0, align 4
@ETHT2IDX = common dso_local global i32 0, align 4
@SCRT2_ETHT = common dso_local global i32 0, align 4
@CMPA = common dso_local global i32 0, align 4
@CMPB = common dso_local global i32 0, align 4
@CMPC = common dso_local global i32 0, align 4
@SCRT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*, %struct.ethtool_rx_flow_spec*)* @gem_prog_cmp_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_prog_cmp_regs(%struct.macb* %0, %struct.ethtool_rx_flow_spec* %1) #0 {
  %3 = alloca %struct.macb*, align 8
  %4 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %5 = alloca %struct.ethtool_tcpip4_spec*, align 8
  %6 = alloca %struct.ethtool_tcpip4_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.macb* %0, %struct.macb** %3, align 8
  store %struct.ethtool_rx_flow_spec* %1, %struct.ethtool_rx_flow_spec** %4, align 8
  %14 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.ethtool_tcpip4_spec* %19, %struct.ethtool_tcpip4_spec** %5, align 8
  %20 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.ethtool_tcpip4_spec* %22, %struct.ethtool_tcpip4_spec** %6, align 8
  %23 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %6, align 8
  %24 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %56

27:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %28 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @T2DISMSK, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @GEM_BFINS(i32 %31, i32 1, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @T2CMPOFST, align 4
  %35 = load i32, i32* @GEM_T2COMPOFST_ETYPE, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @GEM_BFINS(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @T2OFST, align 4
  %39 = load i32, i32* @ETYPE_SRCIP_OFFSET, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @GEM_BFINS(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.macb*, %struct.macb** %3, align 8
  %43 = load i32, i32* @T2CMPW0, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @GEM_IP4SRC_CMP(i32 %44)
  %46 = call i32 @T2CMP_OFST(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @gem_writel_n(%struct.macb* %42, i32 %43, i32 %46, i32 %47)
  %49 = load %struct.macb*, %struct.macb** %3, align 8
  %50 = load i32, i32* @T2CMPW1, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @GEM_IP4SRC_CMP(i32 %51)
  %53 = call i32 @T2CMP_OFST(i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @gem_writel_n(%struct.macb* %49, i32 %50, i32 %53, i32 %54)
  store i32 1, i32* %11, align 4
  br label %56

56:                                               ; preds = %27, %2
  %57 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %6, align 8
  %58 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %90

61:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %62 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @T2DISMSK, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @GEM_BFINS(i32 %65, i32 1, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @T2CMPOFST, align 4
  %69 = load i32, i32* @GEM_T2COMPOFST_ETYPE, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @GEM_BFINS(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* @T2OFST, align 4
  %73 = load i32, i32* @ETYPE_DSTIP_OFFSET, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @GEM_BFINS(i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load %struct.macb*, %struct.macb** %3, align 8
  %77 = load i32, i32* @T2CMPW0, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @GEM_IP4DST_CMP(i32 %78)
  %80 = call i32 @T2CMP_OFST(i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @gem_writel_n(%struct.macb* %76, i32 %77, i32 %80, i32 %81)
  %83 = load %struct.macb*, %struct.macb** %3, align 8
  %84 = load i32, i32* @T2CMPW1, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @GEM_IP4DST_CMP(i32 %85)
  %87 = call i32 @T2CMP_OFST(i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @gem_writel_n(%struct.macb* %83, i32 %84, i32 %87, i32 %88)
  store i32 1, i32* %12, align 4
  br label %90

90:                                               ; preds = %61, %56
  %91 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %6, align 8
  %92 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 65535
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %6, align 8
  %97 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 65535
  br i1 %99, label %100, label %181

100:                                              ; preds = %95, %90
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %101 = load i32, i32* @T2CMPOFST, align 4
  %102 = load i32, i32* @GEM_T2COMPOFST_IPHDR, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @GEM_BFINS(i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %6, align 8
  %106 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %6, align 8
  %109 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %107, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %100
  %113 = load i32, i32* @T2MASK, align 4
  %114 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %5, align 8
  %115 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @GEM_BFINS(i32 %113, i32 %116, i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* @T2CMP, align 4
  %120 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %5, align 8
  %121 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @GEM_BFINS(i32 %119, i32 %122, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* @T2DISMSK, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @GEM_BFINS(i32 %125, i32 1, i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* @T2OFST, align 4
  %129 = load i32, i32* @IPHDR_SRCPORT_OFFSET, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @GEM_BFINS(i32 %128, i32 %129, i32 %130)
  store i32 %131, i32* %9, align 4
  br label %166

132:                                              ; preds = %100
  %133 = load i32, i32* @T2DISMSK, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @GEM_BFINS(i32 %133, i32 0, i32 %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* @T2MASK, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @GEM_BFINS(i32 %136, i32 65535, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %6, align 8
  %140 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 65535
  br i1 %142, label %143, label %154

143:                                              ; preds = %132
  %144 = load i32, i32* @T2CMP, align 4
  %145 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %5, align 8
  %146 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @GEM_BFINS(i32 %144, i32 %147, i32 %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* @T2OFST, align 4
  %151 = load i32, i32* @IPHDR_SRCPORT_OFFSET, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @GEM_BFINS(i32 %150, i32 %151, i32 %152)
  store i32 %153, i32* %9, align 4
  br label %165

154:                                              ; preds = %132
  %155 = load i32, i32* @T2CMP, align 4
  %156 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %5, align 8
  %157 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @GEM_BFINS(i32 %155, i32 %158, i32 %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* @T2OFST, align 4
  %162 = load i32, i32* @IPHDR_DSTPORT_OFFSET, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @GEM_BFINS(i32 %161, i32 %162, i32 %163)
  store i32 %164, i32* %9, align 4
  br label %165

165:                                              ; preds = %154, %143
  br label %166

166:                                              ; preds = %165, %112
  %167 = load %struct.macb*, %struct.macb** %3, align 8
  %168 = load i32, i32* @T2CMPW0, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @GEM_PORT_CMP(i32 %169)
  %171 = call i32 @T2CMP_OFST(i32 %170)
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @gem_writel_n(%struct.macb* %167, i32 %168, i32 %171, i32 %172)
  %174 = load %struct.macb*, %struct.macb** %3, align 8
  %175 = load i32, i32* @T2CMPW1, align 4
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @GEM_PORT_CMP(i32 %176)
  %178 = call i32 @T2CMP_OFST(i32 %177)
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @gem_writel_n(%struct.macb* %174, i32 %175, i32 %178, i32 %179)
  store i32 1, i32* %13, align 4
  br label %181

181:                                              ; preds = %166, %95
  store i32 0, i32* %10, align 4
  %182 = load i32, i32* @QUEUE, align 4
  %183 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %184 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, 255
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @GEM_BFINS(i32 %182, i32 %186, i32 %187)
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* @ETHT2IDX, align 4
  %190 = load i32, i32* @SCRT2_ETHT, align 4
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @GEM_BFINS(i32 %189, i32 %190, i32 %191)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %181
  %196 = load i32, i32* @CMPA, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @GEM_IP4SRC_CMP(i32 %197)
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @GEM_BFINS(i32 %196, i32 %198, i32 %199)
  store i32 %200, i32* %10, align 4
  br label %201

201:                                              ; preds = %195, %181
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = load i32, i32* @CMPB, align 4
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @GEM_IP4DST_CMP(i32 %206)
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @GEM_BFINS(i32 %205, i32 %207, i32 %208)
  store i32 %209, i32* %10, align 4
  br label %210

210:                                              ; preds = %204, %201
  %211 = load i32, i32* %13, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %210
  %214 = load i32, i32* @CMPC, align 4
  %215 = load i32, i32* %7, align 4
  %216 = call i32 @GEM_PORT_CMP(i32 %215)
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @GEM_BFINS(i32 %214, i32 %216, i32 %217)
  store i32 %218, i32* %10, align 4
  br label %219

219:                                              ; preds = %213, %210
  %220 = load %struct.macb*, %struct.macb** %3, align 8
  %221 = load i32, i32* @SCRT2, align 4
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @gem_writel_n(%struct.macb* %220, i32 %221, i32 %222, i32 %223)
  ret void
}

declare dso_local i32 @GEM_BFINS(i32, i32, i32) #1

declare dso_local i32 @gem_writel_n(%struct.macb*, i32, i32, i32) #1

declare dso_local i32 @T2CMP_OFST(i32) #1

declare dso_local i32 @GEM_IP4SRC_CMP(i32) #1

declare dso_local i32 @GEM_IP4DST_CMP(i32) #1

declare dso_local i32 @GEM_PORT_CMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
