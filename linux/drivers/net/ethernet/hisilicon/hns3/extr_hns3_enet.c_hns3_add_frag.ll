; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_add_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_add_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i32, i32, i64, i32, %struct.sk_buff*, %struct.TYPE_5__*, %struct.hns3_desc_cb*, %struct.hns3_desc* }
%struct.sk_buff = type { i32, i32, i32, %struct.sk_buff* }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.hns3_desc_cb = type { i32 }
%struct.hns3_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.sk_buff* }

@HNS3_RXD_FE_B = common dso_local global i32 0, align 4
@HNS3_RXD_VLD_B = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@HNS3_RX_HEAD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"alloc rx fraglist skb fail\0A\00", align 1
@next_to_clean = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_enet_ring*, %struct.hns3_desc*, %struct.sk_buff**, i32)* @hns3_add_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_add_frag(%struct.hns3_enet_ring* %0, %struct.hns3_desc* %1, %struct.sk_buff** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns3_enet_ring*, align 8
  %7 = alloca %struct.hns3_desc*, align 8
  %8 = alloca %struct.sk_buff**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.hns3_desc_cb*, align 8
  %14 = alloca %struct.hns3_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %6, align 8
  store %struct.hns3_desc* %1, %struct.hns3_desc** %7, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %10, align 8
  %19 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %4
  %24 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %25 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %29 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %33 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = srem i32 %31, %34
  store i32 %35, i32* %16, align 4
  %36 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %37 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %36, i32 0, i32 7
  %38 = load %struct.hns3_desc*, %struct.hns3_desc** %37, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %38, i64 %40
  store %struct.hns3_desc* %41, %struct.hns3_desc** %14, align 8
  %42 = load %struct.hns3_desc*, %struct.hns3_desc** %14, align 8
  %43 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  store i32 %46, i32* %15, align 4
  br label %53

47:                                               ; preds = %4
  %48 = load %struct.hns3_desc*, %struct.hns3_desc** %7, align 8
  %49 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %47, %23
  br label %54

54:                                               ; preds = %188, %53
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @HNS3_RXD_FE_B, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br i1 %60, label %61, label %205

61:                                               ; preds = %54
  %62 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %63 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %62, i32 0, i32 7
  %64 = load %struct.hns3_desc*, %struct.hns3_desc** %63, align 8
  %65 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %66 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %64, i64 %68
  store %struct.hns3_desc* %69, %struct.hns3_desc** %7, align 8
  %70 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %71 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %70, i32 0, i32 6
  %72 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %71, align 8
  %73 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %74 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %72, i64 %76
  store %struct.hns3_desc_cb* %77, %struct.hns3_desc_cb** %13, align 8
  %78 = load %struct.hns3_desc*, %struct.hns3_desc** %7, align 8
  %79 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le32_to_cpu(i32 %81)
  store i32 %82, i32* %15, align 4
  %83 = call i32 (...) @dma_rmb()
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @HNS3_RXD_VLD_B, align 4
  %86 = call i32 @BIT(i32 %85)
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %61
  %90 = load i32, i32* @ENXIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %206

92:                                               ; preds = %61
  %93 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %94 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %97 = icmp sge i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %149

101:                                              ; preds = %92
  %102 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %103 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %102, i32 0, i32 5
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* @HNS3_RX_HEAD_SIZE, align 4
  %107 = call %struct.sk_buff* @napi_alloc_skb(%struct.TYPE_8__* %105, i32 %106)
  store %struct.sk_buff* %107, %struct.sk_buff** %12, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %109 = icmp ne %struct.sk_buff* %108, null
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %101
  %115 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %116 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %115, i32 0, i32 5
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @hns3_rl_err(i32 %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %122 = load i32, i32* @ENXIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %206

124:                                              ; preds = %101
  %125 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %126 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %125, i32 0, i32 2
  store i64 0, i64* %126, align 8
  %127 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %128 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %127, i32 0, i32 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %128, align 8
  %130 = icmp ne %struct.sk_buff* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %133 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %134 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %133, i32 0, i32 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %134, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 3
  store %struct.sk_buff* %132, %struct.sk_buff** %136, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %138 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %139 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %138, i32 0, i32 4
  store %struct.sk_buff* %137, %struct.sk_buff** %139, align 8
  br label %148

140:                                              ; preds = %124
  %141 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %143 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %142)
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store %struct.sk_buff* %141, %struct.sk_buff** %144, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %146 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %147 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %146, i32 0, i32 4
  store %struct.sk_buff* %145, %struct.sk_buff** %147, align 8
  br label %148

148:                                              ; preds = %140, %131
  br label %149

149:                                              ; preds = %148, %92
  %150 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %151 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %150, i32 0, i32 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %151, align 8
  %153 = icmp ne %struct.sk_buff* %152, null
  br i1 %153, label %154, label %188

154:                                              ; preds = %149
  %155 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %156 = call i64 @hns3_buf_size(%struct.hns3_enet_ring* %155)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %160, %156
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %158, align 8
  %163 = load %struct.hns3_desc*, %struct.hns3_desc** %7, align 8
  %164 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @le16_to_cpu(i32 %166)
  %168 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %167
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %169, align 4
  %174 = load %struct.hns3_desc*, %struct.hns3_desc** %7, align 8
  %175 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @le16_to_cpu(i32 %177)
  %179 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %180 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %182, %178
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %180, align 8
  %185 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %186 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %185, i32 0, i32 4
  %187 = load %struct.sk_buff*, %struct.sk_buff** %186, align 8
  store %struct.sk_buff* %187, %struct.sk_buff** %10, align 8
  br label %188

188:                                              ; preds = %154, %149
  %189 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %190 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %191 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, 1
  store i64 %193, i64* %191, align 8
  %194 = trunc i64 %192 to i32
  %195 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %196 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %13, align 8
  %197 = call i32 @hns3_nic_reuse_page(%struct.sk_buff* %189, i32 %194, %struct.hns3_enet_ring* %195, i32 0, %struct.hns3_desc_cb* %196)
  %198 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %199 = load i32, i32* @next_to_clean, align 4
  %200 = call i32 @ring_ptr_move_fw(%struct.hns3_enet_ring* %198, i32 %199)
  %201 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %202 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 8
  br label %54

205:                                              ; preds = %54
  store i32 0, i32* %5, align 4
  br label %206

206:                                              ; preds = %205, %114, %89
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @napi_alloc_skb(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @hns3_rl_err(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @hns3_buf_size(%struct.hns3_enet_ring*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @hns3_nic_reuse_page(%struct.sk_buff*, i32, %struct.hns3_enet_ring*, i32, %struct.hns3_desc_cb*) #1

declare dso_local i32 @ring_ptr_move_fw(%struct.hns3_enet_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
