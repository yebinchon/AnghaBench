; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_rx.c_libipw_network_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_rx.c_libipw_network_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { i32 }
%struct.libipw_probe_response = type { i32, i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.libipw_rx_stats* }
%struct.libipw_network = type { i32, i32, i32, i32, i32, i32*, i32, i64, i32, i64, i64, i32, i64, i64, i64, i64, i8*, i8**, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.libipw_rx_stats = type { i64, i64, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@LIBIPW_52GHZ_BAND = common dso_local global i64 0, align 8
@NETWORK_HAS_CCK = common dso_local global i32 0, align 4
@IEEE_A = common dso_local global i32 0, align 4
@NETWORK_HAS_OFDM = common dso_local global i32 0, align 4
@IEEE_G = common dso_local global i32 0, align 4
@IEEE_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Filtered out '%*pE (%pM)' network.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libipw_device*, %struct.libipw_probe_response*, %struct.libipw_network*, %struct.libipw_rx_stats*)* @libipw_network_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libipw_network_init(%struct.libipw_device* %0, %struct.libipw_probe_response* %1, %struct.libipw_network* %2, %struct.libipw_rx_stats* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libipw_device*, align 8
  %7 = alloca %struct.libipw_probe_response*, align 8
  %8 = alloca %struct.libipw_network*, align 8
  %9 = alloca %struct.libipw_rx_stats*, align 8
  store %struct.libipw_device* %0, %struct.libipw_device** %6, align 8
  store %struct.libipw_probe_response* %1, %struct.libipw_probe_response** %7, align 8
  store %struct.libipw_network* %2, %struct.libipw_network** %8, align 8
  store %struct.libipw_rx_stats* %3, %struct.libipw_rx_stats** %9, align 8
  %10 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %11 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %10, i32 0, i32 19
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %14 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %13, i32 0, i32 19
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %17 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %16, i32 0, i32 19
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %20 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %19, i32 0, i32 19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %23 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.libipw_probe_response*, %struct.libipw_probe_response** %7, align 8
  %26 = getelementptr inbounds %struct.libipw_probe_response, %struct.libipw_probe_response* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %27, align 8
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = call i32 @memcpy(i32* %24, %struct.libipw_rx_stats* %28, i32 %29)
  %31 = load %struct.libipw_probe_response*, %struct.libipw_probe_response** %7, align 8
  %32 = getelementptr inbounds %struct.libipw_probe_response, %struct.libipw_probe_response* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @le16_to_cpu(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %37 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @jiffies, align 4
  %39 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %40 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %39, i32 0, i32 18
  store i32 %38, i32* %40, align 8
  %41 = load %struct.libipw_probe_response*, %struct.libipw_probe_response** %7, align 8
  %42 = getelementptr inbounds %struct.libipw_probe_response, %struct.libipw_probe_response* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le32_to_cpu(i32 %45)
  %47 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %48 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %47, i32 0, i32 17
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  store i8* %46, i8** %50, align 8
  %51 = load %struct.libipw_probe_response*, %struct.libipw_probe_response** %7, align 8
  %52 = getelementptr inbounds %struct.libipw_probe_response, %struct.libipw_probe_response* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le32_to_cpu(i32 %55)
  %57 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %58 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %57, i32 0, i32 17
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  store i8* %56, i8** %60, align 8
  %61 = load %struct.libipw_probe_response*, %struct.libipw_probe_response** %7, align 8
  %62 = getelementptr inbounds %struct.libipw_probe_response, %struct.libipw_probe_response* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @le16_to_cpu(i32 %63)
  %65 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %66 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %65, i32 0, i32 16
  store i8* %64, i8** %66, align 8
  %67 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %68 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %67, i32 0, i32 1
  store i32 10, i32* %68, align 4
  %69 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %70 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %69, i32 0, i32 14
  store i64 0, i64* %70, align 8
  %71 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %72 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %71, i32 0, i32 15
  store i64 0, i64* %72, align 8
  %73 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %74 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %73, i32 0, i32 13
  store i64 0, i64* %74, align 8
  %75 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %76 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %75, i32 0, i32 7
  store i64 0, i64* %76, align 8
  %77 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %78 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  %79 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %80 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %79, i32 0, i32 12
  store i64 0, i64* %80, align 8
  %81 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %82 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 3, i32 0
  %89 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %90 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %9, align 8
  %92 = getelementptr inbounds %struct.libipw_rx_stats, %struct.libipw_rx_stats* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @LIBIPW_52GHZ_BAND, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %4
  %97 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %9, align 8
  %98 = getelementptr inbounds %struct.libipw_rx_stats, %struct.libipw_rx_stats* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %101 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %100, i32 0, i32 11
  store i32 %99, i32* %101, align 8
  br label %108

102:                                              ; preds = %4
  %103 = load i32, i32* @NETWORK_HAS_CCK, align 4
  %104 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %105 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %102, %96
  %109 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %110 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %109, i32 0, i32 10
  store i64 0, i64* %110, align 8
  %111 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %112 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %111, i32 0, i32 9
  store i64 0, i64* %112, align 8
  %113 = load %struct.libipw_probe_response*, %struct.libipw_probe_response** %7, align 8
  %114 = getelementptr inbounds %struct.libipw_probe_response, %struct.libipw_probe_response* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %9, align 8
  %117 = getelementptr inbounds %struct.libipw_rx_stats, %struct.libipw_rx_stats* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub i64 %118, 32
  %120 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %121 = call i64 @libipw_parse_info_param(i32 %115, i64 %119, %struct.libipw_network* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %108
  store i32 1, i32* %5, align 4
  br label %184

124:                                              ; preds = %108
  %125 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %126 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %125, i32 0, i32 8
  store i32 0, i32* %126, align 8
  %127 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %9, align 8
  %128 = getelementptr inbounds %struct.libipw_rx_stats, %struct.libipw_rx_stats* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @LIBIPW_52GHZ_BAND, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = load i32, i32* @IEEE_A, align 4
  %134 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %135 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %134, i32 0, i32 8
  store i32 %133, i32* %135, align 8
  br label %163

136:                                              ; preds = %124
  %137 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %138 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @NETWORK_HAS_OFDM, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load i32, i32* @IEEE_G, align 4
  %145 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %146 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %143, %136
  %150 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %151 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @NETWORK_HAS_CCK, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = load i32, i32* @IEEE_B, align 4
  %158 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %159 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %156, %149
  br label %163

163:                                              ; preds = %162, %132
  %164 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %165 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %163
  %169 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %170 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %169, i32 0, i32 7
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %173 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %176 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %175, i32 0, i32 5
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @LIBIPW_DEBUG_SCAN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %171, i32 %174, i32* %177)
  store i32 1, i32* %5, align 4
  br label %184

179:                                              ; preds = %163
  %180 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %181 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %180, i32 0, i32 4
  %182 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %9, align 8
  %183 = call i32 @memcpy(i32* %181, %struct.libipw_rx_stats* %182, i32 4)
  store i32 0, i32* %5, align 4
  br label %184

184:                                              ; preds = %179, %168, %123
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i32 @memcpy(i32*, %struct.libipw_rx_stats*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @libipw_parse_info_param(i32, i64, %struct.libipw_network*) #1

declare dso_local i32 @LIBIPW_DEBUG_SCAN(i8*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
