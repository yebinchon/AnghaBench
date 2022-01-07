; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_mip.c_nfp_mip_read_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_mip.c_nfp_mip_read_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%struct.nfp_mip = type { i32 }
%struct.nfp_nffw_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_cpp*, %struct.nfp_mip*)* @nfp_mip_read_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_mip_read_resource(%struct.nfp_cpp* %0, %struct.nfp_mip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_cpp*, align 8
  %5 = alloca %struct.nfp_mip*, align 8
  %6 = alloca %struct.nfp_nffw_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %4, align 8
  store %struct.nfp_mip* %1, %struct.nfp_mip** %5, align 8
  %10 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %11 = call %struct.nfp_nffw_info* @nfp_nffw_info_open(%struct.nfp_cpp* %10)
  store %struct.nfp_nffw_info* %11, %struct.nfp_nffw_info** %6, align 8
  %12 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %6, align 8
  %13 = call i64 @IS_ERR(%struct.nfp_nffw_info* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.nfp_nffw_info* %16)
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %6, align 8
  %20 = call i32 @nfp_nffw_info_mip_first(%struct.nfp_nffw_info* %19, i32* %7, i32* %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %30

24:                                               ; preds = %18
  %25 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.nfp_mip*, %struct.nfp_mip** %5, align 8
  %29 = call i32 @nfp_mip_try_read(%struct.nfp_cpp* %25, i32 %26, i32 %27, %struct.nfp_mip* %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %24, %23
  %31 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %6, align 8
  %32 = call i32 @nfp_nffw_info_close(%struct.nfp_nffw_info* %31)
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.nfp_nffw_info* @nfp_nffw_info_open(%struct.nfp_cpp*) #1

declare dso_local i64 @IS_ERR(%struct.nfp_nffw_info*) #1

declare dso_local i32 @PTR_ERR(%struct.nfp_nffw_info*) #1

declare dso_local i32 @nfp_nffw_info_mip_first(%struct.nfp_nffw_info*, i32*, i32*) #1

declare dso_local i32 @nfp_mip_try_read(%struct.nfp_cpp*, i32, i32, %struct.nfp_mip*) #1

declare dso_local i32 @nfp_nffw_info_close(%struct.nfp_nffw_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
