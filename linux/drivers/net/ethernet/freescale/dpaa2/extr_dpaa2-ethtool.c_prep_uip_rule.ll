; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_prep_uip_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_prep_uip_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_usrip4_spec = type { i64, i64, i64, i64, i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NET_PROT_IP = common dso_local global i32 0, align 4
@NH_FLD_IP_SRC = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_IPSRC = common dso_local global i32 0, align 4
@NH_FLD_IP_DST = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_IPDST = common dso_local global i32 0, align 4
@NH_FLD_IP_PROTO = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_IPPROTO = common dso_local global i32 0, align 4
@NET_PROT_UDP = common dso_local global i32 0, align 4
@NH_FLD_UDP_PORT_SRC = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_L4SRC = common dso_local global i32 0, align 4
@NH_FLD_UDP_PORT_DST = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_L4DST = common dso_local global i32 0, align 4
@NET_PROT_ETH = common dso_local global i32 0, align 4
@NH_FLD_ETH_TYPE = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_ETHTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec*, i8*, i8*, i32*)* @prep_uip_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prep_uip_rule(%struct.ethtool_usrip4_spec* %0, %struct.ethtool_usrip4_spec* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ethtool_usrip4_spec*, align 8
  %8 = alloca %struct.ethtool_usrip4_spec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ethtool_usrip4_spec* %0, %struct.ethtool_usrip4_spec** %7, align 8
  store %struct.ethtool_usrip4_spec* %1, %struct.ethtool_usrip4_spec** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %8, align 8
  %16 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %8, align 8
  %21 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %5
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %195

27:                                               ; preds = %19
  %28 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %8, align 8
  %29 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %27
  %33 = load i32, i32* @NET_PROT_IP, align 4
  %34 = load i32, i32* @NH_FLD_IP_SRC, align 4
  %35 = call i32 @dpaa2_eth_cls_fld_off(i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %7, align 8
  %37 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %39, i64 %41
  %43 = bitcast i8* %42 to i64*
  store i64 %38, i64* %43, align 8
  %44 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %8, align 8
  %45 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %47, i64 %49
  %51 = bitcast i8* %50 to i64*
  store i64 %46, i64* %51, align 8
  %52 = load i32, i32* @DPAA2_ETH_DIST_IPSRC, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %32, %27
  %57 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %8, align 8
  %58 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %56
  %62 = load i32, i32* @NET_PROT_IP, align 4
  %63 = load i32, i32* @NH_FLD_IP_DST, align 4
  %64 = call i32 @dpaa2_eth_cls_fld_off(i32 %62, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %7, align 8
  %66 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %68, i64 %70
  %72 = bitcast i8* %71 to i64*
  store i64 %67, i64* %72, align 8
  %73 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %8, align 8
  %74 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr i8, i8* %76, i64 %78
  %80 = bitcast i8* %79 to i64*
  store i64 %75, i64* %80, align 8
  %81 = load i32, i32* @DPAA2_ETH_DIST_IPDST, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %61, %56
  %86 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %8, align 8
  %87 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %85
  %91 = load i32, i32* @NET_PROT_IP, align 4
  %92 = load i32, i32* @NH_FLD_IP_PROTO, align 4
  %93 = call i32 @dpaa2_eth_cls_fld_off(i32 %91, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %7, align 8
  %95 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr i8, i8* %97, i64 %99
  %101 = bitcast i8* %100 to i64*
  store i64 %96, i64* %101, align 8
  %102 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %8, align 8
  %103 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr i8, i8* %105, i64 %107
  %109 = bitcast i8* %108 to i64*
  store i64 %104, i64* %109, align 8
  %110 = load i32, i32* @DPAA2_ETH_DIST_IPPROTO, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %110
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %90, %85
  %115 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %8, align 8
  %116 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %174

119:                                              ; preds = %114
  %120 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %7, align 8
  %121 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @be32_to_cpu(i64 %122)
  store i32 %123, i32* %13, align 4
  %124 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %8, align 8
  %125 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @be32_to_cpu(i64 %126)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* @NET_PROT_UDP, align 4
  %129 = load i32, i32* @NH_FLD_UDP_PORT_SRC, align 4
  %130 = call i32 @dpaa2_eth_cls_fld_off(i32 %128, i32 %129)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = ashr i32 %131, 16
  %133 = call i32 @htons(i32 %132)
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr i8, i8* %134, i64 %136
  %138 = bitcast i8* %137 to i32*
  store i32 %133, i32* %138, align 4
  %139 = load i32, i32* %14, align 4
  %140 = ashr i32 %139, 16
  %141 = call i32 @htons(i32 %140)
  %142 = load i8*, i8** %10, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr i8, i8* %142, i64 %144
  %146 = bitcast i8* %145 to i32*
  store i32 %141, i32* %146, align 4
  %147 = load i32, i32* @DPAA2_ETH_DIST_L4SRC, align 4
  %148 = load i32*, i32** %11, align 8
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %147
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* @NET_PROT_UDP, align 4
  %152 = load i32, i32* @NH_FLD_UDP_PORT_DST, align 4
  %153 = call i32 @dpaa2_eth_cls_fld_off(i32 %151, i32 %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %13, align 4
  %155 = and i32 %154, 65535
  %156 = call i32 @htons(i32 %155)
  %157 = load i8*, i8** %9, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr i8, i8* %157, i64 %159
  %161 = bitcast i8* %160 to i32*
  store i32 %156, i32* %161, align 4
  %162 = load i32, i32* %14, align 4
  %163 = and i32 %162, 65535
  %164 = call i32 @htons(i32 %163)
  %165 = load i8*, i8** %10, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr i8, i8* %165, i64 %167
  %169 = bitcast i8* %168 to i32*
  store i32 %164, i32* %169, align 4
  %170 = load i32, i32* @DPAA2_ETH_DIST_L4DST, align 4
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %170
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %119, %114
  %175 = load i32, i32* @NET_PROT_ETH, align 4
  %176 = load i32, i32* @NH_FLD_ETH_TYPE, align 4
  %177 = call i32 @dpaa2_eth_cls_fld_off(i32 %175, i32 %176)
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* @ETH_P_IP, align 4
  %179 = call i32 @htons(i32 %178)
  %180 = load i8*, i8** %9, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr i8, i8* %180, i64 %182
  %184 = bitcast i8* %183 to i32*
  store i32 %179, i32* %184, align 4
  %185 = call i32 @htons(i32 65535)
  %186 = load i8*, i8** %10, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr i8, i8* %186, i64 %188
  %190 = bitcast i8* %189 to i32*
  store i32 %185, i32* %190, align 4
  %191 = load i32, i32* @DPAA2_ETH_DIST_ETHTYPE, align 4
  %192 = load i32*, i32** %11, align 8
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %191
  store i32 %194, i32* %192, align 4
  store i32 0, i32* %6, align 4
  br label %195

195:                                              ; preds = %174, %24
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local i32 @dpaa2_eth_cls_fld_off(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
