; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_wcid_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_wcid_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }
%struct.mt76_wcid_addr = type { i32 }

@MT_WCID_ATTR_BSS_IDX = common dso_local global i32 0, align 4
@MT_WCID_ATTR_BSS_IDX_EXT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_mac_wcid_setup(%struct.mt76x02_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mt76x02_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mt76_wcid_addr, align 4
  %10 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = bitcast %struct.mt76_wcid_addr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load i32, i32* @MT_WCID_ATTR_BSS_IDX, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 7
  %15 = call i32 @FIELD_PREP(i32 %12, i32 %14)
  %16 = load i32, i32* @MT_WCID_ATTR_BSS_IDX_EXT, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @FIELD_PREP(i32 %16, i32 %22)
  %24 = or i32 %15, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @MT_WCID_ATTR(i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @mt76_wr(%struct.mt76x02_dev* %25, i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp sge i32 %30, 128
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %47

33:                                               ; preds = %4
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.mt76_wcid_addr, %struct.mt76_wcid_addr* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memcpy(i32 %38, i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %33
  %43 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @MT_WCID_ADDR(i32 %44)
  %46 = call i32 @mt76_wr_copy(%struct.mt76x02_dev* %43, i32 %45, %struct.mt76_wcid_addr* %9, i32 4)
  br label %47

47:                                               ; preds = %42, %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #2

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #2

declare dso_local i32 @MT_WCID_ATTR(i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @mt76_wr_copy(%struct.mt76x02_dev*, i32, %struct.mt76_wcid_addr*, i32) #2

declare dso_local i32 @MT_WCID_ADDR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
