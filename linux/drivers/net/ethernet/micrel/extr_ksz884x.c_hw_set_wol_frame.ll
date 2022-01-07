; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_set_wol_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_set_wol_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i64 }

@KS8841_WOL_FRAME_BYTE0_OFFSET = common dso_local global i64 0, align 8
@KS8841_WOL_FRAME_BYTE2_OFFSET = common dso_local global i64 0, align 8
@KS8841_WOL_FRAME_CRC_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i32, i32, i32*, i32, i32*)* @hw_set_wol_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_set_wol_frame(%struct.ksz_hw* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.ksz_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [64 x i32], align 16
  %19 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %21, 8
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %25, 8
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %24, %6
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %28, 64
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 64, i32* %11, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 16
  store i32 %33, i32* %8, align 4
  %34 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %35 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @KS8841_WOL_FRAME_BYTE0_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i32 @writel(i32 0, i64 %41)
  %43 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %44 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @KS8841_WOL_FRAME_BYTE2_OFFSET, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = call i32 @writel(i32 0, i64 %50)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %105, %31
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load i32, i32* %19, align 4
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %16, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 %67
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %59, %55
  %70 = load i32, i32* %19, align 4
  %71 = ashr i32 %70, 1
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %13, align 4
  br label %104

76:                                               ; preds = %52
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %19, align 4
  %83 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %84 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @KS8841_WOL_FRAME_BYTE0_OFFSET, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = call i32 @writeb(i32 %82, i64 %93)
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %76
  store i32 8, i32* %13, align 4
  br label %103

100:                                              ; preds = %76
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 8
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %100, %99
  br label %104

104:                                              ; preds = %103, %69
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %52, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %19, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %141

112:                                              ; preds = %109
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = srem i32 %119, 8
  %121 = load i32, i32* %19, align 4
  %122 = shl i32 %121, %120
  store i32 %122, i32* %19, align 4
  %123 = load i32, i32* %19, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %13, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %129 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @KS8841_WOL_FRAME_BYTE0_OFFSET, align 8
  %132 = add nsw i64 %130, %131
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %132, %134
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %135, %137
  %139 = sub nsw i64 %138, 1
  %140 = call i32 @writeb(i32 %127, i64 %139)
  br label %141

141:                                              ; preds = %112, %109
  %142 = load i32, i32* %16, align 4
  %143 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %144 = call i32 @ether_crc(i32 %142, i32* %143)
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %147 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @KS8841_WOL_FRAME_CRC_OFFSET, align 8
  %150 = add nsw i64 %148, %149
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %150, %152
  %154 = call i32 @writel(i32 %145, i64 %153)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @ether_crc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
