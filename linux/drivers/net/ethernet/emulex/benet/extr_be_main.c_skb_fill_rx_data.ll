; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_skb_fill_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_skb_fill_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_obj = type { i32 }
%struct.sk_buff = type { i64, i32, i64, i32, i32 }
%struct.be_rx_compl_info = type { i64, i32 }
%struct.be_rx_page_info = type { i64, i32* }
%struct.TYPE_2__ = type { i32, i32* }

@rx_frag_size = common dso_local global i64 0, align 8
@BE_HDR_LEN = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_rx_obj*, %struct.sk_buff*, %struct.be_rx_compl_info*)* @skb_fill_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skb_fill_rx_data(%struct.be_rx_obj* %0, %struct.sk_buff* %1, %struct.be_rx_compl_info* %2) #0 {
  %4 = alloca %struct.be_rx_obj*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.be_rx_compl_info*, align 8
  %7 = alloca %struct.be_rx_page_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.be_rx_compl_info* %2, %struct.be_rx_compl_info** %6, align 8
  %14 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %15 = call %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj* %14)
  store %struct.be_rx_page_info* %15, %struct.be_rx_page_info** %7, align 8
  %16 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %7, align 8
  %17 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32* @page_address(i32* %18)
  %20 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %7, align 8
  %21 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = call i32 @prefetch(i32* %24)
  %26 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %27 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @rx_frag_size, align 8
  %30 = call i64 @min(i64 %28, i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @BE_HDR_LEN, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %3
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @memcpy(i32 %40, i32* %41, i64 %42)
  %44 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %7, align 8
  %45 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @put_page(i32* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 8
  br label %112

57:                                               ; preds = %3
  %58 = load i64, i64* @ETH_HLEN, align 8
  store i64 %58, i64* %10, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @memcpy(i32 %61, i32* %62, i64 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %7, align 8
  %70 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @skb_frag_set_page(%struct.sk_buff* %68, i64 0, i32* %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %7, align 8
  %79 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @skb_frag_off_set(i32* %77, i64 %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %10, align 8
  %91 = sub nsw i64 %89, %90
  %92 = call i32 @skb_frag_size_set(i32* %88, i64 %91)
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %10, align 8
  %95 = sub nsw i64 %93, %94
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* @rx_frag_size, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %105
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 8
  br label %112

112:                                              ; preds = %57, %37
  %113 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %7, align 8
  %114 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %113, i32 0, i32 1
  store i32* null, i32** %114, align 8
  %115 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %116 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @rx_frag_size, align 8
  %119 = icmp sle i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %112
  %121 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %122 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 1
  %125 = zext i1 %124 to i32
  %126 = call i32 @BUG_ON(i32 %125)
  br label %226

127:                                              ; preds = %112
  %128 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %129 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %11, align 8
  %132 = sub nsw i64 %130, %131
  store i64 %132, i64* %12, align 8
  store i64 1, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %133

133:                                              ; preds = %217, %127
  %134 = load i64, i64* %8, align 8
  %135 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %136 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = icmp slt i64 %134, %138
  br i1 %139, label %140, label %220

140:                                              ; preds = %133
  %141 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %142 = call %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj* %141)
  store %struct.be_rx_page_info* %142, %struct.be_rx_page_info** %7, align 8
  %143 = load i64, i64* %12, align 8
  %144 = load i64, i64* @rx_frag_size, align 8
  %145 = call i64 @min(i64 %143, i64 %144)
  store i64 %145, i64* %11, align 8
  %146 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %7, align 8
  %147 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %181

150:                                              ; preds = %140
  %151 = load i64, i64* %9, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %9, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = load i64, i64* %9, align 8
  %155 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %7, align 8
  %156 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @skb_frag_set_page(%struct.sk_buff* %153, i64 %154, i32* %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %160 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %159)
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* %9, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %7, align 8
  %166 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @skb_frag_off_set(i32* %164, i64 %167)
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %169)
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* %9, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = call i32 @skb_frag_size_set(i32* %174, i64 0)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %177 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %176)
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 8
  br label %186

181:                                              ; preds = %140
  %182 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %7, align 8
  %183 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @put_page(i32* %184)
  br label %186

186:                                              ; preds = %181, %150
  %187 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %188 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %187)
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* %9, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = load i64, i64* %11, align 8
  %194 = call i32 @skb_frag_size_add(i32* %192, i64 %193)
  %195 = load i64, i64* %11, align 8
  %196 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, %195
  store i64 %199, i64* %197, align 8
  %200 = load i64, i64* %11, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %203, %200
  store i64 %204, i64* %202, align 8
  %205 = load i64, i64* @rx_frag_size, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %207 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %209, %205
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %207, align 8
  %212 = load i64, i64* %11, align 8
  %213 = load i64, i64* %12, align 8
  %214 = sub nsw i64 %213, %212
  store i64 %214, i64* %12, align 8
  %215 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %7, align 8
  %216 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %215, i32 0, i32 1
  store i32* null, i32** %216, align 8
  br label %217

217:                                              ; preds = %186
  %218 = load i64, i64* %8, align 8
  %219 = add nsw i64 %218, 1
  store i64 %219, i64* %8, align 8
  br label %133

220:                                              ; preds = %133
  %221 = load i64, i64* %9, align 8
  %222 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %223 = icmp sgt i64 %221, %222
  %224 = zext i1 %223 to i32
  %225 = call i32 @BUG_ON(i32 %224)
  br label %226

226:                                              ; preds = %220, %120
  ret void
}

declare dso_local %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj*) #1

declare dso_local i32* @page_address(i32*) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @put_page(i32*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_set_page(%struct.sk_buff*, i64, i32*) #1

declare dso_local i32 @skb_frag_off_set(i32*, i64) #1

declare dso_local i32 @skb_frag_size_set(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_frag_size_add(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
