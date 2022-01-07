; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.c_nfp_bpf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.c_nfp_bpf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32, %struct.nfp_app_bpf* }
%struct.nfp_app_bpf = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, %struct.nfp_app* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfp_bpf_maps_neutral_params = common dso_local global i32 0, align 4
@CMSG_MAP_KEY_LW = common dso_local global i32 0, align 4
@CMSG_MAP_VALUE_LW = common dso_local global i32 0, align 4
@nfp_bpf_dev_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*)* @nfp_bpf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_init(%struct.nfp_app* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.nfp_app_bpf*, align 8
  %5 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nfp_app_bpf* @kzalloc(i32 48, i32 %6)
  store %struct.nfp_app_bpf* %7, %struct.nfp_app_bpf** %4, align 8
  %8 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %9 = icmp ne %struct.nfp_app_bpf* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %101

13:                                               ; preds = %1
  %14 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %15 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %16 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %15, i32 0, i32 8
  store %struct.nfp_app* %14, %struct.nfp_app** %16, align 8
  %17 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %18 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %19 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %18, i32 0, i32 1
  store %struct.nfp_app_bpf* %17, %struct.nfp_app_bpf** %19, align 8
  %20 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %21 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %20, i32 0, i32 7
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %24 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %23, i32 0, i32 3
  %25 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %26 = call i32 @nfp_ccm_init(i32* %24, %struct.nfp_app* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %13
  br label %97

30:                                               ; preds = %13
  %31 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %32 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %31, i32 0, i32 4
  %33 = call i32 @rhashtable_init(i32* %32, i32* @nfp_bpf_maps_neutral_params)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %93

37:                                               ; preds = %30
  %38 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %39 = call i32 @nfp_bpf_init_capabilities(%struct.nfp_app_bpf* %38)
  %40 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %41 = call i32 @nfp_bpf_parse_capabilities(%struct.nfp_app* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %89

45:                                               ; preds = %37
  %46 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %47 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %48, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32, i32* @CMSG_MAP_KEY_LW, align 4
  %52 = mul nsw i32 %51, 4
  %53 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %54 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @CMSG_MAP_VALUE_LW, align 4
  %56 = mul nsw i32 %55, 4
  %57 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %58 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %76

59:                                               ; preds = %45
  %60 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %61 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %65 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %67 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %71 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %73 = call i32 @nfp_bpf_ctrl_cmsg_mtu(%struct.nfp_app_bpf* %72)
  %74 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %75 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %59, %50
  %77 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %78 = call i32 @bpf_offload_dev_create(i32* @nfp_bpf_dev_ops, %struct.nfp_app_bpf* %77)
  %79 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %80 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %82 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @PTR_ERR_OR_ZERO(i32 %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %89

88:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %101

89:                                               ; preds = %87, %44
  %90 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %91 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %90, i32 0, i32 4
  %92 = call i32 @rhashtable_destroy(i32* %91)
  br label %93

93:                                               ; preds = %89, %36
  %94 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %95 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %94, i32 0, i32 3
  %96 = call i32 @nfp_ccm_clean(i32* %95)
  br label %97

97:                                               ; preds = %93, %29
  %98 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %99 = call i32 @kfree(%struct.nfp_app_bpf* %98)
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %88, %10
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.nfp_app_bpf* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nfp_ccm_init(i32*, %struct.nfp_app*) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @nfp_bpf_init_capabilities(%struct.nfp_app_bpf*) #1

declare dso_local i32 @nfp_bpf_parse_capabilities(%struct.nfp_app*) #1

declare dso_local i32 @nfp_bpf_ctrl_cmsg_mtu(%struct.nfp_app_bpf*) #1

declare dso_local i32 @bpf_offload_dev_create(i32*, %struct.nfp_app_bpf*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @nfp_ccm_clean(i32*) #1

declare dso_local i32 @kfree(%struct.nfp_app_bpf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
