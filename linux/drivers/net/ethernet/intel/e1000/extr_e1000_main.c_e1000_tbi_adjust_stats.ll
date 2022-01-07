; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_tbi_adjust_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_tbi_adjust_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }
%struct.e1000_hw_stats = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, %struct.e1000_hw_stats*, i32, i32*)* @e1000_tbi_adjust_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_tbi_adjust_stats(%struct.e1000_hw* %0, %struct.e1000_hw_stats* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca %struct.e1000_hw_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store %struct.e1000_hw_stats* %1, %struct.e1000_hw_stats** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %7, align 4
  %12 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %13 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %17 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %21 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 -2147483648, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %26 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %4
  %32 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %33 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, -2147483648
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %39 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %37, %31, %4
  %43 = load i32*, i32** %8, align 8
  %44 = call i64 @is_broadcast_ether_addr(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %48 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %61

51:                                               ; preds = %42
  %52 = load i32*, i32** %8, align 8
  %53 = call i64 @is_multicast_ether_addr(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %57 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %55, %51
  br label %61

61:                                               ; preds = %60, %46
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %64 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %69 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %74 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %72, %67
  br label %78

78:                                               ; preds = %77, %61
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 64
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %83 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %87 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 8
  br label %151

90:                                               ; preds = %78
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 127
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %95 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %99 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 4
  br label %150

102:                                              ; preds = %90
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %103, 255
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %107 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %111 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %111, align 8
  br label %149

114:                                              ; preds = %102
  %115 = load i32, i32* %7, align 4
  %116 = icmp eq i32 %115, 511
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %119 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %123 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %123, align 4
  br label %148

126:                                              ; preds = %114
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %127, 1023
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %131 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %135 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %135, align 8
  br label %147

138:                                              ; preds = %126
  %139 = load i32, i32* %7, align 4
  %140 = icmp eq i32 %139, 1522
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %143 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %141, %138
  br label %147

147:                                              ; preds = %146, %129
  br label %148

148:                                              ; preds = %147, %117
  br label %149

149:                                              ; preds = %148, %105
  br label %150

150:                                              ; preds = %149, %93
  br label %151

151:                                              ; preds = %150, %81
  ret void
}

declare dso_local i64 @is_broadcast_ether_addr(i32*) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
