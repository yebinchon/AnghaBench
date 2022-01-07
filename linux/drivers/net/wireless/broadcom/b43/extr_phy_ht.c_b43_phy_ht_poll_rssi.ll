; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_poll_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_poll_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@b43_phy_ht_poll_rssi.phy_regs_to_save = internal constant [12 x i32] [i32 133, i32 132, i32 2120, i32 2113, i32 131, i32 130, i32 2152, i32 2145, i32 129, i32 128, i32 2184, i32 2177], align 16
@B43_PHY_HT_RSSI_C1 = common dso_local global i32 0, align 4
@B43_PHY_HT_RSSI_C2 = common dso_local global i32 0, align 4
@B43_PHY_HT_RSSI_C3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i64*, i32)* @b43_phy_ht_poll_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_poll_rssi(%struct.b43_wldev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [12 x i32], align 16
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %25, %4
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 12
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [12 x i32], [12 x i32]* @b43_phy_ht_poll_rssi.phy_regs_to_save, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @b43_phy_read(%struct.b43_wldev* %16, i32 %20)
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [12 x i32], [12 x i32]* %9, i64 0, i64 %23
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @b43_phy_ht_rssi_select(%struct.b43_wldev* %29, i32 5, i32 %30)
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %40, %28
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 6
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i64*, i64** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %32

43:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %124, %43
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %127

48:                                               ; preds = %44
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %50 = load i32, i32* @B43_PHY_HT_RSSI_C1, align 4
  %51 = call i32 @b43_phy_read(%struct.b43_wldev* %49, i32 %50)
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %54 = load i32, i32* @B43_PHY_HT_RSSI_C2, align 4
  %55 = call i32 @b43_phy_read(%struct.b43_wldev* %53, i32 %54)
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %58 = load i32, i32* @B43_PHY_HT_RSSI_C3, align 4
  %59 = call i32 @b43_phy_read(%struct.b43_wldev* %57, i32 %58)
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 63
  %64 = shl i32 %63, 2
  %65 = ashr i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = load i64*, i64** %7, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 8
  %74 = and i32 %73, 63
  %75 = shl i32 %74, 2
  %76 = ashr i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = load i64*, i64** %7, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 63
  %85 = shl i32 %84, 2
  %86 = ashr i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = load i64*, i64** %7, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 2
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 8
  %95 = and i32 %94, 63
  %96 = shl i32 %95, 2
  %97 = ashr i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = load i64*, i64** %7, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 3
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 63
  %106 = shl i32 %105, 2
  %107 = ashr i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = load i64*, i64** %7, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 4
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, %108
  store i64 %112, i64* %110, align 8
  %113 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 8
  %116 = and i32 %115, 63
  %117 = shl i32 %116, 2
  %118 = ashr i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = load i64*, i64** %7, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 5
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %119
  store i64 %123, i64* %121, align 8
  br label %124

124:                                              ; preds = %48
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %44

127:                                              ; preds = %44
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %142, %127
  %129 = load i32, i32* %11, align 4
  %130 = icmp slt i32 %129, 12
  br i1 %130, label %131, label %145

131:                                              ; preds = %128
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [12 x i32], [12 x i32]* @b43_phy_ht_poll_rssi.phy_regs_to_save, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [12 x i32], [12 x i32]* %9, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @b43_phy_write(%struct.b43_wldev* %132, i32 %136, i32 %140)
  br label %142

142:                                              ; preds = %131
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %128

145:                                              ; preds = %128
  ret void
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_ht_rssi_select(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
