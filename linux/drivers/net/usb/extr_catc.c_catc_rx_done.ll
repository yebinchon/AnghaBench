; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_catc.c_catc_rx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_catc.c_catc_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.TYPE_6__*, i32*, %struct.catc* }
%struct.TYPE_6__ = type { i32 }
%struct.catc = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@RX_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"rx_done, status %d, length %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"getting extra packet\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"submit(rx_urb) status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @catc_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catc_rx_done(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.catc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 4
  %12 = load %struct.catc*, %struct.catc** %11, align 8
  store %struct.catc* %12, %struct.catc** %3, align 8
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.catc*, %struct.catc** %3, align 8
  %20 = getelementptr inbounds %struct.catc, %struct.catc* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @RX_RUNNING, align 4
  %25 = load %struct.catc*, %struct.catc** %3, align 8
  %26 = getelementptr inbounds %struct.catc, %struct.catc* %25, i32 0, i32 0
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  store i32 2, i32* %7, align 4
  br label %28

28:                                               ; preds = %23, %1
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.urb*, %struct.urb** %2, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.urb*, %struct.urb** %2, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  br label %183

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %129, %41
  %43 = load %struct.catc*, %struct.catc** %3, align 8
  %44 = getelementptr inbounds %struct.catc, %struct.catc* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @le16_to_cpup(i32* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.urb*, %struct.urb** %2, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %47
  %56 = load %struct.catc*, %struct.catc** %3, align 8
  %57 = getelementptr inbounds %struct.catc, %struct.catc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.catc*, %struct.catc** %3, align 8
  %64 = getelementptr inbounds %struct.catc, %struct.catc* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %143

70:                                               ; preds = %47
  br label %75

71:                                               ; preds = %42
  %72 = load %struct.urb*, %struct.urb** %2, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %71, %70
  %76 = load i32, i32* %6, align 4
  %77 = call %struct.sk_buff* @dev_alloc_skb(i32 %76)
  store %struct.sk_buff* %77, %struct.sk_buff** %5, align 8
  %78 = icmp ne %struct.sk_buff* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  br label %183

80:                                               ; preds = %75
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %81, i32* %85, i32 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @skb_put(%struct.sk_buff* %88, i32 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = load %struct.catc*, %struct.catc** %3, align 8
  %93 = getelementptr inbounds %struct.catc, %struct.catc* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = call i32 @eth_type_trans(%struct.sk_buff* %91, %struct.TYPE_7__* %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = call i32 @netif_rx(%struct.sk_buff* %98)
  %100 = load %struct.catc*, %struct.catc** %3, align 8
  %101 = getelementptr inbounds %struct.catc, %struct.catc* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.catc*, %struct.catc** %3, align 8
  %109 = getelementptr inbounds %struct.catc, %struct.catc* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %107
  store i32 %114, i32* %112, align 4
  %115 = load %struct.catc*, %struct.catc** %3, align 8
  %116 = getelementptr inbounds %struct.catc, %struct.catc* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %80
  br label %143

120:                                              ; preds = %80
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  %123 = ashr i32 %122, 6
  %124 = add nsw i32 %123, 1
  %125 = shl i32 %124, 6
  %126 = load i32*, i32** %4, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %4, align 8
  br label %129

129:                                              ; preds = %120
  %130 = load i32*, i32** %4, align 8
  %131 = load %struct.urb*, %struct.urb** %2, align 8
  %132 = getelementptr inbounds %struct.urb, %struct.urb* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = ptrtoint i32* %130 to i64
  %135 = ptrtoint i32* %133 to i64
  %136 = sub i64 %134, %135
  %137 = sdiv exact i64 %136, 4
  %138 = load %struct.urb*, %struct.urb** %2, align 8
  %139 = getelementptr inbounds %struct.urb, %struct.urb* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = icmp slt i64 %137, %141
  br i1 %142, label %42, label %143

143:                                              ; preds = %129, %119, %55
  %144 = load %struct.catc*, %struct.catc** %3, align 8
  %145 = getelementptr inbounds %struct.catc, %struct.catc* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %183

148:                                              ; preds = %143
  %149 = load %struct.catc*, %struct.catc** %3, align 8
  %150 = getelementptr inbounds %struct.catc, %struct.catc* %149, i32 0, i32 3
  %151 = call i64 @atomic_read(i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %177

153:                                              ; preds = %148
  %154 = load %struct.catc*, %struct.catc** %3, align 8
  %155 = getelementptr inbounds %struct.catc, %struct.catc* %154, i32 0, i32 3
  %156 = call i32 @atomic_dec(i32* %155)
  %157 = load %struct.catc*, %struct.catc** %3, align 8
  %158 = getelementptr inbounds %struct.catc, %struct.catc* %157, i32 0, i32 1
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %161 = load %struct.catc*, %struct.catc** %3, align 8
  %162 = getelementptr inbounds %struct.catc, %struct.catc* %161, i32 0, i32 2
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = load %struct.urb*, %struct.urb** %2, align 8
  %165 = getelementptr inbounds %struct.urb, %struct.urb* %164, i32 0, i32 2
  store %struct.TYPE_6__* %163, %struct.TYPE_6__** %165, align 8
  %166 = load %struct.urb*, %struct.urb** %2, align 8
  %167 = load i32, i32* @GFP_ATOMIC, align 4
  %168 = call i32 @usb_submit_urb(%struct.urb* %166, i32 %167)
  store i32 %168, i32* %9, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %153
  %171 = load %struct.catc*, %struct.catc** %3, align 8
  %172 = getelementptr inbounds %struct.catc, %struct.catc* %171, i32 0, i32 1
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %173, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %170, %153
  br label %182

177:                                              ; preds = %148
  %178 = load i32, i32* @RX_RUNNING, align 4
  %179 = load %struct.catc*, %struct.catc** %3, align 8
  %180 = getelementptr inbounds %struct.catc, %struct.catc* %179, i32 0, i32 0
  %181 = call i32 @clear_bit(i32 %178, i32* %180)
  br label %182

182:                                              ; preds = %177, %176
  br label %183

183:                                              ; preds = %31, %79, %182, %143
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_7__*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
