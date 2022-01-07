; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_mps.c_cxgb4_alloc_mac_filt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_mps.c_cxgb4_alloc_mac_filt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_alloc_mac_filt(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32** %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32** %4, i32*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load %struct.adapter*, %struct.adapter** %10, align 8
  %21 = load %struct.adapter*, %struct.adapter** %10, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32**, i32*** %14, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = load i32, i32* %17, align 4
  %31 = call i32 @t4_alloc_mac_filt(%struct.adapter* %20, i32 %23, i32 %24, i32 %25, i32 %26, i32** %27, i32* %28, i32* %29, i32 %30)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %8
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %9, align 4
  br label %80

36:                                               ; preds = %8
  store i32 0, i32* %19, align 4
  br label %37

37:                                               ; preds = %67, %36
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %37
  %42 = load i32*, i32** %15, align 8
  %43 = load i32, i32* %19, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 65535
  br i1 %47, label %48, label %66

48:                                               ; preds = %41
  %49 = load %struct.adapter*, %struct.adapter** %10, align 8
  %50 = load i32**, i32*** %14, align 8
  %51 = load i32, i32* %19, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %19, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @cxgb4_mps_ref_inc(%struct.adapter* %49, i32* %54, i32 %59, i32* null)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %18, align 4
  br label %71

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %19, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %19, align 4
  br label %37

70:                                               ; preds = %37
  br label %78

71:                                               ; preds = %62
  %72 = load %struct.adapter*, %struct.adapter** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32**, i32*** %14, align 8
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @cxgb4_free_mac_filt(%struct.adapter* %72, i32 %73, i32 %74, i32** %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %70
  %79 = load i32, i32* %18, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %78, %34
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local i32 @t4_alloc_mac_filt(%struct.adapter*, i32, i32, i32, i32, i32**, i32*, i32*, i32) #1

declare dso_local i64 @cxgb4_mps_ref_inc(%struct.adapter*, i32*, i32, i32*) #1

declare dso_local i32 @cxgb4_free_mac_filt(%struct.adapter*, i32, i32, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
