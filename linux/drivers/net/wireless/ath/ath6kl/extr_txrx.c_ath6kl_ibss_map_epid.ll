; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_ath6kl_ibss_map_epid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_ath6kl_ibss_map_epid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8** }
%struct.net_device = type { i32 }
%struct.ath6kl = type { i64, i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.ethhdr = type { i32 }

@ENDPOINT_2 = common dso_local global i8* null, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@MAX_NODE_NUM = common dso_local global i64 0, align 8
@ENDPOINT_UNUSED = common dso_local global i8* null, align 8
@ENDPOINT_5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sk_buff*, %struct.net_device*, i64*)* @ath6kl_ibss_map_epid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ath6kl_ibss_map_epid(%struct.sk_buff* %0, %struct.net_device* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ath6kl*, align 8
  %9 = alloca %struct.ethhdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.ath6kl* @ath6kl_priv(%struct.net_device* %13)
  store %struct.ath6kl* %14, %struct.ath6kl** %8, align 8
  store i64 -1, i64* %11, align 8
  %15 = load i64*, i64** %7, align 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  store i8** %18, i8*** %12, align 8
  %19 = load i8**, i8*** %12, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 4
  %21 = bitcast i8** %20 to %struct.ethhdr*
  store %struct.ethhdr* %21, %struct.ethhdr** %9, align 8
  %22 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %23 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @is_multicast_ether_addr(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i8*, i8** @ENDPOINT_2, align 8
  store i8* %28, i8** %4, align 8
  br label %195

29:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %84, %29
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %33 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %87

36:                                               ; preds = %30
  %37 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %38 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %41 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i64 @memcmp(i32 %39, i32 %46, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %36
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %51, 1
  %53 = load i64*, i64** %7, align 8
  store i64 %52, i64* %53, align 8
  %54 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %55 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %63 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %4, align 8
  br label %195

69:                                               ; preds = %36
  %70 = load i64, i64* %11, align 8
  %71 = icmp eq i64 %70, -1
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %74 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %72
  %82 = load i64, i64* %10, align 8
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %81, %72, %69
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %10, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %10, align 8
  br label %30

87:                                               ; preds = %30
  %88 = load i64, i64* %11, align 8
  %89 = icmp eq i64 %88, -1
  br i1 %89, label %90, label %106

90:                                               ; preds = %87
  %91 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %92 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %11, align 8
  %94 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %95 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %99 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MAX_NODE_NUM, align 8
  %102 = icmp ugt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = load i8*, i8** @ENDPOINT_UNUSED, align 8
  store i8* %104, i8** %4, align 8
  br label %195

105:                                              ; preds = %90
  br label %106

106:                                              ; preds = %105, %87
  %107 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %108 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %115 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ETH_ALEN, align 4
  %118 = call i32 @memcpy(i32 %113, i32 %116, i32 %117)
  %119 = load i8*, i8** @ENDPOINT_2, align 8
  %120 = ptrtoint i8* %119 to i64
  store i64 %120, i64* %10, align 8
  br label %121

121:                                              ; preds = %173, %106
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* @ENDPOINT_5, align 8
  %124 = icmp ule i64 %122, %123
  br i1 %124, label %125, label %176

125:                                              ; preds = %121
  %126 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %127 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* %10, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %125
  %134 = load i64, i64* %10, align 8
  %135 = inttoptr i64 %134 to i8*
  %136 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %137 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %136, i32 0, i32 2
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i64, i64* %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  store i8* %135, i8** %141, align 8
  br label %176

142:                                              ; preds = %125
  %143 = load i64, i64* %10, align 8
  %144 = load i64, i64* @ENDPOINT_5, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %172

146:                                              ; preds = %142
  %147 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %148 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to i8*
  %151 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %152 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %151, i32 0, i32 2
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i64, i64* %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  store i8* %150, i8** %156, align 8
  %157 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %158 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %158, align 8
  %161 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %162 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @ENDPOINT_5, align 8
  %165 = icmp ugt i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %146
  %167 = load i8*, i8** @ENDPOINT_2, align 8
  %168 = ptrtoint i8* %167 to i64
  %169 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %170 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %169, i32 0, i32 1
  store i64 %168, i64* %170, align 8
  br label %171

171:                                              ; preds = %166, %146
  br label %172

172:                                              ; preds = %171, %142
  br label %173

173:                                              ; preds = %172
  %174 = load i64, i64* %10, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %10, align 8
  br label %121

176:                                              ; preds = %133, %121
  %177 = load i64, i64* %11, align 8
  %178 = add i64 %177, 1
  %179 = load i64*, i64** %7, align 8
  store i64 %178, i64* %179, align 8
  %180 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %181 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %180, i32 0, i32 2
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = load i64, i64* %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 8
  %188 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %189 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %188, i32 0, i32 2
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = load i64, i64* %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  store i8* %194, i8** %4, align 8
  br label %195

195:                                              ; preds = %176, %103, %50, %27
  %196 = load i8*, i8** %4, align 8
  ret i8* %196
}

declare dso_local %struct.ath6kl* @ath6kl_priv(%struct.net_device*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
