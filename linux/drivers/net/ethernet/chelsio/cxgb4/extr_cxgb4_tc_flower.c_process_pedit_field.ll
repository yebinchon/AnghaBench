; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_flower.c_process_pedit_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_flower.c_process_pedit_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_filter_specification = type { i32, i32, i8* }

@ETH_DMAC_31_0 = common dso_local global i32 0, align 4
@PEDIT_ETH_DMAC_MASK = common dso_local global i32 0, align 4
@ETH_DMAC_47_32 = common dso_local global i32 0, align 4
@ETH_SMAC_15_0 = common dso_local global i32 0, align 4
@ETH_SMAC_47_16 = common dso_local global i32 0, align 4
@IP4_SRC = common dso_local global i32 0, align 4
@IP4_DST = common dso_local global i32 0, align 4
@NAT_MODE_ALL = common dso_local global i8* null, align 8
@IP6_SRC_31_0 = common dso_local global i32 0, align 4
@IP6_SRC_63_32 = common dso_local global i32 0, align 4
@IP6_SRC_95_64 = common dso_local global i32 0, align 4
@IP6_SRC_127_96 = common dso_local global i32 0, align 4
@IP6_DST_31_0 = common dso_local global i32 0, align 4
@IP6_DST_63_32 = common dso_local global i32 0, align 4
@IP6_DST_95_64 = common dso_local global i32 0, align 4
@IP6_DST_127_96 = common dso_local global i32 0, align 4
@PEDIT_TCP_UDP_SPORT_MASK = common dso_local global i32 0, align 4
@TCP_SPORT = common dso_local global i32 0, align 4
@TCP_DPORT = common dso_local global i32 0, align 4
@UDP_SPORT = common dso_local global i32 0, align 4
@UDP_DPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ch_filter_specification*, i32, i32, i32, i32)* @process_pedit_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_pedit_field(%struct.ch_filter_specification* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ch_filter_specification*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ch_filter_specification* %0, %struct.ch_filter_specification** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %186 [
    i32 147, label %12
    i32 146, label %52
    i32 145, label %70
    i32 144, label %124
    i32 143, label %155
  ]

12:                                               ; preds = %5
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %51 [
    i32 142, label %14
    i32 141, label %22
    i32 140, label %43
  ]

14:                                               ; preds = %12
  %15 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %16 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ETH_DMAC_31_0, align 4
  %21 = call i32 @offload_pedit(%struct.ch_filter_specification* %17, i32 %18, i32 %19, i32 %20)
  br label %51

22:                                               ; preds = %12
  %23 = load i32, i32* %8, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* @PEDIT_ETH_DMAC_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ETH_DMAC_47_32, align 4
  %33 = call i32 @offload_pedit(%struct.ch_filter_specification* %29, i32 %30, i32 %31, i32 %32)
  br label %42

34:                                               ; preds = %22
  %35 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 16
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 16
  %40 = load i32, i32* @ETH_SMAC_15_0, align 4
  %41 = call i32 @offload_pedit(%struct.ch_filter_specification* %35, i32 %37, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %28
  br label %51

43:                                               ; preds = %12
  %44 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %45 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @ETH_SMAC_47_16, align 4
  %50 = call i32 @offload_pedit(%struct.ch_filter_specification* %46, i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %12, %42, %14
  br label %186

52:                                               ; preds = %5
  %53 = load i32, i32* %9, align 4
  switch i32 %53, label %66 [
    i32 138, label %54
    i32 139, label %60
  ]

54:                                               ; preds = %52
  %55 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @IP4_SRC, align 4
  %59 = call i32 @offload_pedit(%struct.ch_filter_specification* %55, i32 %56, i32 %57, i32 %58)
  br label %66

60:                                               ; preds = %52
  %61 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @IP4_DST, align 4
  %65 = call i32 @offload_pedit(%struct.ch_filter_specification* %61, i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %52, %54
  %67 = load i8*, i8** @NAT_MODE_ALL, align 8
  %68 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %69 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  br label %186

70:                                               ; preds = %5
  %71 = load i32, i32* %9, align 4
  switch i32 %71, label %120 [
    i32 132, label %72
    i32 131, label %78
    i32 130, label %84
    i32 133, label %90
    i32 136, label %96
    i32 135, label %102
    i32 134, label %108
    i32 137, label %114
  ]

72:                                               ; preds = %70
  %73 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @IP6_SRC_31_0, align 4
  %77 = call i32 @offload_pedit(%struct.ch_filter_specification* %73, i32 %74, i32 %75, i32 %76)
  br label %120

78:                                               ; preds = %70
  %79 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @IP6_SRC_63_32, align 4
  %83 = call i32 @offload_pedit(%struct.ch_filter_specification* %79, i32 %80, i32 %81, i32 %82)
  br label %120

84:                                               ; preds = %70
  %85 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @IP6_SRC_95_64, align 4
  %89 = call i32 @offload_pedit(%struct.ch_filter_specification* %85, i32 %86, i32 %87, i32 %88)
  br label %120

90:                                               ; preds = %70
  %91 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @IP6_SRC_127_96, align 4
  %95 = call i32 @offload_pedit(%struct.ch_filter_specification* %91, i32 %92, i32 %93, i32 %94)
  br label %120

96:                                               ; preds = %70
  %97 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @IP6_DST_31_0, align 4
  %101 = call i32 @offload_pedit(%struct.ch_filter_specification* %97, i32 %98, i32 %99, i32 %100)
  br label %120

102:                                              ; preds = %70
  %103 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @IP6_DST_63_32, align 4
  %107 = call i32 @offload_pedit(%struct.ch_filter_specification* %103, i32 %104, i32 %105, i32 %106)
  br label %120

108:                                              ; preds = %70
  %109 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @IP6_DST_95_64, align 4
  %113 = call i32 @offload_pedit(%struct.ch_filter_specification* %109, i32 %110, i32 %111, i32 %112)
  br label %120

114:                                              ; preds = %70
  %115 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @IP6_DST_127_96, align 4
  %119 = call i32 @offload_pedit(%struct.ch_filter_specification* %115, i32 %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %114, %70, %108, %102, %96, %90, %84, %78, %72
  %121 = load i8*, i8** @NAT_MODE_ALL, align 8
  %122 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %123 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  br label %186

124:                                              ; preds = %5
  %125 = load i32, i32* %9, align 4
  switch i32 %125, label %151 [
    i32 129, label %126
  ]

126:                                              ; preds = %124
  %127 = load i32, i32* %8, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* @PEDIT_TCP_UDP_SPORT_MASK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %126
  %133 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @cpu_to_be32(i32 %134)
  %136 = ashr i32 %135, 16
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @cpu_to_be32(i32 %137)
  %139 = ashr i32 %138, 16
  %140 = load i32, i32* @TCP_SPORT, align 4
  %141 = call i32 @offload_pedit(%struct.ch_filter_specification* %133, i32 %136, i32 %139, i32 %140)
  br label %150

142:                                              ; preds = %126
  %143 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @cpu_to_be32(i32 %144)
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @cpu_to_be32(i32 %146)
  %148 = load i32, i32* @TCP_DPORT, align 4
  %149 = call i32 @offload_pedit(%struct.ch_filter_specification* %143, i32 %145, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %142, %132
  br label %151

151:                                              ; preds = %150, %124
  %152 = load i8*, i8** @NAT_MODE_ALL, align 8
  %153 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %154 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  br label %186

155:                                              ; preds = %5
  %156 = load i32, i32* %9, align 4
  switch i32 %156, label %182 [
    i32 128, label %157
  ]

157:                                              ; preds = %155
  %158 = load i32, i32* %8, align 4
  %159 = xor i32 %158, -1
  %160 = load i32, i32* @PEDIT_TCP_UDP_SPORT_MASK, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %157
  %164 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @cpu_to_be32(i32 %165)
  %167 = ashr i32 %166, 16
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @cpu_to_be32(i32 %168)
  %170 = ashr i32 %169, 16
  %171 = load i32, i32* @UDP_SPORT, align 4
  %172 = call i32 @offload_pedit(%struct.ch_filter_specification* %164, i32 %167, i32 %170, i32 %171)
  br label %181

173:                                              ; preds = %157
  %174 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @cpu_to_be32(i32 %175)
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @cpu_to_be32(i32 %177)
  %179 = load i32, i32* @UDP_DPORT, align 4
  %180 = call i32 @offload_pedit(%struct.ch_filter_specification* %174, i32 %176, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %173, %163
  br label %182

182:                                              ; preds = %181, %155
  %183 = load i8*, i8** @NAT_MODE_ALL, align 8
  %184 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %185 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %184, i32 0, i32 2
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %182, %5, %151, %120, %66, %51
  ret void
}

declare dso_local i32 @offload_pedit(%struct.ch_filter_specification*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
