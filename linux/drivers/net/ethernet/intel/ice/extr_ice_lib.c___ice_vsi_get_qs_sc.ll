; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c___ice_vsi_get_qs_sc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c___ice_vsi_get_qs_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_qs_cfg = type { i32, i32, i32*, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_qs_cfg*)* @__ice_vsi_get_qs_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ice_vsi_get_qs_sc(%struct.ice_qs_cfg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_qs_cfg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ice_qs_cfg* %0, %struct.ice_qs_cfg** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %7 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mutex_lock(i32 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %48, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %13 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %10
  %17 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %18 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %21 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @find_next_zero_bit(i32 %19, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %27 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %56

31:                                               ; preds = %16
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %34 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @set_bit(i32 %32, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %39 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %43 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  store i32 %37, i32* %47, align 4
  br label %48

48:                                               ; preds = %31
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %10

51:                                               ; preds = %10
  %52 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %53 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mutex_unlock(i32 %54)
  store i32 0, i32* %2, align 4
  br label %93

56:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %83, %56
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %57
  %62 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %63 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %70 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @clear_bit(i32 %68, i32 %71)
  %73 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %74 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %78 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %76, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %75, i64 %81
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %61
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %57

86:                                               ; preds = %57
  %87 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %88 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @mutex_unlock(i32 %89)
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %86, %51
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
