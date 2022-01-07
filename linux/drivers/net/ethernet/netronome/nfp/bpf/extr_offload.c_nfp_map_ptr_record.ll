; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_map_ptr_record.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_map_ptr_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app_bpf = type { i32 }
%struct.nfp_prog = type { i32, %struct.nfp_bpf_neutral_map** }
%struct.nfp_bpf_neutral_map = type { i32, i32, i32, %struct.bpf_map* }
%struct.bpf_map = type { i32 }

@nfp_bpf_maps_neutral_params = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app_bpf*, %struct.nfp_prog*, %struct.bpf_map*)* @nfp_map_ptr_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_map_ptr_record(%struct.nfp_app_bpf* %0, %struct.nfp_prog* %1, %struct.bpf_map* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app_bpf*, align 8
  %6 = alloca %struct.nfp_prog*, align 8
  %7 = alloca %struct.bpf_map*, align 8
  %8 = alloca %struct.nfp_bpf_neutral_map*, align 8
  %9 = alloca i32, align 4
  store %struct.nfp_app_bpf* %0, %struct.nfp_app_bpf** %5, align 8
  store %struct.nfp_prog* %1, %struct.nfp_prog** %6, align 8
  store %struct.bpf_map* %2, %struct.bpf_map** %7, align 8
  %10 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %5, align 8
  %11 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %10, i32 0, i32 0
  %12 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %13 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %12, i32 0, i32 0
  %14 = load i32, i32* @nfp_bpf_maps_neutral_params, align 4
  %15 = call %struct.nfp_bpf_neutral_map* @rhashtable_lookup_fast(i32* %11, i32* %13, i32 %14)
  store %struct.nfp_bpf_neutral_map* %15, %struct.nfp_bpf_neutral_map** %8, align 8
  %16 = load %struct.nfp_bpf_neutral_map*, %struct.nfp_bpf_neutral_map** %8, align 8
  %17 = icmp ne %struct.nfp_bpf_neutral_map* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load %struct.nfp_bpf_neutral_map*, %struct.nfp_bpf_neutral_map** %8, align 8
  %20 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %21 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %20, i32 0, i32 1
  %22 = load %struct.nfp_bpf_neutral_map**, %struct.nfp_bpf_neutral_map*** %21, align 8
  %23 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %24 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %struct.nfp_bpf_neutral_map*, %struct.nfp_bpf_neutral_map** %22, i64 %27
  store %struct.nfp_bpf_neutral_map* %19, %struct.nfp_bpf_neutral_map** %28, align 8
  %29 = load %struct.nfp_bpf_neutral_map*, %struct.nfp_bpf_neutral_map** %8, align 8
  %30 = getelementptr inbounds %struct.nfp_bpf_neutral_map, %struct.nfp_bpf_neutral_map* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  store i32 0, i32* %4, align 4
  br label %88

33:                                               ; preds = %3
  %34 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %35 = call %struct.bpf_map* @bpf_map_inc(%struct.bpf_map* %34, i32 0)
  store %struct.bpf_map* %35, %struct.bpf_map** %7, align 8
  %36 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %37 = call i64 @IS_ERR(%struct.bpf_map* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %41 = call i32 @PTR_ERR(%struct.bpf_map* %40)
  store i32 %41, i32* %4, align 4
  br label %88

42:                                               ; preds = %33
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.nfp_bpf_neutral_map* @kmalloc(i32 24, i32 %43)
  store %struct.nfp_bpf_neutral_map* %44, %struct.nfp_bpf_neutral_map** %8, align 8
  %45 = load %struct.nfp_bpf_neutral_map*, %struct.nfp_bpf_neutral_map** %8, align 8
  %46 = icmp ne %struct.nfp_bpf_neutral_map* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %84

50:                                               ; preds = %42
  %51 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %52 = load %struct.nfp_bpf_neutral_map*, %struct.nfp_bpf_neutral_map** %8, align 8
  %53 = getelementptr inbounds %struct.nfp_bpf_neutral_map, %struct.nfp_bpf_neutral_map* %52, i32 0, i32 3
  store %struct.bpf_map* %51, %struct.bpf_map** %53, align 8
  %54 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %55 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nfp_bpf_neutral_map*, %struct.nfp_bpf_neutral_map** %8, align 8
  %58 = getelementptr inbounds %struct.nfp_bpf_neutral_map, %struct.nfp_bpf_neutral_map* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.nfp_bpf_neutral_map*, %struct.nfp_bpf_neutral_map** %8, align 8
  %60 = getelementptr inbounds %struct.nfp_bpf_neutral_map, %struct.nfp_bpf_neutral_map* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %5, align 8
  %62 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %61, i32 0, i32 0
  %63 = load %struct.nfp_bpf_neutral_map*, %struct.nfp_bpf_neutral_map** %8, align 8
  %64 = getelementptr inbounds %struct.nfp_bpf_neutral_map, %struct.nfp_bpf_neutral_map* %63, i32 0, i32 1
  %65 = load i32, i32* @nfp_bpf_maps_neutral_params, align 4
  %66 = call i32 @rhashtable_insert_fast(i32* %62, i32* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %50
  br label %81

70:                                               ; preds = %50
  %71 = load %struct.nfp_bpf_neutral_map*, %struct.nfp_bpf_neutral_map** %8, align 8
  %72 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %73 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %72, i32 0, i32 1
  %74 = load %struct.nfp_bpf_neutral_map**, %struct.nfp_bpf_neutral_map*** %73, align 8
  %75 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %76 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds %struct.nfp_bpf_neutral_map*, %struct.nfp_bpf_neutral_map** %74, i64 %79
  store %struct.nfp_bpf_neutral_map* %71, %struct.nfp_bpf_neutral_map** %80, align 8
  store i32 0, i32* %4, align 4
  br label %88

81:                                               ; preds = %69
  %82 = load %struct.nfp_bpf_neutral_map*, %struct.nfp_bpf_neutral_map** %8, align 8
  %83 = call i32 @kfree(%struct.nfp_bpf_neutral_map* %82)
  br label %84

84:                                               ; preds = %81, %47
  %85 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %86 = call i32 @bpf_map_put(%struct.bpf_map* %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %70, %39, %18
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.nfp_bpf_neutral_map* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local %struct.bpf_map* @bpf_map_inc(%struct.bpf_map*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_map*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_map*) #1

declare dso_local %struct.nfp_bpf_neutral_map* @kmalloc(i32, i32) #1

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.nfp_bpf_neutral_map*) #1

declare dso_local i32 @bpf_map_put(%struct.bpf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
