; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_u32_parse.h_cxgb4_fill_ipv4_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_u32_parse.h_cxgb4_fill_ipv4_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_filter_specification = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ch_filter_specification*, i32, i32)* @cxgb4_fill_ipv4_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_fill_ipv4_frag(%struct.ch_filter_specification* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ch_filter_specification*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ch_filter_specification* %0, %struct.ch_filter_specification** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @ntohl(i32 %10)
  %12 = ashr i32 %11, 13
  %13 = and i32 %12, 7
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @ntohl(i32 %14)
  %16 = and i32 %15, 65535
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 16383
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %24 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %27 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %46

29:                                               ; preds = %19, %3
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 16383
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %37 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %40 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %45

42:                                               ; preds = %32, %29
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %47

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %22
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
