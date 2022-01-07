; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_decompress_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_decompress_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 (i32, i64, i64, i64, i32)*, i32 (i32, i64, i64)* }
%struct.sk_buff = type { i64, i64 }

@PPP_COMP = common dso_local global i32 0, align 4
@PPP_HDRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ppp_decompress_frame: no memory\0A\00", align 1
@DECOMP_FATALERROR = common dso_local global i32 0, align 4
@SC_DC_FERROR = common dso_local global i32 0, align 4
@SC_DC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ppp*, %struct.sk_buff*)* @ppp_decompress_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ppp_decompress_frame(%struct.ppp* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ppp*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ppp* %0, %struct.ppp** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i32 @PPP_PROTO(%struct.sk_buff* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @pskb_may_pull(%struct.sk_buff* %12, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %126

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PPP_COMP, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %98

23:                                               ; preds = %19
  %24 = load %struct.ppp*, %struct.ppp** %4, align 8
  %25 = getelementptr inbounds %struct.ppp, %struct.ppp* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %36 [
    i32 128, label %29
  ]

29:                                               ; preds = %23
  %30 = load %struct.ppp*, %struct.ppp** %4, align 8
  %31 = getelementptr inbounds %struct.ppp, %struct.ppp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PPP_HDRLEN, align 4
  %34 = add nsw i32 %32, %33
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %42

36:                                               ; preds = %23
  %37 = load %struct.ppp*, %struct.ppp** %4, align 8
  %38 = getelementptr inbounds %struct.ppp, %struct.ppp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PPP_HDRLEN, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %36, %29
  %43 = load i32, i32* %9, align 4
  %44 = call %struct.sk_buff* @dev_alloc_skb(i32 %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %7, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.ppp*, %struct.ppp** %4, align 8
  %49 = getelementptr inbounds %struct.ppp, %struct.ppp* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @netdev_err(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %126

52:                                               ; preds = %42
  %53 = load %struct.ppp*, %struct.ppp** %4, align 8
  %54 = getelementptr inbounds %struct.ppp, %struct.ppp* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32 (i32, i64, i64, i64, i32)*, i32 (i32, i64, i64, i64, i32)** %56, align 8
  %58 = load %struct.ppp*, %struct.ppp** %4, align 8
  %59 = getelementptr inbounds %struct.ppp, %struct.ppp* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, 2
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 2
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 %57(i32 %60, i64 %64, i64 %68, i64 %71, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %52
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @DECOMP_FATALERROR, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* @SC_DC_FERROR, align 4
  %82 = load %struct.ppp*, %struct.ppp** %4, align 8
  %83 = getelementptr inbounds %struct.ppp, %struct.ppp* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %76
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = call i32 @kfree_skb(%struct.sk_buff* %87)
  br label %126

89:                                               ; preds = %52
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i32 @consume_skb(%struct.sk_buff* %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %92, %struct.sk_buff** %5, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @skb_put(%struct.sk_buff* %93, i32 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call i32 @skb_pull(%struct.sk_buff* %96, i32 2)
  br label %124

98:                                               ; preds = %19
  %99 = load %struct.ppp*, %struct.ppp** %4, align 8
  %100 = getelementptr inbounds %struct.ppp, %struct.ppp* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32 (i32, i64, i64)*, i32 (i32, i64, i64)** %102, align 8
  %104 = icmp ne i32 (i32, i64, i64)* %103, null
  br i1 %104, label %105, label %123

105:                                              ; preds = %98
  %106 = load %struct.ppp*, %struct.ppp** %4, align 8
  %107 = getelementptr inbounds %struct.ppp, %struct.ppp* %106, i32 0, i32 3
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32 (i32, i64, i64)*, i32 (i32, i64, i64)** %109, align 8
  %111 = load %struct.ppp*, %struct.ppp** %4, align 8
  %112 = getelementptr inbounds %struct.ppp, %struct.ppp* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %116, 2
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 2
  %122 = call i32 %110(i32 %113, i64 %117, i64 %121)
  br label %123

123:                                              ; preds = %105, %98
  br label %124

124:                                              ; preds = %123, %89
  %125 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %125, %struct.sk_buff** %3, align 8
  br label %135

126:                                              ; preds = %86, %47, %18
  %127 = load i32, i32* @SC_DC_ERROR, align 4
  %128 = load %struct.ppp*, %struct.ppp** %4, align 8
  %129 = getelementptr inbounds %struct.ppp, %struct.ppp* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.ppp*, %struct.ppp** %4, align 8
  %133 = call i32 @ppp_receive_error(%struct.ppp* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %134, %struct.sk_buff** %3, align 8
  br label %135

135:                                              ; preds = %126, %124
  %136 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %136
}

declare dso_local i32 @PPP_PROTO(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ppp_receive_error(%struct.ppp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
