; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_write_reta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_write_reta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32*, %struct.fm10k_hw, %struct.TYPE_2__* }
%struct.fm10k_hw = type { i32 }
%struct.TYPE_2__ = type { i32 }

@RING_F_RSS = common dso_local global i64 0, align 8
@FM10K_RETA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm10k_write_reta(%struct.fm10k_intfc* %0, i32* %1) #0 {
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm10k_hw*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %13 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* @RING_F_RSS, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %20 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %19, i32 0, i32 1
  store %struct.fm10k_hw* %20, %struct.fm10k_hw** %6, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %94, %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @FM10K_RETA_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %97

25:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %53, %25
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 4, %34
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  br label %48

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 4, %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @ethtool_rxfh_indir_default(i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %41, %32
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %51
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %26

56:                                               ; preds = %26
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %58 = load i32, i32* %57, align 16
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 8
  %62 = or i32 %58, %61
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %64 = load i32, i32* %63, align 8
  %65 = shl i32 %64, 16
  %66 = or i32 %62, %65
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 24
  %70 = or i32 %66, %69
  store i32 %70, i32* %10, align 4
  %71 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %72 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %56
  br label %94

81:                                               ; preds = %56
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %84 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  %89 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @FM10K_RETA(i32 0, i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %89, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %81, %80
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %21

97:                                               ; preds = %21
  ret void
}

declare dso_local i32 @ethtool_rxfh_indir_default(i32, i32) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @FM10K_RETA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
