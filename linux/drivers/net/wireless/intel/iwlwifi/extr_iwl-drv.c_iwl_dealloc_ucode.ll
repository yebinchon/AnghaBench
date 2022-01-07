; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_dealloc_ucode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_dealloc_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_drv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32 }

@IWL_UCODE_TYPE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_drv*)* @iwl_dealloc_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_dealloc_ucode(%struct.iwl_drv* %0) #0 {
  %2 = alloca %struct.iwl_drv*, align 8
  %3 = alloca i32, align 4
  store %struct.iwl_drv* %0, %struct.iwl_drv** %2, align 8
  %4 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @kfree(i32 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %30, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %13 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @ARRAY_SIZE(i32* %16)
  %18 = icmp slt i32 %11, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %10
  %20 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %21 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kfree(i32 %28)
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %10

33:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %37 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @ARRAY_SIZE(i32* %40)
  %42 = icmp slt i32 %35, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %34
  %44 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %45 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @kfree(i32 %52)
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %34

57:                                               ; preds = %34
  %58 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %59 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @kfree(i32 %62)
  %64 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %65 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @kfree(i32 %67)
  %69 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %70 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @kfree(i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %89, %57
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @IWL_UCODE_TYPE_MAX, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  %80 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %81 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %82 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = call i32 @iwl_free_fw_img(%struct.iwl_drv* %80, i64 %87)
  br label %89

89:                                               ; preds = %79
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %75

92:                                               ; preds = %75
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @iwl_free_fw_img(%struct.iwl_drv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
