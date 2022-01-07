; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_get_invariants.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_get_invariants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, i32, %struct.ssb_device*, i32, %struct.TYPE_7__*, i32 }
%struct.ssb_device = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32*, i32* }
%struct.TYPE_7__ = type { i32* }

@SSB_BUSTYPE_SSB = common dso_local global i64 0, align 8
@instance = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Invalid MAC address found in EEPROM\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IMASK_DEF = common dso_local global i32 0, align 4
@B44_FLAG_B0_ANDLATER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b44*)* @b44_get_invariants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_get_invariants(%struct.b44* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b44*, align 8
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.b44* %0, %struct.b44** %3, align 8
  %7 = load %struct.b44*, %struct.b44** %3, align 8
  %8 = getelementptr inbounds %struct.b44, %struct.b44* %7, i32 0, i32 2
  %9 = load %struct.ssb_device*, %struct.ssb_device** %8, align 8
  store %struct.ssb_device* %9, %struct.ssb_device** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %11 = call i32 @ssb_dma_translation(%struct.ssb_device* %10)
  %12 = load %struct.b44*, %struct.b44** %3, align 8
  %13 = getelementptr inbounds %struct.b44, %struct.b44* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %15 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SSB_BUSTYPE_SSB, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load i32, i32* @instance, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %26 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %6, align 8
  %31 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %32 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.b44*, %struct.b44** %3, align 8
  %38 = getelementptr inbounds %struct.b44, %struct.b44* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %54

39:                                               ; preds = %21, %1
  %40 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %41 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %6, align 8
  %46 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %47 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.b44*, %struct.b44** %3, align 8
  %53 = getelementptr inbounds %struct.b44, %struct.b44* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %39, %24
  %55 = load %struct.b44*, %struct.b44** %3, align 8
  %56 = getelementptr inbounds %struct.b44, %struct.b44* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 31
  store i32 %58, i32* %56, align 8
  %59 = load %struct.b44*, %struct.b44** %3, align 8
  %60 = getelementptr inbounds %struct.b44, %struct.b44* %59, i32 0, i32 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = call i32 @memcpy(i32* %63, i32* %64, i32 %65)
  %67 = load %struct.b44*, %struct.b44** %3, align 8
  %68 = getelementptr inbounds %struct.b44, %struct.b44* %67, i32 0, i32 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = call i32 @is_valid_ether_addr(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %54
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %98

79:                                               ; preds = %54
  %80 = load i32, i32* @IMASK_DEF, align 4
  %81 = load %struct.b44*, %struct.b44** %3, align 8
  %82 = getelementptr inbounds %struct.b44, %struct.b44* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.b44*, %struct.b44** %3, align 8
  %84 = getelementptr inbounds %struct.b44, %struct.b44* %83, i32 0, i32 2
  %85 = load %struct.ssb_device*, %struct.ssb_device** %84, align 8
  %86 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sge i32 %88, 7
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load i32, i32* @B44_FLAG_B0_ANDLATER, align 4
  %92 = load %struct.b44*, %struct.b44** %3, align 8
  %93 = getelementptr inbounds %struct.b44, %struct.b44* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %79
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %75
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @ssb_dma_translation(%struct.ssb_device*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
