; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_ctrl.c_nfp_abm_ctrl_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_ctrl.c_nfp_abm_ctrl_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm_link = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nfp_cpp* }
%struct.nfp_cpp = type { i32 }
%struct.nfp_rtsym = type { i32 }

@NFP_NET_MAX_RX_RINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"RED offload reading stat failed on vNIC %d band %d queue %d (+ %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_abm_link*, %struct.nfp_rtsym*, i32, i32, i32, i32, i32, i32*)* @nfp_abm_ctrl_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_ctrl_stat(%struct.nfp_abm_link* %0, %struct.nfp_rtsym* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfp_abm_link*, align 8
  %11 = alloca %struct.nfp_rtsym*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.nfp_cpp*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %10, align 8
  store %struct.nfp_rtsym* %1, %struct.nfp_rtsym** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %24 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %25 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.nfp_cpp*, %struct.nfp_cpp** %29, align 8
  store %struct.nfp_cpp* %30, %struct.nfp_cpp** %18, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @NFP_NET_MAX_RX_RINGS, align 4
  %33 = mul i32 %31, %32
  %34 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %35 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add i32 %33, %36
  %38 = load i32, i32* %15, align 4
  %39 = add i32 %37, %38
  store i32 %39, i32* %21, align 4
  %40 = load i32, i32* %21, align 4
  %41 = load i32, i32* %12, align 4
  %42 = mul i32 %40, %41
  %43 = load i32, i32* %13, align 4
  %44 = add i32 %42, %43
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %8
  %48 = load %struct.nfp_cpp*, %struct.nfp_cpp** %18, align 8
  %49 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %11, align 8
  %50 = load i32, i32* %20, align 4
  %51 = call i32 @__nfp_rtsym_readq(%struct.nfp_cpp* %48, %struct.nfp_rtsym* %49, i32 3, i32 0, i32 %50, i32* %19)
  store i32 %51, i32* %23, align 4
  br label %57

52:                                               ; preds = %8
  %53 = load %struct.nfp_cpp*, %struct.nfp_cpp** %18, align 8
  %54 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %11, align 8
  %55 = load i32, i32* %20, align 4
  %56 = call i32 @__nfp_rtsym_readl(%struct.nfp_cpp* %53, %struct.nfp_rtsym* %54, i32 3, i32 0, i32 %55, i32* %22)
  store i32 %56, i32* %23, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %23, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load %struct.nfp_cpp*, %struct.nfp_cpp** %18, align 8
  %62 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %63 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %68 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @nfp_err(%struct.nfp_cpp* %61, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %66, i32 %69)
  %71 = load i32, i32* %23, align 4
  store i32 %71, i32* %9, align 4
  br label %82

72:                                               ; preds = %57
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* %19, align 4
  br label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %22, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = load i32*, i32** %17, align 8
  store i32 %80, i32* %81, align 4
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %60
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local i32 @__nfp_rtsym_readq(%struct.nfp_cpp*, %struct.nfp_rtsym*, i32, i32, i32, i32*) #1

declare dso_local i32 @__nfp_rtsym_readl(%struct.nfp_cpp*, %struct.nfp_rtsym*, i32, i32, i32, i32*) #1

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
