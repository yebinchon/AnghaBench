; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_test_bad_enet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_test_bad_enet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64*, i32 }
%struct.net_device = type { i64*, i32 }
%struct.de4x5_private = type { i64, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@last = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @test_bad_enet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bad_enet(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.de4x5_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %8)
  store %struct.de4x5_private* %9, %struct.de4x5_private** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 1530
  br i1 %34, label %35, label %130

35:                                               ; preds = %32, %29
  %36 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %37 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last, i32 0, i32 0), align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %129

41:                                               ; preds = %35
  %42 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %43 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last, i32 0, i32 1), align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %129

47:                                               ; preds = %41
  %48 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %49 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %129

52:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %69, %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last, i32 0, i32 2), align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 %62, i64* %68, align 8
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %53

72:                                               ; preds = %53
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %97, %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp sgt i32 %76, 2
  br i1 %77, label %78, label %100

78:                                               ; preds = %75
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %78
  br label %100

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %6, align 4
  br label %75

100:                                              ; preds = %95, %75
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %117, %100
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @ETH_ALEN, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %101
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last, i32 0, i32 2), align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  store i64 %112, i64* %116, align 8
  br label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %101

120:                                              ; preds = %101
  %121 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %122 = call i32 @an_exception(%struct.de4x5_private* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last, i32 0, i32 3), align 8
  %126 = load %struct.net_device*, %struct.net_device** %3, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %124, %120
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %47, %41, %35
  br label %164

130:                                              ; preds = %32
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %163, label %133

133:                                              ; preds = %130
  %134 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %135 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last, i32 0, i32 0), align 8
  %137 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %138 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last, i32 0, i32 1), align 8
  %140 = load %struct.net_device*, %struct.net_device** %3, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last, i32 0, i32 3), align 8
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %159, %133
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @ETH_ALEN, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %143
  %148 = load %struct.net_device*, %struct.net_device** %3, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last, i32 0, i32 2), align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  store i64 %154, i64* %158, align 8
  br label %159

159:                                              ; preds = %147
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %143

162:                                              ; preds = %143
  br label %163

163:                                              ; preds = %162, %130
  br label %164

164:                                              ; preds = %163, %129
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @an_exception(%struct.de4x5_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
