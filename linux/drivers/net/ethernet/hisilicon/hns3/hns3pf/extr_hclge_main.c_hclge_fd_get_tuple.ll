; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_fd_get_tuple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_fd_get_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32 }
%struct.ethtool_rx_flow_spec = type { i32, %struct.TYPE_17__, %struct.TYPE_32__, %struct.TYPE_23__, %struct.TYPE_20__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_31__, %struct.TYPE_29__, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_22__ }
%struct.TYPE_31__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_30__, %struct.TYPE_28__, %struct.TYPE_26__, %struct.TYPE_24__, %struct.TYPE_19__ }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }
%struct.hclge_fd_rule = type { %struct.TYPE_21__, %struct.TYPE_18__ }
%struct.TYPE_21__ = type { i32, i32, i32, i8*, i32, i8**, i8**, i8*, i8*, i32 }
%struct.TYPE_18__ = type { i32, i8*, i32, i8*, i32, i8**, i8**, i8*, i8*, i32 }

@FLOW_EXT = common dso_local global i32 0, align 4
@FLOW_MAC_EXT = common dso_local global i32 0, align 4
@IPV4_INDEX = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i8* null, align 8
@IPV6_SIZE = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i8* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.ethtool_rx_flow_spec*, %struct.hclge_fd_rule*)* @hclge_fd_get_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_fd_get_tuple(%struct.hclge_dev* %0, %struct.ethtool_rx_flow_spec* %1, %struct.hclge_fd_rule* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %7 = alloca %struct.hclge_fd_rule*, align 8
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store %struct.ethtool_rx_flow_spec* %1, %struct.ethtool_rx_flow_spec** %6, align 8
  store %struct.hclge_fd_rule* %2, %struct.hclge_fd_rule** %7, align 8
  %9 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %10 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FLOW_EXT, align 4
  %13 = load i32, i32* @FLOW_MAC_EXT, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %430 [
    i32 133, label %18
    i32 131, label %18
    i32 129, label %18
    i32 134, label %126
    i32 132, label %214
    i32 130, label %214
    i32 128, label %214
    i32 135, label %302
    i32 136, label %370
  ]

18:                                               ; preds = %3, %3, %3
  %19 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %20 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @be32_to_cpu(i32 %23)
  %25 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %26 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 6
  %28 = load i8**, i8*** %27, align 8
  %29 = load i64, i64* @IPV4_INDEX, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  store i8* %24, i8** %30, align 8
  %31 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %32 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @be32_to_cpu(i32 %35)
  %37 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %38 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 6
  %40 = load i8**, i8*** %39, align 8
  %41 = load i64, i64* @IPV4_INDEX, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  store i8* %36, i8** %42, align 8
  %43 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %44 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @be32_to_cpu(i32 %47)
  %49 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %50 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 5
  %52 = load i8**, i8*** %51, align 8
  %53 = load i64, i64* @IPV4_INDEX, align 8
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  store i8* %48, i8** %54, align 8
  %55 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %56 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @be32_to_cpu(i32 %59)
  %61 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %62 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 5
  %64 = load i8**, i8*** %63, align 8
  %65 = load i64, i64* @IPV4_INDEX, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  store i8* %60, i8** %66, align 8
  %67 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %68 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @be16_to_cpu(i32 %71)
  %73 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %74 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 8
  store i8* %72, i8** %75, align 8
  %76 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %77 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @be16_to_cpu(i32 %80)
  %82 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %83 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 8
  store i8* %81, i8** %84, align 8
  %85 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %86 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @be16_to_cpu(i32 %89)
  %91 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %92 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 7
  store i8* %90, i8** %93, align 8
  %94 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %95 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @be16_to_cpu(i32 %98)
  %100 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %101 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 7
  store i8* %99, i8** %102, align 8
  %103 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %104 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %109 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 9
  store i32 %107, i32* %110, align 8
  %111 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %112 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %117 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 9
  store i32 %115, i32* %118, align 8
  %119 = load i8*, i8** @ETH_P_IP, align 8
  %120 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %121 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 3
  store i8* %119, i8** %122, align 8
  %123 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %124 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  store i32 65535, i32* %125, align 8
  br label %433

126:                                              ; preds = %3
  %127 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %128 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @be32_to_cpu(i32 %131)
  %133 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %134 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 6
  %136 = load i8**, i8*** %135, align 8
  %137 = load i64, i64* @IPV4_INDEX, align 8
  %138 = getelementptr inbounds i8*, i8** %136, i64 %137
  store i8* %132, i8** %138, align 8
  %139 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %140 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @be32_to_cpu(i32 %143)
  %145 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %146 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 6
  %148 = load i8**, i8*** %147, align 8
  %149 = load i64, i64* @IPV4_INDEX, align 8
  %150 = getelementptr inbounds i8*, i8** %148, i64 %149
  store i8* %144, i8** %150, align 8
  %151 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %152 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @be32_to_cpu(i32 %155)
  %157 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %158 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 5
  %160 = load i8**, i8*** %159, align 8
  %161 = load i64, i64* @IPV4_INDEX, align 8
  %162 = getelementptr inbounds i8*, i8** %160, i64 %161
  store i8* %156, i8** %162, align 8
  %163 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %164 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @be32_to_cpu(i32 %167)
  %169 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %170 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 5
  %172 = load i8**, i8*** %171, align 8
  %173 = load i64, i64* @IPV4_INDEX, align 8
  %174 = getelementptr inbounds i8*, i8** %172, i64 %173
  store i8* %168, i8** %174, align 8
  %175 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %176 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %181 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 9
  store i32 %179, i32* %182, align 8
  %183 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %184 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %189 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 9
  store i32 %187, i32* %190, align 8
  %191 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %192 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %197 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 2
  store i32 %195, i32* %198, align 8
  %199 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %200 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %205 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 1
  store i32 %203, i32* %206, align 4
  %207 = load i8*, i8** @ETH_P_IP, align 8
  %208 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %209 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 3
  store i8* %207, i8** %210, align 8
  %211 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %212 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  store i32 65535, i32* %213, align 8
  br label %433

214:                                              ; preds = %3, %3, %3
  %215 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %216 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 6
  %218 = load i8**, i8*** %217, align 8
  %219 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %220 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @IPV6_SIZE, align 4
  %225 = call i32 @be32_to_cpu_array(i8** %218, i32 %223, i32 %224)
  %226 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %227 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 6
  %229 = load i8**, i8*** %228, align 8
  %230 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %231 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @IPV6_SIZE, align 4
  %236 = call i32 @be32_to_cpu_array(i8** %229, i32 %234, i32 %235)
  %237 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %238 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 5
  %240 = load i8**, i8*** %239, align 8
  %241 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %242 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @IPV6_SIZE, align 4
  %247 = call i32 @be32_to_cpu_array(i8** %240, i32 %245, i32 %246)
  %248 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %249 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 5
  %251 = load i8**, i8*** %250, align 8
  %252 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %253 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @IPV6_SIZE, align 4
  %258 = call i32 @be32_to_cpu_array(i8** %251, i32 %256, i32 %257)
  %259 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %260 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i8* @be16_to_cpu(i32 %263)
  %265 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %266 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 8
  store i8* %264, i8** %267, align 8
  %268 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %269 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i8* @be16_to_cpu(i32 %272)
  %274 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %275 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 8
  store i8* %273, i8** %276, align 8
  %277 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %278 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i8* @be16_to_cpu(i32 %281)
  %283 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %284 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 7
  store i8* %282, i8** %285, align 8
  %286 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %287 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i8* @be16_to_cpu(i32 %290)
  %292 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %293 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %293, i32 0, i32 7
  store i8* %291, i8** %294, align 8
  %295 = load i8*, i8** @ETH_P_IPV6, align 8
  %296 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %297 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 3
  store i8* %295, i8** %298, align 8
  %299 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %300 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 0
  store i32 65535, i32* %301, align 8
  br label %433

302:                                              ; preds = %3
  %303 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %304 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 6
  %306 = load i8**, i8*** %305, align 8
  %307 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %308 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %307, i32 0, i32 4
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @IPV6_SIZE, align 4
  %313 = call i32 @be32_to_cpu_array(i8** %306, i32 %311, i32 %312)
  %314 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %315 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %315, i32 0, i32 6
  %317 = load i8**, i8*** %316, align 8
  %318 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %319 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @IPV6_SIZE, align 4
  %324 = call i32 @be32_to_cpu_array(i8** %317, i32 %322, i32 %323)
  %325 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %326 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i32 0, i32 5
  %328 = load i8**, i8*** %327, align 8
  %329 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %330 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %329, i32 0, i32 4
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @IPV6_SIZE, align 4
  %335 = call i32 @be32_to_cpu_array(i8** %328, i32 %333, i32 %334)
  %336 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %337 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 5
  %339 = load i8**, i8*** %338, align 8
  %340 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %341 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @IPV6_SIZE, align 4
  %346 = call i32 @be32_to_cpu_array(i8** %339, i32 %344, i32 %345)
  %347 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %348 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %347, i32 0, i32 4
  %349 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %353 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i32 0, i32 2
  store i32 %351, i32* %354, align 8
  %355 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %356 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %361 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %361, i32 0, i32 1
  store i32 %359, i32* %362, align 4
  %363 = load i8*, i8** @ETH_P_IPV6, align 8
  %364 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %365 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %365, i32 0, i32 3
  store i8* %363, i8** %366, align 8
  %367 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %368 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i32 0, i32 0
  store i32 65535, i32* %369, align 8
  br label %433

370:                                              ; preds = %3
  %371 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %372 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %376 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %375, i32 0, i32 4
  %377 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @ether_addr_copy(i32 %374, i32 %379)
  %381 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %382 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %386 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %385, i32 0, i32 3
  %387 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @ether_addr_copy(i32 %384, i32 %389)
  %391 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %392 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %396 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %395, i32 0, i32 4
  %397 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @ether_addr_copy(i32 %394, i32 %399)
  %401 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %402 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %406 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %405, i32 0, i32 3
  %407 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = call i32 @ether_addr_copy(i32 %404, i32 %409)
  %411 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %412 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %411, i32 0, i32 4
  %413 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = call i8* @be16_to_cpu(i32 %415)
  %417 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %418 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %418, i32 0, i32 3
  store i8* %416, i8** %419, align 8
  %420 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %421 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %420, i32 0, i32 3
  %422 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = call i8* @be16_to_cpu(i32 %424)
  %426 = ptrtoint i8* %425 to i32
  %427 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %428 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %428, i32 0, i32 0
  store i32 %426, i32* %429, align 8
  br label %433

430:                                              ; preds = %3
  %431 = load i32, i32* @EOPNOTSUPP, align 4
  %432 = sub nsw i32 0, %431
  store i32 %432, i32* %4, align 4
  br label %511

433:                                              ; preds = %370, %302, %214, %126, %18
  %434 = load i32, i32* %8, align 4
  switch i32 %434, label %459 [
    i32 133, label %435
    i32 132, label %435
    i32 131, label %443
    i32 130, label %443
    i32 129, label %451
    i32 128, label %451
  ]

435:                                              ; preds = %433, %433
  %436 = load i32, i32* @IPPROTO_SCTP, align 4
  %437 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %438 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %438, i32 0, i32 2
  store i32 %436, i32* %439, align 8
  %440 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %441 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %441, i32 0, i32 1
  store i32 255, i32* %442, align 4
  br label %460

443:                                              ; preds = %433, %433
  %444 = load i32, i32* @IPPROTO_TCP, align 4
  %445 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %446 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %446, i32 0, i32 2
  store i32 %444, i32* %447, align 8
  %448 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %449 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %449, i32 0, i32 1
  store i32 255, i32* %450, align 4
  br label %460

451:                                              ; preds = %433, %433
  %452 = load i32, i32* @IPPROTO_UDP, align 4
  %453 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %454 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %454, i32 0, i32 2
  store i32 %452, i32* %455, align 8
  %456 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %457 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %457, i32 0, i32 1
  store i32 255, i32* %458, align 4
  br label %460

459:                                              ; preds = %433
  br label %460

460:                                              ; preds = %459, %451, %443, %435
  %461 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %462 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* @FLOW_EXT, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %484

467:                                              ; preds = %460
  %468 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %469 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %468, i32 0, i32 2
  %470 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = call i8* @be16_to_cpu(i32 %471)
  %473 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %474 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %474, i32 0, i32 1
  store i8* %472, i8** %475, align 8
  %476 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %477 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = call i8* @be16_to_cpu(i32 %479)
  %481 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %482 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %482, i32 0, i32 3
  store i8* %480, i8** %483, align 8
  br label %484

484:                                              ; preds = %467, %460
  %485 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %486 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* @FLOW_MAC_EXT, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %510

491:                                              ; preds = %484
  %492 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %493 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %497 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %496, i32 0, i32 2
  %498 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 4
  %500 = call i32 @ether_addr_copy(i32 %495, i32 %499)
  %501 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %7, align 8
  %502 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %502, i32 0, i32 2
  %504 = load i32, i32* %503, align 8
  %505 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %506 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = call i32 @ether_addr_copy(i32 %504, i32 %508)
  br label %510

510:                                              ; preds = %491, %484
  store i32 0, i32* %4, align 4
  br label %511

511:                                              ; preds = %510, %430
  %512 = load i32, i32* %4, align 4
  ret i32 %512
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu_array(i8**, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
