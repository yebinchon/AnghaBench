; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_prep_l4_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_prep_l4_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_tcpip4_spec = type { i64, i64, i64, i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NET_PROT_IP = common dso_local global i32 0, align 4
@NH_FLD_IP_SRC = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_IPSRC = common dso_local global i32 0, align 4
@NH_FLD_IP_DST = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_IPDST = common dso_local global i32 0, align 4
@NET_PROT_UDP = common dso_local global i32 0, align 4
@NH_FLD_UDP_PORT_SRC = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_L4SRC = common dso_local global i32 0, align 4
@NH_FLD_UDP_PORT_DST = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_L4DST = common dso_local global i32 0, align 4
@NET_PROT_ETH = common dso_local global i32 0, align 4
@NH_FLD_ETH_TYPE = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_ETHTYPE = common dso_local global i32 0, align 4
@NH_FLD_IP_PROTO = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_IPPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec*, i8*, i8*, i32, i32*)* @prep_l4_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prep_l4_rule(%struct.ethtool_tcpip4_spec* %0, %struct.ethtool_tcpip4_spec* %1, i8* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ethtool_tcpip4_spec*, align 8
  %9 = alloca %struct.ethtool_tcpip4_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.ethtool_tcpip4_spec* %0, %struct.ethtool_tcpip4_spec** %8, align 8
  store %struct.ethtool_tcpip4_spec* %1, %struct.ethtool_tcpip4_spec** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %16 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %177

22:                                               ; preds = %6
  %23 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %24 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %22
  %28 = load i32, i32* @NET_PROT_IP, align 4
  %29 = load i32, i32* @NH_FLD_IP_SRC, align 4
  %30 = call i32 @dpaa2_eth_cls_fld_off(i32 %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %32 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %34, i64 %36
  %38 = bitcast i8* %37 to i64*
  store i64 %33, i64* %38, align 8
  %39 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %40 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr i8, i8* %42, i64 %44
  %46 = bitcast i8* %45 to i64*
  store i64 %41, i64* %46, align 8
  %47 = load i32, i32* @DPAA2_ETH_DIST_IPSRC, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %27, %22
  %52 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %53 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  %57 = load i32, i32* @NET_PROT_IP, align 4
  %58 = load i32, i32* @NH_FLD_IP_DST, align 4
  %59 = call i32 @dpaa2_eth_cls_fld_off(i32 %57, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %61 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %63, i64 %65
  %67 = bitcast i8* %66 to i64*
  store i64 %62, i64* %67, align 8
  %68 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %69 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr i8, i8* %71, i64 %73
  %75 = bitcast i8* %74 to i64*
  store i64 %70, i64* %75, align 8
  %76 = load i32, i32* @DPAA2_ETH_DIST_IPDST, align 4
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %56, %51
  %81 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %82 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %80
  %86 = load i32, i32* @NET_PROT_UDP, align 4
  %87 = load i32, i32* @NH_FLD_UDP_PORT_SRC, align 4
  %88 = call i32 @dpaa2_eth_cls_fld_off(i32 %86, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %90 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr i8, i8* %92, i64 %94
  %96 = bitcast i8* %95 to i64*
  store i64 %91, i64* %96, align 8
  %97 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %98 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr i8, i8* %100, i64 %102
  %104 = bitcast i8* %103 to i64*
  store i64 %99, i64* %104, align 8
  %105 = load i32, i32* @DPAA2_ETH_DIST_L4SRC, align 4
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %85, %80
  %110 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %111 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %138

114:                                              ; preds = %109
  %115 = load i32, i32* @NET_PROT_UDP, align 4
  %116 = load i32, i32* @NH_FLD_UDP_PORT_DST, align 4
  %117 = call i32 @dpaa2_eth_cls_fld_off(i32 %115, i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %119 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr i8, i8* %121, i64 %123
  %125 = bitcast i8* %124 to i64*
  store i64 %120, i64* %125, align 8
  %126 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %127 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr i8, i8* %129, i64 %131
  %133 = bitcast i8* %132 to i64*
  store i64 %128, i64* %133, align 8
  %134 = load i32, i32* @DPAA2_ETH_DIST_L4DST, align 4
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %134
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %114, %109
  %139 = load i32, i32* @NET_PROT_ETH, align 4
  %140 = load i32, i32* @NH_FLD_ETH_TYPE, align 4
  %141 = call i32 @dpaa2_eth_cls_fld_off(i32 %139, i32 %140)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* @ETH_P_IP, align 4
  %143 = call i64 @htons(i32 %142)
  %144 = load i8*, i8** %10, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr i8, i8* %144, i64 %146
  %148 = bitcast i8* %147 to i64*
  store i64 %143, i64* %148, align 8
  %149 = call i64 @htons(i32 65535)
  %150 = load i8*, i8** %11, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr i8, i8* %150, i64 %152
  %154 = bitcast i8* %153 to i64*
  store i64 %149, i64* %154, align 8
  %155 = load i32, i32* @DPAA2_ETH_DIST_ETHTYPE, align 4
  %156 = load i32*, i32** %13, align 8
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %155
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* @NET_PROT_IP, align 4
  %160 = load i32, i32* @NH_FLD_IP_PROTO, align 4
  %161 = call i32 @dpaa2_eth_cls_fld_off(i32 %159, i32 %160)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i8*, i8** %10, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr i8, i8* %163, i64 %165
  %167 = bitcast i8* %166 to i32*
  store i32 %162, i32* %167, align 4
  %168 = load i8*, i8** %11, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr i8, i8* %168, i64 %170
  %172 = bitcast i8* %171 to i32*
  store i32 255, i32* %172, align 4
  %173 = load i32, i32* @DPAA2_ETH_DIST_IPPROTO, align 4
  %174 = load i32*, i32** %13, align 8
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %173
  store i32 %176, i32* %174, align 4
  store i32 0, i32* %7, align 4
  br label %177

177:                                              ; preds = %138, %19
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

declare dso_local i32 @dpaa2_eth_cls_fld_off(i32, i32) #1

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
