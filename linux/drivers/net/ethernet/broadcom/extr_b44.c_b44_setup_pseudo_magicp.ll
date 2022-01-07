; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_setup_pseudo_magicp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_setup_pseudo_magicp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@B44_PMASK_SIZE = common dso_local global i32 0, align 4
@B44_PATTERN_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@B44_ETHIPV4UDP_HLEN = common dso_local global i32 0, align 4
@B44_PATTERN_BASE = common dso_local global i32 0, align 4
@B44_PMASK_BASE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@B44_ETHIPV6UDP_HLEN = common dso_local global i32 0, align 4
@WKUP_LEN_ENABLE_THREE = common dso_local global i32 0, align 4
@B44_WKUP_LEN = common dso_local global i32 0, align 4
@B44_DEVCTRL = common dso_local global i32 0, align 4
@DEVCTRL_PFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*)* @b44_setup_pseudo_magicp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_setup_pseudo_magicp(%struct.b44* %0) #0 {
  %2 = alloca %struct.b44*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %2, align 8
  %11 = load i32, i32* @B44_PMASK_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @B44_PATTERN_SIZE, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kzalloc(i32 %15, i32 %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 1, i32* %10, align 4
  br label %121

21:                                               ; preds = %1
  %22 = load i32, i32* @B44_PMASK_SIZE, align 4
  %23 = call i32 @memset(i32* %14, i32 0, i32 %22)
  %24 = load %struct.b44*, %struct.b44** %2, align 8
  %25 = getelementptr inbounds %struct.b44, %struct.b44* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @B44_ETHIPV4UDP_HLEN, align 4
  %31 = call i32 @b44_magic_pattern(i32 %28, i32* %29, i32* %14, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.b44*, %struct.b44** %2, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @B44_PATTERN_SIZE, align 4
  %35 = load i32, i32* @B44_PATTERN_BASE, align 4
  %36 = call i32 @bwfilter_table(%struct.b44* %32, i32* %33, i32 %34, i32 %35)
  %37 = load %struct.b44*, %struct.b44** %2, align 8
  %38 = load i32, i32* @B44_PMASK_SIZE, align 4
  %39 = load i32, i32* @B44_PMASK_BASE, align 4
  %40 = call i32 @bwfilter_table(%struct.b44* %37, i32* %14, i32 %38, i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @B44_PATTERN_SIZE, align 4
  %43 = call i32 @memset(i32* %41, i32 0, i32 %42)
  %44 = load i32, i32* @B44_PMASK_SIZE, align 4
  %45 = call i32 @memset(i32* %14, i32 0, i32 %44)
  %46 = load %struct.b44*, %struct.b44** %2, align 8
  %47 = getelementptr inbounds %struct.b44, %struct.b44* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @ETH_HLEN, align 4
  %53 = call i32 @b44_magic_pattern(i32 %50, i32* %51, i32* %14, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.b44*, %struct.b44** %2, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @B44_PATTERN_SIZE, align 4
  %57 = load i32, i32* @B44_PATTERN_BASE, align 4
  %58 = load i32, i32* @B44_PATTERN_SIZE, align 4
  %59 = add nsw i32 %57, %58
  %60 = call i32 @bwfilter_table(%struct.b44* %54, i32* %55, i32 %56, i32 %59)
  %61 = load %struct.b44*, %struct.b44** %2, align 8
  %62 = load i32, i32* @B44_PMASK_SIZE, align 4
  %63 = load i32, i32* @B44_PMASK_BASE, align 4
  %64 = load i32, i32* @B44_PMASK_SIZE, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i32 @bwfilter_table(%struct.b44* %61, i32* %14, i32 %62, i32 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* @B44_PATTERN_SIZE, align 4
  %69 = call i32 @memset(i32* %67, i32 0, i32 %68)
  %70 = load i32, i32* @B44_PMASK_SIZE, align 4
  %71 = call i32 @memset(i32* %14, i32 0, i32 %70)
  %72 = load %struct.b44*, %struct.b44** %2, align 8
  %73 = getelementptr inbounds %struct.b44, %struct.b44* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* @B44_ETHIPV6UDP_HLEN, align 4
  %79 = call i32 @b44_magic_pattern(i32 %76, i32* %77, i32* %14, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load %struct.b44*, %struct.b44** %2, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* @B44_PATTERN_SIZE, align 4
  %83 = load i32, i32* @B44_PATTERN_BASE, align 4
  %84 = load i32, i32* @B44_PATTERN_SIZE, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* @B44_PATTERN_SIZE, align 4
  %87 = add nsw i32 %85, %86
  %88 = call i32 @bwfilter_table(%struct.b44* %80, i32* %81, i32 %82, i32 %87)
  %89 = load %struct.b44*, %struct.b44** %2, align 8
  %90 = load i32, i32* @B44_PMASK_SIZE, align 4
  %91 = load i32, i32* @B44_PMASK_BASE, align 4
  %92 = load i32, i32* @B44_PMASK_SIZE, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* @B44_PMASK_SIZE, align 4
  %95 = add nsw i32 %93, %94
  %96 = call i32 @bwfilter_table(%struct.b44* %89, i32* %14, i32 %90, i32 %95)
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @kfree(i32* %97)
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %5, align 4
  %101 = shl i32 %100, 8
  %102 = or i32 %99, %101
  %103 = load i32, i32* %6, align 4
  %104 = shl i32 %103, 16
  %105 = or i32 %102, %104
  %106 = load i32, i32* @WKUP_LEN_ENABLE_THREE, align 4
  %107 = or i32 %105, %106
  store i32 %107, i32* %3, align 4
  %108 = load %struct.b44*, %struct.b44** %2, align 8
  %109 = load i32, i32* @B44_WKUP_LEN, align 4
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @bw32(%struct.b44* %108, i32 %109, i32 %110)
  %112 = load %struct.b44*, %struct.b44** %2, align 8
  %113 = load i32, i32* @B44_DEVCTRL, align 4
  %114 = call i32 @br32(%struct.b44* %112, i32 %113)
  store i32 %114, i32* %3, align 4
  %115 = load %struct.b44*, %struct.b44** %2, align 8
  %116 = load i32, i32* @B44_DEVCTRL, align 4
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @DEVCTRL_PFE, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @bw32(%struct.b44* %115, i32 %116, i32 %119)
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %21, %20
  %122 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %10, align 4
  switch i32 %123, label %125 [
    i32 0, label %124
    i32 1, label %124
  ]

124:                                              ; preds = %121, %121
  ret void

125:                                              ; preds = %121
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @kzalloc(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @b44_magic_pattern(i32, i32*, i32*, i32) #2

declare dso_local i32 @bwfilter_table(%struct.b44*, i32*, i32, i32) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #2

declare dso_local i32 @br32(%struct.b44*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
