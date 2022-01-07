; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_flowring = type { i64*, i32, %struct.brcmf_flowring_ring**, %struct.brcmf_flowring_hash*, i64 }
%struct.brcmf_flowring_ring = type { i32, i32, i32 }
%struct.brcmf_flowring_hash = type { i64, i64, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@brcmf_flowring_prio2fifo = common dso_local global i64* null, align 8
@ADDR_INDIRECT = common dso_local global i64 0, align 8
@ALLFFMAC = common dso_local global i64 0, align 8
@BRCMF_FLOWRING_HASHSIZE = common dso_local global i32 0, align 4
@BRCMF_FLOWRING_INVALID_IFIDX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RING_CLOSED = common dso_local global i32 0, align 4
@BRCMF_FLOWRING_INVALID_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_flowring_create(%struct.brcmf_flowring* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_flowring*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.brcmf_flowring_ring*, align 8
  %11 = alloca %struct.brcmf_flowring_hash*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  store %struct.brcmf_flowring* %0, %struct.brcmf_flowring** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64*, i64** @brcmf_flowring_prio2fifo, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %15, align 8
  %24 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %6, align 8
  %25 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ADDR_INDIRECT, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %16, align 4
  %33 = load i64*, i64** %7, align 8
  store i64* %33, i64** %17, align 8
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %4
  %37 = load i64*, i64** %7, align 8
  %38 = call i64 @is_multicast_ether_addr(i64* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* @ALLFFMAC, align 8
  %42 = inttoptr i64 %41 to i64*
  store i64* %42, i64** %17, align 8
  store i64 0, i64* %15, align 8
  br label %43

43:                                               ; preds = %40, %36, %4
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %6, align 8
  %48 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %6, align 8
  %53 = load i64*, i64** %7, align 8
  %54 = call i64 @brcmf_flowring_is_tdls_mac(%struct.brcmf_flowring* %52, i64* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %16, align 4
  br label %57

57:                                               ; preds = %56, %51, %46, %43
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @BRCMF_FLOWRING_HASH_STA(i64 %61, i64 %62)
  br label %69

64:                                               ; preds = %57
  %65 = load i64*, i64** %17, align 8
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @BRCMF_FLOWRING_HASH_AP(i64* %65, i64 %66, i64 %67)
  br label %69

69:                                               ; preds = %64, %60
  %70 = phi i32 [ %63, %60 ], [ %68, %64 ]
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* @BRCMF_FLOWRING_HASHSIZE, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* %12, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %75 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %6, align 8
  %76 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %75, i32 0, i32 3
  %77 = load %struct.brcmf_flowring_hash*, %struct.brcmf_flowring_hash** %76, align 8
  store %struct.brcmf_flowring_hash* %77, %struct.brcmf_flowring_hash** %11, align 8
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %108, %69
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @BRCMF_FLOWRING_HASHSIZE, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %78
  %83 = load %struct.brcmf_flowring_hash*, %struct.brcmf_flowring_hash** %11, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %83, i64 %85
  %87 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @BRCMF_FLOWRING_INVALID_IFIDX, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %82
  %92 = load %struct.brcmf_flowring_hash*, %struct.brcmf_flowring_hash** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %92, i64 %94
  %96 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @is_zero_ether_addr(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i32 1, i32* %14, align 4
  br label %111

101:                                              ; preds = %91, %82
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* @BRCMF_FLOWRING_HASHSIZE, align 4
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* %12, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %78

111:                                              ; preds = %100, %78
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %197

114:                                              ; preds = %111
  store i32 0, i32* %13, align 4
  br label %115

115:                                              ; preds = %132, %114
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %6, align 8
  %118 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %115
  %122 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %6, align 8
  %123 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %122, i32 0, i32 2
  %124 = load %struct.brcmf_flowring_ring**, %struct.brcmf_flowring_ring*** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %124, i64 %126
  %128 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %127, align 8
  %129 = icmp eq %struct.brcmf_flowring_ring* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %135

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %13, align 4
  br label %115

135:                                              ; preds = %130, %115
  %136 = load i32, i32* %13, align 4
  %137 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %6, align 8
  %138 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %136, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %5, align 4
  br label %199

144:                                              ; preds = %135
  %145 = load i32, i32* @GFP_ATOMIC, align 4
  %146 = call %struct.brcmf_flowring_ring* @kzalloc(i32 12, i32 %145)
  store %struct.brcmf_flowring_ring* %146, %struct.brcmf_flowring_ring** %10, align 8
  %147 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %10, align 8
  %148 = icmp ne %struct.brcmf_flowring_ring* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %5, align 4
  br label %199

152:                                              ; preds = %144
  %153 = load %struct.brcmf_flowring_hash*, %struct.brcmf_flowring_hash** %11, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %153, i64 %155
  %157 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i64*, i64** %17, align 8
  %160 = load i32, i32* @ETH_ALEN, align 4
  %161 = call i32 @memcpy(i32 %158, i64* %159, i32 %160)
  %162 = load i64, i64* %15, align 8
  %163 = load %struct.brcmf_flowring_hash*, %struct.brcmf_flowring_hash** %11, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %163, i64 %165
  %167 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %166, i32 0, i32 1
  store i64 %162, i64* %167, align 8
  %168 = load i64, i64* %9, align 8
  %169 = load %struct.brcmf_flowring_hash*, %struct.brcmf_flowring_hash** %11, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %169, i64 %171
  %173 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %172, i32 0, i32 0
  store i64 %168, i64* %173, align 8
  %174 = load i32, i32* %13, align 4
  %175 = load %struct.brcmf_flowring_hash*, %struct.brcmf_flowring_hash** %11, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %175, i64 %177
  %179 = getelementptr inbounds %struct.brcmf_flowring_hash, %struct.brcmf_flowring_hash* %178, i32 0, i32 2
  store i32 %174, i32* %179, align 8
  %180 = load i32, i32* %12, align 4
  %181 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %10, align 8
  %182 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* @RING_CLOSED, align 4
  %184 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %10, align 8
  %185 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 4
  %186 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %10, align 8
  %187 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %186, i32 0, i32 1
  %188 = call i32 @skb_queue_head_init(i32* %187)
  %189 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %10, align 8
  %190 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %6, align 8
  %191 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %190, i32 0, i32 2
  %192 = load %struct.brcmf_flowring_ring**, %struct.brcmf_flowring_ring*** %191, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %192, i64 %194
  store %struct.brcmf_flowring_ring* %189, %struct.brcmf_flowring_ring** %195, align 8
  %196 = load i32, i32* %13, align 4
  store i32 %196, i32* %5, align 4
  br label %199

197:                                              ; preds = %111
  %198 = load i32, i32* @BRCMF_FLOWRING_INVALID_ID, align 4
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %197, %152, %149, %141
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i64 @is_multicast_ether_addr(i64*) #1

declare dso_local i64 @brcmf_flowring_is_tdls_mac(%struct.brcmf_flowring*, i64*) #1

declare dso_local i32 @BRCMF_FLOWRING_HASH_STA(i64, i64) #1

declare dso_local i32 @BRCMF_FLOWRING_HASH_AP(i64*, i64, i64) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local %struct.brcmf_flowring_ring* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
