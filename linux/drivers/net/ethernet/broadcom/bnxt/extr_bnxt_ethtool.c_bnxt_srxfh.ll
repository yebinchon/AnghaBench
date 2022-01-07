; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_srxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_srxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32 }
%struct.ethtool_rxnfc = type { i64, i32 }

@RXH_4TUPLE = common dso_local global i64 0, align 8
@RXH_2TUPLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV4 = common dso_local global i32 0, align 4
@BNXT_FLAG_UDP_RSS_CAP = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV4 = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV6 = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV6 = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_TYPE_IPV4 = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_TYPE_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.ethtool_rxnfc*)* @bnxt_srxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_srxfh(%struct.bnxt* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %9 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RXH_4TUPLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 4, i32* %7, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RXH_2TUPLE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 2, i32* %7, align 4
  br label %35

25:                                               ; preds = %18
  %26 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %201

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %24
  br label %36

36:                                               ; preds = %35, %17
  %37 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 131
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV4, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV4, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %41
  br label %140

53:                                               ; preds = %36
  %54 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 129
  br i1 %57, label %58, label %83

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %63 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @BNXT_FLAG_UDP_RSS_CAP, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %201

71:                                               ; preds = %61, %58
  %72 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV4, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 4
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV4, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %71
  br label %139

83:                                               ; preds = %53
  %84 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 130
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV6, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 4
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %95, %88
  br label %138

100:                                              ; preds = %83
  %101 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %102 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 128
  br i1 %104, label %105, label %130

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %110 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @BNXT_FLAG_UDP_RSS_CAP, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %108
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %201

118:                                              ; preds = %108, %105
  %119 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV6, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %6, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp eq i32 %123, 4
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %125, %118
  br label %137

130:                                              ; preds = %100
  %131 = load i32, i32* %7, align 4
  %132 = icmp eq i32 %131, 4
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %201

136:                                              ; preds = %130
  br label %137

137:                                              ; preds = %136, %129
  br label %138

138:                                              ; preds = %137, %99
  br label %139

139:                                              ; preds = %138, %82
  br label %140

140:                                              ; preds = %139, %52
  %141 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %142 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  switch i32 %143, label %178 [
    i32 131, label %144
    i32 129, label %144
    i32 133, label %144
    i32 141, label %144
    i32 139, label %144
    i32 137, label %144
    i32 135, label %144
    i32 130, label %161
    i32 128, label %161
    i32 132, label %161
    i32 140, label %161
    i32 138, label %161
    i32 136, label %161
    i32 134, label %161
  ]

144:                                              ; preds = %140, %140, %140, %140, %140, %140, %140
  %145 = load i32, i32* %7, align 4
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_IPV4, align 4
  %149 = load i32, i32* %6, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %6, align 4
  br label %160

151:                                              ; preds = %144
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_IPV4, align 4
  %156 = xor i32 %155, -1
  %157 = load i32, i32* %6, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %154, %151
  br label %160

160:                                              ; preds = %159, %147
  br label %178

161:                                              ; preds = %140, %140, %140, %140, %140, %140, %140
  %162 = load i32, i32* %7, align 4
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_IPV6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %6, align 4
  br label %177

168:                                              ; preds = %161
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_IPV6, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %6, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %171, %168
  br label %177

177:                                              ; preds = %176, %164
  br label %178

178:                                              ; preds = %140, %177, %160
  %179 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %180 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  store i32 0, i32* %3, align 4
  br label %201

185:                                              ; preds = %178
  %186 = load i32, i32* %6, align 4
  %187 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %188 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %190 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @netif_running(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %185
  %195 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %196 = call i32 @bnxt_close_nic(%struct.bnxt* %195, i32 0, i32 0)
  %197 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %198 = call i32 @bnxt_open_nic(%struct.bnxt* %197, i32 0, i32 0)
  store i32 %198, i32* %8, align 4
  br label %199

199:                                              ; preds = %194, %185
  %200 = load i32, i32* %8, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %199, %184, %133, %115, %68, %31
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @bnxt_close_nic(%struct.bnxt*, i32, i32) #1

declare dso_local i32 @bnxt_open_nic(%struct.bnxt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
