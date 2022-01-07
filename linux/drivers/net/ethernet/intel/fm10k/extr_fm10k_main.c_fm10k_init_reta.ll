; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_init_reta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_init_reta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32*, %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@RING_F_RSS = common dso_local global i64 0, align 8
@FM10K_RETA_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"RSS indirection table assigned flows out of queue bounds. Reconfiguring.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*)* @fm10k_init_reta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_init_reta(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %6 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %7 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = load i64, i64* @RING_F_RSS, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %14 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @netif_is_rxfh_configured(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %1
  %19 = load i64, i64* @FM10K_RETA_SIZE, align 8
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %57, %18
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %3, align 8
  %23 = icmp ne i64 %21, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %20
  %25 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %26 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 %31, 24
  %33 = ashr i32 %32, 24
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %4, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 %38, 16
  %40 = ashr i32 %39, 24
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %4, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 %45, 8
  %47 = ashr i32 %46, 24
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %4, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %52, 24
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %4, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %20

58:                                               ; preds = %51, %44, %37, %24
  %59 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %60 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %66

64:                                               ; preds = %20
  br label %69

65:                                               ; preds = %1
  br label %66

66:                                               ; preds = %65, %58
  %67 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %68 = call i32 @fm10k_write_reta(%struct.fm10k_intfc* %67, i32* null)
  br label %69

69:                                               ; preds = %66, %64
  ret void
}

declare dso_local i64 @netif_is_rxfh_configured(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @fm10k_write_reta(%struct.fm10k_intfc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
