; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cpplib.c_nfp_cpp_model_autodetect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cpplib.c_nfp_cpp_model_autodetect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }

@NFP_PL_DEVICE_ID = common dso_local global i64 0, align 8
@NFP_PL_DEVICE_MODEL_MASK = common dso_local global i32 0, align 4
@NFP_PL_DEVICE_ID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_cpp_model_autodetect(%struct.nfp_cpp* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_cpp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %9 = call i64 @NFP_XPB_DEVICE(i32 1, i32 1, i32 16)
  %10 = load i64, i64* @NFP_PL_DEVICE_ID, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @nfp_xpb_readl(%struct.nfp_cpp* %8, i64 %11, i32* %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @NFP_PL_DEVICE_MODEL_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NFP_PL_DEVICE_ID_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 16
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %27, %17
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @nfp_xpb_readl(%struct.nfp_cpp*, i64, i32*) #1

declare dso_local i64 @NFP_XPB_DEVICE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
