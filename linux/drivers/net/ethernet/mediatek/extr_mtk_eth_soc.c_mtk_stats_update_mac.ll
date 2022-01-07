; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_stats_update_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_stats_update_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mac = type { i32, %struct.mtk_hw_stats* }
%struct.mtk_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@MTK_GDM1_TX_GBCNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_stats_update_mac(%struct.mtk_mac* %0) #0 {
  %2 = alloca %struct.mtk_mac*, align 8
  %3 = alloca %struct.mtk_hw_stats*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_mac* %0, %struct.mtk_mac** %2, align 8
  %6 = load %struct.mtk_mac*, %struct.mtk_mac** %2, align 8
  %7 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %6, i32 0, i32 1
  %8 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %7, align 8
  store %struct.mtk_hw_stats* %8, %struct.mtk_hw_stats** %3, align 8
  %9 = load i32, i32* @MTK_GDM1_TX_GBCNT, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %11 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %10, i32 0, i32 13
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %18 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %17, i32 0, i32 12
  %19 = call i32 @u64_stats_update_begin(i32* %18)
  %20 = load %struct.mtk_mac*, %struct.mtk_mac** %2, align 8
  %21 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @mtk_r32(i32 %22, i32 %23)
  %25 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %26 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.mtk_mac*, %struct.mtk_mac** %2, align 8
  %30 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 4
  %34 = call i32 @mtk_r32(i32 %31, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 %38, 32
  %40 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %41 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %37, %1
  %45 = load %struct.mtk_mac*, %struct.mtk_mac** %2, align 8
  %46 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 8
  %50 = call i32 @mtk_r32(i32 %47, i32 %49)
  %51 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %52 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.mtk_mac*, %struct.mtk_mac** %2, align 8
  %56 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = add i32 %58, 16
  %60 = call i32 @mtk_r32(i32 %57, i32 %59)
  %61 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %62 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.mtk_mac*, %struct.mtk_mac** %2, align 8
  %66 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 20
  %70 = call i32 @mtk_r32(i32 %67, i32 %69)
  %71 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %72 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.mtk_mac*, %struct.mtk_mac** %2, align 8
  %76 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = add i32 %78, 24
  %80 = call i32 @mtk_r32(i32 %77, i32 %79)
  %81 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %82 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.mtk_mac*, %struct.mtk_mac** %2, align 8
  %86 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = add i32 %88, 28
  %90 = call i32 @mtk_r32(i32 %87, i32 %89)
  %91 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %92 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.mtk_mac*, %struct.mtk_mac** %2, align 8
  %96 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = add i32 %98, 32
  %100 = call i32 @mtk_r32(i32 %97, i32 %99)
  %101 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %102 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.mtk_mac*, %struct.mtk_mac** %2, align 8
  %106 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = add i32 %108, 36
  %110 = call i32 @mtk_r32(i32 %107, i32 %109)
  %111 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %112 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.mtk_mac*, %struct.mtk_mac** %2, align 8
  %116 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = add i32 %118, 40
  %120 = call i32 @mtk_r32(i32 %117, i32 %119)
  %121 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %122 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.mtk_mac*, %struct.mtk_mac** %2, align 8
  %126 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = add i32 %128, 44
  %130 = call i32 @mtk_r32(i32 %127, i32 %129)
  %131 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %132 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %131, i32 0, i32 9
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load %struct.mtk_mac*, %struct.mtk_mac** %2, align 8
  %136 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = add i32 %138, 48
  %140 = call i32 @mtk_r32(i32 %137, i32 %139)
  %141 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %142 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load %struct.mtk_mac*, %struct.mtk_mac** %2, align 8
  %146 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = add i32 %148, 52
  %150 = call i32 @mtk_r32(i32 %147, i32 %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %44
  %154 = load i32, i32* %5, align 4
  %155 = shl i32 %154, 32
  %156 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %157 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %156, i32 0, i32 10
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %153, %44
  %161 = load %struct.mtk_mac*, %struct.mtk_mac** %2, align 8
  %162 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %4, align 4
  %165 = add i32 %164, 56
  %166 = call i32 @mtk_r32(i32 %163, i32 %165)
  %167 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %168 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %167, i32 0, i32 11
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %3, align 8
  %172 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %171, i32 0, i32 12
  %173 = call i32 @u64_stats_update_end(i32* %172)
  ret void
}

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @mtk_r32(i32, i32) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
