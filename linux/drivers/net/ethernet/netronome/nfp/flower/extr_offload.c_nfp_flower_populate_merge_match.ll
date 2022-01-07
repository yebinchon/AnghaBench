; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_populate_merge_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_populate_merge_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_fl_payload = type { i32* }
%struct.nfp_flower_merge_check = type { i32, i32, i32, i32, i32 }
%struct.nfp_flower_meta_tci = type { i32, i32 }

@NFP_FLOWER_MERGE_FIELDS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_FLOWER_LAYER_EXT_META = common dso_local global i32 0, align 4
@NFP_FLOWER_LAYER_MAC = common dso_local global i32 0, align 4
@NFP_FLOWER_LAYER_TP = common dso_local global i32 0, align 4
@NFP_FLOWER_LAYER_IPV4 = common dso_local global i32 0, align 4
@NFP_FLOWER_LAYER_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_fl_payload*, %struct.nfp_flower_merge_check*, i32)* @nfp_flower_populate_merge_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_populate_merge_match(%struct.nfp_fl_payload* %0, %struct.nfp_flower_merge_check* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_fl_payload*, align 8
  %6 = alloca %struct.nfp_flower_merge_check*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_flower_meta_tci*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfp_fl_payload* %0, %struct.nfp_fl_payload** %5, align 8
  store %struct.nfp_flower_merge_check* %1, %struct.nfp_flower_merge_check** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %13 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %6, align 8
  %16 = call i32 @memset(%struct.nfp_flower_merge_check* %15, i32 0, i32 20)
  %17 = load i32*, i32** %9, align 8
  %18 = bitcast i32* %17 to %struct.nfp_flower_meta_tci*
  store %struct.nfp_flower_meta_tci* %18, %struct.nfp_flower_meta_tci** %8, align 8
  %19 = load %struct.nfp_flower_meta_tci*, %struct.nfp_flower_meta_tci** %8, align 8
  %20 = getelementptr inbounds %struct.nfp_flower_meta_tci, %struct.nfp_flower_meta_tci* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @NFP_FLOWER_MERGE_FIELDS, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %103

33:                                               ; preds = %27, %3
  %34 = load %struct.nfp_flower_meta_tci*, %struct.nfp_flower_meta_tci** %8, align 8
  %35 = getelementptr inbounds %struct.nfp_flower_meta_tci, %struct.nfp_flower_meta_tci* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %6, align 8
  %38 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 8
  store i32* %40, i32** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @NFP_FLOWER_LAYER_EXT_META, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  store i32* %47, i32** %9, align 8
  br label %48

48:                                               ; preds = %45, %33
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32* %50, i32** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @NFP_FLOWER_LAYER_MAC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  store i32 4, i32* %11, align 4
  %56 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %6, align 8
  %57 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %56, i32 0, i32 3
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @memcpy(i32* %57, i32* %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %9, align 8
  br label %65

65:                                               ; preds = %55, %48
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @NFP_FLOWER_LAYER_TP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  store i32 4, i32* %11, align 4
  %71 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %6, align 8
  %72 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %71, i32 0, i32 2
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @memcpy(i32* %72, i32* %73, i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %9, align 8
  br label %80

80:                                               ; preds = %70, %65
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @NFP_FLOWER_LAYER_IPV4, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  store i32 4, i32* %11, align 4
  %86 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %6, align 8
  %87 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %86, i32 0, i32 1
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @memcpy(i32* %87, i32* %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %80
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @NFP_FLOWER_LAYER_IPV6, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  store i32 4, i32* %11, align 4
  %97 = load %struct.nfp_flower_merge_check*, %struct.nfp_flower_merge_check** %6, align 8
  %98 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %97, i32 0, i32 0
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @memcpy(i32* %98, i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %91
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %30
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @memset(%struct.nfp_flower_merge_check*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
