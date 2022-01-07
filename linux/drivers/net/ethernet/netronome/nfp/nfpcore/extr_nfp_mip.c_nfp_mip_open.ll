; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_mip.c_nfp_mip_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_mip.c_nfp_mip_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_mip = type { i64* }
%struct.nfp_cpp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_mip* @nfp_mip_open(%struct.nfp_cpp* %0) #0 {
  %2 = alloca %struct.nfp_mip*, align 8
  %3 = alloca %struct.nfp_cpp*, align 8
  %4 = alloca %struct.nfp_mip*, align 8
  %5 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nfp_mip* @kmalloc(i32 8, i32 %6)
  store %struct.nfp_mip* %7, %struct.nfp_mip** %4, align 8
  %8 = load %struct.nfp_mip*, %struct.nfp_mip** %4, align 8
  %9 = icmp ne %struct.nfp_mip* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.nfp_mip* null, %struct.nfp_mip** %2, align 8
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %13 = load %struct.nfp_mip*, %struct.nfp_mip** %4, align 8
  %14 = call i32 @nfp_mip_read_resource(%struct.nfp_cpp* %12, %struct.nfp_mip* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.nfp_mip*, %struct.nfp_mip** %4, align 8
  %19 = call i32 @kfree(%struct.nfp_mip* %18)
  store %struct.nfp_mip* null, %struct.nfp_mip** %2, align 8
  br label %26

20:                                               ; preds = %11
  %21 = load %struct.nfp_mip*, %struct.nfp_mip** %4, align 8
  %22 = getelementptr inbounds %struct.nfp_mip, %struct.nfp_mip* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 7
  store i64 0, i64* %24, align 8
  %25 = load %struct.nfp_mip*, %struct.nfp_mip** %4, align 8
  store %struct.nfp_mip* %25, %struct.nfp_mip** %2, align 8
  br label %26

26:                                               ; preds = %20, %17, %10
  %27 = load %struct.nfp_mip*, %struct.nfp_mip** %2, align 8
  ret %struct.nfp_mip* %27
}

declare dso_local %struct.nfp_mip* @kmalloc(i32, i32) #1

declare dso_local i32 @nfp_mip_read_resource(%struct.nfp_cpp*, %struct.nfp_mip*) #1

declare dso_local i32 @kfree(%struct.nfp_mip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
