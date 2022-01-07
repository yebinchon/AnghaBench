; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_tcpudp_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_tcpudp_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ethhdr = type { i64 }
%struct.iphdr = type { i32, i32, i32, i32, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, i32)* @ioc3_tcpudp_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_tcpudp_checksum(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %14)
  store %struct.ethhdr* %15, %struct.ethhdr** %7, align 8
  %16 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %17 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @ETH_P_IP, align 4
  %20 = call i32 @htons(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %205

24:                                               ; preds = %3
  %25 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %26 = bitcast %struct.ethhdr* %25 to i8*
  %27 = load i32, i32* @ETH_HLEN, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = bitcast i8* %29 to %struct.iphdr*
  store %struct.iphdr* %30, %struct.iphdr** %10, align 8
  %31 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %32 = call i64 @ip_is_fragment(%struct.iphdr* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %205

35:                                               ; preds = %24
  %36 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @IPPROTO_TCP, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @IPPROTO_UDP, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %205

47:                                               ; preds = %42, %35
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %53 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 2
  %56 = sub nsw i32 %51, %55
  %57 = add nsw i32 %48, %56
  %58 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %59 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @htons(i32 %60)
  %62 = add nsw i32 %57, %61
  %63 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %64 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 16
  %67 = add nsw i32 %62, %66
  %68 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %69 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 65535
  %72 = add nsw i32 %67, %71
  %73 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %74 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 16
  %77 = add nsw i32 %72, %76
  %78 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %79 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 65535
  %82 = add nsw i32 %77, %81
  store i32 %82, i32* %11, align 4
  %83 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %84 = bitcast %struct.ethhdr* %83 to i32*
  store i32* %84, i32** %13, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %13, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  %92 = load i32*, i32** %13, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %91, %94
  %96 = load i32*, i32** %13, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  %100 = load i32*, i32** %13, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  %104 = load i32*, i32** %13, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 5
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %103, %106
  %108 = load i32*, i32** %13, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 6
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %107, %110
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = and i32 %112, 65535
  %114 = load i32, i32* %12, align 4
  %115 = ashr i32 %114, 16
  %116 = add nsw i32 %113, %115
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = and i32 %117, 65535
  %119 = load i32, i32* %12, align 4
  %120 = ashr i32 %119, 16
  %121 = add nsw i32 %118, %120
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = xor i32 65535, %122
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %11, align 4
  %126 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %127 = bitcast %struct.ethhdr* %126 to i8*
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  store i8* %130, i8** %9, align 8
  %131 = load i32, i32* %6, align 4
  %132 = and i32 %131, 1
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %161

134:                                              ; preds = %47
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = shl i32 %138, 8
  %140 = load i8*, i8** %9, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = or i32 %139, %143
  %145 = xor i32 65535, %144
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %11, align 4
  %148 = load i8*, i8** %9, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 3
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = shl i32 %151, 8
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 2
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = or i32 %152, %156
  %158 = xor i32 65535, %157
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %11, align 4
  br label %188

161:                                              ; preds = %47
  %162 = load i8*, i8** %9, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = shl i32 %165, 8
  %167 = load i8*, i8** %9, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = or i32 %166, %170
  %172 = xor i32 65535, %171
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %11, align 4
  %175 = load i8*, i8** %9, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 2
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = shl i32 %178, 8
  %180 = load i8*, i8** %9, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 3
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = or i32 %179, %183
  %185 = xor i32 65535, %184
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %11, align 4
  br label %188

188:                                              ; preds = %161, %134
  %189 = load i32, i32* %11, align 4
  %190 = and i32 %189, 65535
  %191 = load i32, i32* %11, align 4
  %192 = ashr i32 %191, 16
  %193 = add nsw i32 %190, %192
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = and i32 %194, 65535
  %196 = load i32, i32* %11, align 4
  %197 = ashr i32 %196, 16
  %198 = add nsw i32 %195, %197
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %11, align 4
  %200 = icmp eq i32 %199, 65535
  br i1 %200, label %201, label %205

201:                                              ; preds = %188
  %202 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %203 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %204 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %23, %34, %46, %201, %188
  ret void
}

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @ip_is_fragment(%struct.iphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
