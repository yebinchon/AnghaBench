; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_pad_compress_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_pad_compress_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 (i32, i64, i64, i32, i32)* }
%struct.sk_buff = type { i32, i64 }

@PPP_HDRLEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PPP: no memory (comp pkt)\0A\00", align 1
@SC_CCP_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ppp: compressor dropped pkt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ppp*, %struct.sk_buff*)* @pad_compress_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @pad_compress_skb(%struct.ppp* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ppp*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ppp* %0, %struct.ppp** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.ppp*, %struct.ppp** %4, align 8
  %11 = getelementptr inbounds %struct.ppp, %struct.ppp* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ppp*, %struct.ppp** %4, align 8
  %16 = getelementptr inbounds %struct.ppp, %struct.ppp* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %14, %19
  %21 = load %struct.ppp*, %struct.ppp** %4, align 8
  %22 = getelementptr inbounds %struct.ppp, %struct.ppp* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %20, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ppp*, %struct.ppp** %4, align 8
  %28 = getelementptr inbounds %struct.ppp, %struct.ppp* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ppp*, %struct.ppp** %4, align 8
  %33 = getelementptr inbounds %struct.ppp, %struct.ppp* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %31, %36
  %38 = load i32, i32* @PPP_HDRLEN, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call %struct.sk_buff* @alloc_skb(i32 %40, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %2
  %46 = call i64 (...) @net_ratelimit()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.ppp*, %struct.ppp** %4, align 8
  %50 = getelementptr inbounds %struct.ppp, %struct.ppp* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = call i32 @netdev_err(%struct.TYPE_4__* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48, %45
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %135

54:                                               ; preds = %2
  %55 = load %struct.ppp*, %struct.ppp** %4, align 8
  %56 = getelementptr inbounds %struct.ppp, %struct.ppp* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PPP_HDRLEN, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = load %struct.ppp*, %struct.ppp** %4, align 8
  %65 = getelementptr inbounds %struct.ppp, %struct.ppp* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PPP_HDRLEN, align 4
  %70 = sub nsw i32 %68, %69
  %71 = call i32 @skb_reserve(%struct.sk_buff* %63, i32 %70)
  br label %72

72:                                               ; preds = %62, %54
  %73 = load %struct.ppp*, %struct.ppp** %4, align 8
  %74 = getelementptr inbounds %struct.ppp, %struct.ppp* %73, i32 0, i32 3
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32 (i32, i64, i64, i32, i32)*, i32 (i32, i64, i64, i32, i32)** %76, align 8
  %78 = load %struct.ppp*, %struct.ppp** %4, align 8
  %79 = getelementptr inbounds %struct.ppp, %struct.ppp* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, 2
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 2
  %92 = load i32, i32* %9, align 4
  %93 = call i32 %77(i32 %80, i64 %84, i64 %87, i32 %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %72
  %97 = load %struct.ppp*, %struct.ppp** %4, align 8
  %98 = getelementptr inbounds %struct.ppp, %struct.ppp* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @SC_CCP_UP, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = call i32 @consume_skb(%struct.sk_buff* %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %106, %struct.sk_buff** %5, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @skb_put(%struct.sk_buff* %107, i32 %108)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = call i32 @skb_pull(%struct.sk_buff* %110, i32 2)
  br label %133

112:                                              ; preds = %96, %72
  %113 = load i32, i32* %7, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %117 = call i32 @consume_skb(%struct.sk_buff* %116)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %118, %struct.sk_buff** %6, align 8
  br label %132

119:                                              ; preds = %112
  %120 = call i64 (...) @net_ratelimit()
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.ppp*, %struct.ppp** %4, align 8
  %124 = getelementptr inbounds %struct.ppp, %struct.ppp* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = call i32 @netdev_err(%struct.TYPE_4__* %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %127

127:                                              ; preds = %122, %119
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = call i32 @kfree_skb(%struct.sk_buff* %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = call i32 @consume_skb(%struct.sk_buff* %130)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %132

132:                                              ; preds = %127, %115
  br label %133

133:                                              ; preds = %132, %103
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %134, %struct.sk_buff** %3, align 8
  br label %135

135:                                              ; preds = %133, %53
  %136 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %136
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
