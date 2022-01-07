; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_rss_port_c2_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_rss_port_c2_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32, i32 }
%struct.mvpp2_cls_c2_entry = type { i32* }

@MVPP22_CLS_C2_ATTR0_QHIGH_MASK = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR0_QLOW_MASK = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR2_RSS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp2_rss_port_c2_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_rss_port_c2_disable(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca %struct.mvpp2_cls_c2_entry, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %6 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %7 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %10 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @MVPP22_CLS_C2_RSS_ENTRY(i32 %11)
  %13 = call i32 @mvpp2_cls_c2_read(i32 %8, i32 %12, %struct.mvpp2_cls_c2_entry* %3)
  %14 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %15 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 3
  %18 = load i32, i32* @MVPP22_CLS_C2_ATTR0_QHIGH_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %21 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MVPP22_CLS_C2_ATTR0_QLOW_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @MVPP22_CLS_C2_ATTR0_QHIGH(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @MVPP22_CLS_C2_ATTR0_QLOW(i32 %27)
  %29 = or i32 %26, %28
  %30 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %3, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @MVPP22_CLS_C2_ATTR2_RSS_EN, align 4
  %34 = xor i32 %33, -1
  %35 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %3, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %41 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mvpp2_cls_c2_write(i32 %42, %struct.mvpp2_cls_c2_entry* %3)
  ret void
}

declare dso_local i32 @mvpp2_cls_c2_read(i32, i32, %struct.mvpp2_cls_c2_entry*) #1

declare dso_local i32 @MVPP22_CLS_C2_RSS_ENTRY(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_ATTR0_QHIGH(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_ATTR0_QLOW(i32) #1

declare dso_local i32 @mvpp2_cls_c2_write(i32, %struct.mvpp2_cls_c2_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
