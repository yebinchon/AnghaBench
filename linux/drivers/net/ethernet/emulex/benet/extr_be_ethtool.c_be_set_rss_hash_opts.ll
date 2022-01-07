; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_set_rss_hash_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_set_rss_hash_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@L3_RSS_FLAGS = common dso_local global i32 0, align 4
@L4_RSS_FLAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RSS_ENABLE_TCP_IPV4 = common dso_local global i64 0, align 8
@RSS_ENABLE_IPV4 = common dso_local global i64 0, align 8
@RSS_ENABLE_TCP_IPV6 = common dso_local global i64 0, align 8
@RSS_ENABLE_IPV6 = common dso_local global i64 0, align 8
@RSS_ENABLE_UDP_IPV4 = common dso_local global i64 0, align 8
@RSS_ENABLE_UDP_IPV6 = common dso_local global i64 0, align 8
@RSS_INDIR_TABLE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, %struct.ethtool_rxnfc*)* @be_set_rss_hash_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_set_rss_hash_opts(%struct.be_adapter* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @L3_RSS_FLAGS, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @L3_RSS_FLAGS, align 4
  %22 = load i32, i32* @L4_RSS_FLAGS, align 4
  %23 = or i32 %21, %22
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %204

28:                                               ; preds = %17, %2
  %29 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %170 [
    i32 131, label %32
    i32 130, label %59
    i32 129, label %86
    i32 128, label %128
  ]

32:                                               ; preds = %28
  %33 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @L3_RSS_FLAGS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i64, i64* @RSS_ENABLE_TCP_IPV4, align 8
  %40 = xor i64 %39, -1
  %41 = load i64, i64* %7, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %7, align 8
  br label %58

43:                                               ; preds = %32
  %44 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @L3_RSS_FLAGS, align 4
  %48 = load i32, i32* @L4_RSS_FLAGS, align 4
  %49 = or i32 %47, %48
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i64, i64* @RSS_ENABLE_IPV4, align 8
  %53 = load i64, i64* @RSS_ENABLE_TCP_IPV4, align 8
  %54 = or i64 %52, %53
  %55 = load i64, i64* %7, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %51, %43
  br label %58

58:                                               ; preds = %57, %38
  br label %173

59:                                               ; preds = %28
  %60 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @L3_RSS_FLAGS, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i64, i64* @RSS_ENABLE_TCP_IPV6, align 8
  %67 = xor i64 %66, -1
  %68 = load i64, i64* %7, align 8
  %69 = and i64 %68, %67
  store i64 %69, i64* %7, align 8
  br label %85

70:                                               ; preds = %59
  %71 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @L3_RSS_FLAGS, align 4
  %75 = load i32, i32* @L4_RSS_FLAGS, align 4
  %76 = or i32 %74, %75
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i64, i64* @RSS_ENABLE_IPV6, align 8
  %80 = load i64, i64* @RSS_ENABLE_TCP_IPV6, align 8
  %81 = or i64 %79, %80
  %82 = load i64, i64* %7, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %78, %70
  br label %85

85:                                               ; preds = %84, %65
  br label %173

86:                                               ; preds = %28
  %87 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @L3_RSS_FLAGS, align 4
  %91 = load i32, i32* @L4_RSS_FLAGS, align 4
  %92 = or i32 %90, %91
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %96 = call i32 @BEx_chip(%struct.be_adapter* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %204

101:                                              ; preds = %94, %86
  %102 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %103 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @L3_RSS_FLAGS, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load i64, i64* @RSS_ENABLE_UDP_IPV4, align 8
  %109 = xor i64 %108, -1
  %110 = load i64, i64* %7, align 8
  %111 = and i64 %110, %109
  store i64 %111, i64* %7, align 8
  br label %127

112:                                              ; preds = %101
  %113 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %114 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @L3_RSS_FLAGS, align 4
  %117 = load i32, i32* @L4_RSS_FLAGS, align 4
  %118 = or i32 %116, %117
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %112
  %121 = load i64, i64* @RSS_ENABLE_IPV4, align 8
  %122 = load i64, i64* @RSS_ENABLE_UDP_IPV4, align 8
  %123 = or i64 %121, %122
  %124 = load i64, i64* %7, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %7, align 8
  br label %126

126:                                              ; preds = %120, %112
  br label %127

127:                                              ; preds = %126, %107
  br label %173

128:                                              ; preds = %28
  %129 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %130 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @L3_RSS_FLAGS, align 4
  %133 = load i32, i32* @L4_RSS_FLAGS, align 4
  %134 = or i32 %132, %133
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %128
  %137 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %138 = call i32 @BEx_chip(%struct.be_adapter* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %204

143:                                              ; preds = %136, %128
  %144 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %145 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @L3_RSS_FLAGS, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = load i64, i64* @RSS_ENABLE_UDP_IPV6, align 8
  %151 = xor i64 %150, -1
  %152 = load i64, i64* %7, align 8
  %153 = and i64 %152, %151
  store i64 %153, i64* %7, align 8
  br label %169

154:                                              ; preds = %143
  %155 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %156 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @L3_RSS_FLAGS, align 4
  %159 = load i32, i32* @L4_RSS_FLAGS, align 4
  %160 = or i32 %158, %159
  %161 = icmp eq i32 %157, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %154
  %163 = load i64, i64* @RSS_ENABLE_IPV6, align 8
  %164 = load i64, i64* @RSS_ENABLE_UDP_IPV6, align 8
  %165 = or i64 %163, %164
  %166 = load i64, i64* %7, align 8
  %167 = or i64 %166, %165
  store i64 %167, i64* %7, align 8
  br label %168

168:                                              ; preds = %162, %154
  br label %169

169:                                              ; preds = %168, %149
  br label %173

170:                                              ; preds = %28
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %204

173:                                              ; preds = %169, %127, %85, %58
  %174 = load i64, i64* %7, align 8
  %175 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %176 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %174, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  store i32 0, i32* %3, align 4
  br label %204

181:                                              ; preds = %173
  %182 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %183 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %184 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load i64, i64* %7, align 8
  %188 = load i32, i32* @RSS_INDIR_TABLE_LEN, align 4
  %189 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %190 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @be_cmd_rss_config(%struct.be_adapter* %182, i32 %186, i64 %187, i32 %188, i32 %192)
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %181
  %197 = load i64, i64* %7, align 8
  %198 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %199 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  store i64 %197, i64* %200, align 8
  br label %201

201:                                              ; preds = %196, %181
  %202 = load i32, i32* %6, align 4
  %203 = call i32 @be_cmd_status(i32 %202)
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %201, %180, %170, %140, %98, %25
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_rss_config(%struct.be_adapter*, i32, i64, i32, i32) #1

declare dso_local i32 @be_cmd_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
